//
//  ScannerViewController.swift
//  HM10 Serial
//
//  Created by Alex on 10-08-15.
//  Copyright (c) 2015 Balancing Rock. All rights reserved.
//

import UIKit
import CoreBluetooth

final class ScannerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, BluetoothSerialDelegate {

//MARK: IBOutlets
    
    @IBOutlet weak var tryAgainButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var refreshButton: IconButton!

    
//MARK: Variables
    
    /// The peripherals that have been discovered (no duplicates and sorted by asc RSSI)
    var peripherals: [(peripheral: CBPeripheral, RSSI: Float)] = []
    
    /// The peripheral the user has selected
    var selectedPeripheral: CBPeripheral?
    
    /// Progress hud shown
    var progressHUD: MBProgressHUD?
    
    
//MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        self.view.backgroundColor       = UIColor.clear
        let effect                      = UIBlurEffect(style: .light)
        let blurView                    = UIVisualEffectView(effect: effect)
        blurView.frame                  = self.view.bounds
        self.view.addSubview(blurView)
        self.view.sendSubview(toBack: blurView)

                automaticallyAdjustsScrollViewInsets = true
                self.tableView.contentInset = UIEdgeInsets.zero

        refreshButton = IconButton(rect: CGRect(x: 0, y: 0, width: 27, height: 29) , type: .refresh)
        refreshButton.addTarget(self, action: #selector(tryAgain(_:)) , for: .touchUpInside)
        let barButtonItem = UIBarButtonItem.init(customView: refreshButton)
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        // tryAgainButton is only enabled when we've stopped scanning
//        tryAgainButton.isEnabled = false
        refreshButton.isEnabled = false
        // remove extra seperator insets (looks better imho)
        tableView.tableFooterView = UIView(frame: CGRect.zero)

        // tell the delegate to notificate US instead of the previous view if something happens
        serial.delegate = self
        
        if serial.centralManager.state != .poweredOn {
            title = "Bluetooth not turned on"
            return
        }

        // start scanning and schedule the time out
        serial.startScan()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ScannerViewController.scanTimeOut), userInfo: nil, repeats: false)

        tableView.contentInset = UIEdgeInsetsMake(25, 0, 0, 0)
        
       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Should be called 10s after we've begun scanning
    func scanTimeOut() {
        // timeout has occurred, stop scanning and give the user the option to try again
        serial.stopScan()
//        tryAgainButton.isEnabled = true
        refreshButton.isEnabled = true
        title = "Done scanning"
    }
    
    /// Should be called 10s after we've begun connecting
    func connectTimeOut() {
        
        // don't if we've already connected
        if let _ = serial.connectedPeripheral {
            return
        }
        
        if let hud = progressHUD {
            hud.hide(false)
        }
        
        if let _ = selectedPeripheral {
            serial.disconnect()
            selectedPeripheral = nil
        }
        
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud?.mode = MBProgressHUDMode.text
        hud?.labelText = "Failed to connect"
        hud?.hide(true, afterDelay: 2)
    }
    
    
//MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return peripherals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return a cell with the peripheral name as text in the label
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let label = cell.viewWithTag(1) as! UILabel!
        label?.text = peripherals[(indexPath as NSIndexPath).row].peripheral.name
        return cell
    }
    
    
//MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        // the user has selected a peripheral, so stop scanning and proceed to the next view
        serial.stopScan()
        selectedPeripheral = peripherals[(indexPath as NSIndexPath).row].peripheral
        serial.connectToPeripheral(selectedPeripheral!)
        progressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        progressHUD!.labelText = "Connecting"
        
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ScannerViewController.connectTimeOut), userInfo: nil, repeats: false)
    }
    
    
//MARK: BluetoothSerialDelegate
    
    func serialDidDiscoverPeripheral(_ peripheral: CBPeripheral, RSSI: NSNumber?) {
        // check whether it is a duplicate
        for exisiting in peripherals {
            if exisiting.peripheral.identifier == peripheral.identifier { return }
        }
        
        // add to the array, next sort & reload
        let theRSSI = RSSI?.floatValue ?? 0.0
        peripherals.append(peripheral: peripheral, RSSI: theRSSI)
//        peripherals.append(peripheral: peripheral, RSSI: theRSSI)
//        peripherals.append(peripheral: peripheral, RSSI: theRSSI)
//        peripherals.append(peripheral: peripheral, RSSI: theRSSI)

        peripherals.sort { $0.RSSI < $1.RSSI }
        tableView.reloadData()
    }
    
    func serialDidFailToConnect(_ peripheral: CBPeripheral, error: NSError?) {
        if let hud = progressHUD {
            hud.hide(false)
        }
        
//        tryAgainButton.isEnabled = true
        refreshButton.isEnabled = true
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud?.mode = MBProgressHUDMode.text
        hud?.labelText = "Failed to connect"
        hud?.hide(true, afterDelay: 1.0)
    }
    
    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        if let hud = progressHUD {
            hud.hide(false)
        }
        
//        tryAgainButton.isEnabled = true
        refreshButton.isEnabled = true

        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud?.mode = MBProgressHUDMode.text
        hud?.labelText = "Failed to connect"
        hud?.hide(true, afterDelay: 1.0)

    }
    
    func serialIsReady(_ peripheral: CBPeripheral) {
        if let hud = progressHUD {
            hud.hide(false)
        }
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "reloadStartViewController"), object: self)
        dismiss(animated: true, completion: nil)
    }
    
    func serialDidChangeState() {
        if let hud = progressHUD {
            hud.hide(false)
        }
        
        if serial.centralManager.state != .poweredOn {
            NotificationCenter.default.post(name: Notification.Name(rawValue: "reloadStartViewController"), object: self)
            dismiss(animated: true, completion: nil)
        }
    }
    

//MARK: IBActions
    
    @IBAction func cancel(_ sender: AnyObject) {
        // go back
        serial.stopScan()
        dismiss(animated: true, completion: nil)
    }

    @IBAction func tryAgain(_ sender: AnyObject) {
        // empty array an start again
        peripherals = []
        tableView.reloadData()
//        tryAgainButton.isEnabled = false
        refreshButton.isEnabled = false
        title = "Scanning ..."
        serial.startScan()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ScannerViewController.scanTimeOut), userInfo: nil, repeats: false)
    }
    
}
