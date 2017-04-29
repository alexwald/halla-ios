//
//  LEDViewController.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 09/04/2017.
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import Foundation
import UIKit
import CoreBluetooth

public protocol LEDVCDelegate {
    func ledVCDidFinish()
}

class LEDViewController: UIViewController, BluetoothSerialDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var barButton: UIBarButtonItem!

//    var serial: BluetoothSerial!
    var delegate: LEDVCDelegate!

    let minValue1 = 0.0
    let maxValue1 = 255.0
    let defaultValue1 = 0.0

    let minValue2 = 256
    let defaultValue2 = 256
    let maxValue2 = 511

    let minValue3 = 512
    let defaultValue3 = 512
    let maxValue3 = 767

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.hexStringToUIColor(hex: "FEC709")

        // init serial
        serial = BluetoothSerial(delegate: self)

        // UI
        reloadView()

        NotificationCenter.default.addObserver(self, selector: #selector(SerialViewController.reloadView), name: NSNotification.Name(rawValue: "reloadStartViewController"), object: nil)

        let sliderView = SliderView(frame: CGRect())
        view.addSubview(sliderView)

        sliderView.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.center.equalToSuperview()
            make.height.equalTo(sliderView.snp.width)
        }

        for slider in sliderView.sliderArray {
            slider.addTarget(self, action: #selector(self.onLuminosityChange), for: UIControlEvents.valueChanged)
        }

        sliderView.slider.maximumValue = Float(maxValue1)
        sliderView.slider.value = Float(defaultValue1)
        sliderView.slider.minimumValue = Float(minValue1)

        sliderView.slider2.maximumValue = Float(maxValue2)
        sliderView.slider2.value = Float(defaultValue2)
        sliderView.slider2.minimumValue = Float(minValue2)

        sliderView.slider3.maximumValue = Float(maxValue3)
        sliderView.slider3.value = Float(defaultValue3)
        sliderView.slider3.minimumValue = Float(minValue3)


//        let tapRec = UITapGestureRecognizer(target: self, action:#selector(userTappedCenterView))
//        tapRec.numberOfTapsRequired = 1
//        tapRec.delegate = self
//        sliderView.addGestureRecognizer(tapRec)

    }

//    func userTappedCenterView(sender: UITapGestureRecognizer?) {
//        sender.touches
//    }

//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        return true
//    }


    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    func reloadView() {
        // in case we're the visible view again
        serial.delegate = self

        if serial.isReady {
            navItem.title = serial.connectedPeripheral!.name
            barButton.title = "Disconnect"
            barButton.tintColor = UIColor.red
            barButton.isEnabled = true
        } else if serial.centralManager.state == .poweredOn {
            navItem.title = "Halla 360+"
            barButton.title = "Connect"
            barButton.tintColor = view.tintColor
            barButton.isEnabled = true
        } else {
            navItem.title = "Halla 360+"
            barButton.title = "Connect"
            barButton.tintColor = view.tintColor
            barButton.isEnabled = false
        }
    }

    func onLuminosityChange(sender: UISlider){
        if !serial.isReady {
            let alert = UIAlertController(title: "Not connected", message: "What am I supposed to send this to?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: { action -> Void in self.dismiss(animated: true, completion: nil) }))
            present(alert, animated: true, completion: nil)
            return
        }
        let int: Int = Int(sender.value)
        serial.sendMessageToDevice("\(String(int))\n")
        print("value sent to device: \(String(int))")
    }

    //MARK: BluetoothSerialDelegate

    func serialDidReceiveString(_ message: String) {
        print("did receive string: \(message)")
        let pref = UserDefaults.standard.integer(forKey: ReceivedMessageOptionKey)
//        if pref == ReceivedMessageOption.newline.rawValue { mainTextView.text! += "\n" }
    }

    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        reloadView()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud?.mode = MBProgressHUDMode.text
        hud?.labelText = "Disconnected"
        hud?.hide(true, afterDelay: 1.0)
    }

    func serialDidChangeState() {
        reloadView()
        if serial.centralManager.state != .poweredOn {
            let hud = MBProgressHUD.showAdded(to: view, animated: true)
            hud?.mode = MBProgressHUDMode.text
            hud?.labelText = "Bluetooth turned off"
            hud?.hide(true, afterDelay: 1.0)
        }
    }




    //MARK: IBActions

    @IBAction func dismiss(sender: UIButton) {
        self.navigationController?.dismiss(animated: true, completion: nil)
        self.delegate.ledVCDidFinish()
    }

    @IBAction func barButtonPressed(_ sender: AnyObject) {
        if serial.connectedPeripheral == nil {
            performSegue(withIdentifier: "ShowScanner", sender: self)
        } else {
            serial.disconnect()
            reloadView()
        }
    }
}
