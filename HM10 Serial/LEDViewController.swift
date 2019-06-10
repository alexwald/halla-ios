//
//  LEDViewController.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 09/04/2017.
//  Copyright © 2017 passionmakes.us. All rights reserved.
//

import Foundation
import UIKit
import CoreBluetooth
import EasyTipView

public protocol LEDVCDelegate {
    func ledVCDidFinish()
}

class LEDViewController: UIViewController, BluetoothSerialDelegate, UIGestureRecognizerDelegate, EasyTipViewDelegate, SliderViewDelegate {

    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var barButton: UIBarButtonItem!
    @IBOutlet weak var turnOff: UIBarButtonItem!
    @IBOutlet weak var versionLabel: UILabel!
    var dimButton: IconButton!

    var delegate: LEDVCDelegate!

    let minValue1 = 0
    let maxValue1 = 255
    let defaultValue1 = 0

    let minValue2 = 256
    let defaultValue2 = 256
    let maxValue2 = 511

    let minValue3 = 512
    let defaultValue3 = 512
    let maxValue3 = 767

    let minValue4 = 768
    let defaultValue4 = 768
    let maxValue4 = 1023

    var sliderView = SliderView(frame: CGRect())
    
    var connectButton: ConnectivityIconButton!
    var rotateButton: IconButton!
    var shouldRotateBack: Bool = false
    var shouldDimSmoothly: Bool = false {
        didSet {
            shouldDimSmoothly ? (dimButton.alpha = 1.0) : (dimButton.alpha = 0.3)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()


        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        self.navigationController?.navigationBar.isHidden = true

        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            self.versionLabel.text = version
        }
        
        connectButton = ConnectivityIconButton(rect: CGRect(x: 0, y: 0, width: 27, height: 29) , type: .addDevice)
        view.addSubview(connectButton)
        
        connectButton.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(10)
            make.top.equalTo(view).offset(30)
            make.width.equalTo(37)
            make.height.equalTo(39)
        }
        
        connectButton.addTarget(self, action: #selector(barButtonPressed(_:)) , for: .touchUpInside)

        rotateButton = IconButton(rect: CGRect(x: 0, y: 0, width: 27, height: 29) , type: .rotateOff)
        view.addSubview(rotateButton)

        rotateButton.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(30)
            make.width.equalTo(37)
            make.height.equalTo(39)
            make.right.equalTo(view).offset(-10)
        }
        
        rotateButton.addTarget(self, action: #selector(rotate(sender:)) , for: .touchUpInside)
        
        dimButton = IconButton(rect: CGRect(x: 0, y: 0, width: 27, height: 29) , type: .dimButton)
        view.addSubview(dimButton)
        
        dimButton.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(10)
            make.width.equalTo(37)
            make.height.equalTo(39)
            make.bottom.equalTo(view).offset(-10)
        }
        
        dimButton.addTarget(self, action: #selector(toggleShouldDim(sender:)) , for: .touchUpInside)
        dimButton.alpha = 0.3

        view.backgroundColor = UIColor.hallaYellow()

        // init serial
        serial = BluetoothSerial(delegate: self)

        // UI
        reloadView()

        NotificationCenter.default.addObserver(self, selector: #selector(self.instantiateViewBasedOnLedCount), name: NSNotification.Name(rawValue: "reloadStartViewController"), object: nil)

        instantiateSliderView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var preferences = EasyTipView.Preferences()
        preferences.drawing.font = UIFont(name: "Futura-Medium", size: 13)!
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.backgroundColor = UIColor.black
        preferences.drawing.arrowPosition = EasyTipView.ArrowPosition.top

        let defaults = UserDefaults.standard
        if let _ = defaults.object(forKey: "tipDismissed") {
            
        } else {
            EasyTipView.show(forView: self.sliderView.centerView,
                             withinSuperview: self.view,
                             text: "Tap the center view to turn the light off completely. Tap again to restore.",
                             preferences: preferences,
                             delegate: self)
        }
        
    }

    func easyTipViewDidDismiss(_ tipView : EasyTipView) {
        print("tip did dismiss")
        let defaults = UserDefaults.standard
        defaults.set(1, forKey: "tipDismissed")

    }

    func topBottomSwitchChanged(sender: UISwitch) {
        if sender.isOn {
            UIView.animate(withDuration: 0.2, animations: {
                self.sliderView.slider.setValue(Float(self.maxValue1), animated: true)
                self.sliderView.slider3.setValue(Float(self.minValue1), animated: true)
            })

            serial.sendMessageToDevice("\(String(maxValue1))\n")
            serial.sendMessageToDevice("\(String(minValue3))\n")
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                self.sliderView.slider.setValue(Float(self.minValue1), animated: true)
                self.sliderView.slider3.setValue(Float(self.maxValue3), animated: true)
            })
            serial.sendMessageToDevice("\(String(minValue1))\n")
            serial.sendMessageToDevice("\(String(maxValue3))\n")
        }
    }

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
            connectButton.isEnabled = true
            connectButton.isConnected = true

        } else if serial.centralManager.state == .poweredOn {
            navItem.title = ""
            barButton.title = "Connect"
            barButton.tintColor = view.tintColor
            barButton.isEnabled = true
            connectButton.isEnabled = true
            connectButton.isConnected = false
        } else {
            navItem.title = ""
            barButton.title = "Connect"
            barButton.tintColor = view.tintColor
            barButton.isEnabled = false
            connectButton.isEnabled = false
            connectButton.isConnected = false
        }
    }

    func instantiateViewBasedOnLedCount() {
        print("reloading view with LED Count: \(serial.ledCount)")

        sliderView.removeFromSuperview()

        instantiateSliderView()
        reloadView()
    }

    func instantiateSliderView() {

        if serial.ledCount == 2 {
            sliderView = HalfSliderView(frame: CGRect())
            rotateButton.isHidden = true
        } else {
            sliderView = SliderView(frame: CGRect())
            rotateButton.isHidden = false
        }

        view.addSubview(sliderView)
        sliderView.delegate = self

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

        sliderView.slider4.maximumValue = Float(maxValue4)
        sliderView.slider4.value = Float(defaultValue4)
        sliderView.slider4.minimumValue = Float(minValue4)
    }

    func onLuminosityChange(sender: UISlider) {
//        if !serial.isReady {
//            let alert = UIAlertController(title: "Not connected", message: "What am I supposed to send this to?", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: { action -> Void in self.dismiss(animated: true, completion: nil) }))
//            present(alert, animated: true, completion: nil)
//            return
//        }
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
    
    @IBAction func rotate(sender: UIButton) {
        var buttonTransform: CGAffineTransform! = .identity
        var ledViewTransform: CGAffineTransform! = .identity

        if shouldRotateBack {
            
        } else {
            let degrees: CGFloat = 45.0 //the value in degrees
            let radians: CGFloat = degrees * CGFloat(-M_PI/180)
            buttonTransform = CGAffineTransform(rotationAngle: radians)
            ledViewTransform = CGAffineTransform(rotationAngle: radians).concatenating(CGAffineTransform(scaleX: 0.8, y: 0.8))
        }
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 12, initialSpringVelocity: 10, options: [.curveEaseOut], animations: {
            self.rotateButton.transform = buttonTransform
            self.sliderView.transform = ledViewTransform
        }, completion: nil)
        
        shouldRotateBack = !shouldRotateBack
    }

    //MARK: SliderView Delegate

    func centerViewTapped() {
        turnOffAll()
    }

    @IBAction func turnOffAll() {

//        guard let _ = serial.connectedPeripheral else { return }

        let defaults = UserDefaults.standard
        
        if let firstValue = defaults.object(forKey: "storedValue1") as? Int {
            
            // WE HAVE SOME STORED VALUES, let's restore
            print("REstoring values")
            
            if shouldDimSmoothly {
                dimLed(fromValue: minValue1, toValue: firstValue)
            } else {
                serial.sendMessageToDevice("\(String(firstValue))\n")
            }
        
            UIView.animate(withDuration: 0.2, animations: {
                self.sliderView.slider.setValue(Float(firstValue), animated: true)
            })
            defaults.removeObject(forKey: "storedValue1")
            
            if let secondValue = defaults.object(forKey: "storedValue2") as? Int {
                
                if shouldDimSmoothly {
                    dimLed(fromValue: minValue2, toValue: secondValue)
                } else {
                    serial.sendMessageToDevice("\(String(secondValue))\n")
                }
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.sliderView.slider2.setValue(Float(secondValue), animated: true)
                })
                defaults.removeObject(forKey: "storedValue2")
            }
            
            if let thirdValue = defaults.object(forKey: "storedValue3") as? Int {
                
                if shouldDimSmoothly {
                    dimLed(fromValue: minValue3, toValue: thirdValue)
                } else {
                    serial.sendMessageToDevice("\(String(thirdValue))\n")
                }
                UIView.animate(withDuration: 0.2, animations: {
                    self.sliderView.slider3.setValue(Float(thirdValue), animated: true)
                })
                defaults.removeObject(forKey: "storedValue3")
            }
            
            if let fourthValue = defaults.object(forKey: "storedValue4") as? Int {
                if shouldDimSmoothly {
                    dimLed(fromValue: minValue4, toValue: fourthValue)
                } else {
                    serial.sendMessageToDevice("\(String(fourthValue))\n")
                }

                UIView.animate(withDuration: 0.2, animations: {
                    self.sliderView.slider4.setValue(Float(fourthValue), animated: true)
                })
                
                defaults.removeObject(forKey: "storedValue4")
            }

        } else {

            print("storing values")

            // reset LEDs on arduino
            if shouldDimSmoothly {
                dimLed(fromValue: Int(sliderView.slider.value), toValue: minValue1)
                dimLed(fromValue: Int(sliderView.slider2.value), toValue: minValue2)
                dimLed(fromValue: Int(sliderView.slider3.value), toValue: minValue3)
                dimLed(fromValue: Int(sliderView.slider4.value), toValue: minValue4)
            } else {
                serial.sendMessageToDevice("\(String(minValue1))\n")
                serial.sendMessageToDevice("\(String(minValue2))\n")
                serial.sendMessageToDevice("\(String(minValue3))\n")
                serial.sendMessageToDevice("\(String(minValue4))\n")
            }
            
            // store to userDefaults
            defaults.set(Int(sliderView.slider.value), forKey: "storedValue1")
            defaults.set(Int(sliderView.slider2.value), forKey: "storedValue2")
            defaults.set(Int(sliderView.slider3.value), forKey: "storedValue3")
            defaults.set(Int(sliderView.slider4.value), forKey: "storedValue4")

            // reset sliders
            
            UIView.animate(withDuration: 0.2, animations: {
                self.sliderView.slider.setValue(0.0, animated: true)
                self.sliderView.slider2.setValue(0.0, animated: true)
                self.sliderView.slider3.setValue(0.0, animated: true)
                self.sliderView.slider4.setValue(0.0, animated: true)
            })
        }
    }
    
     func dimLed(fromValue: Int, toValue: Int) {
        
//        let queue1 = DispatchQueue(label: "com.appcoda.queue1", qos: DispatchQoS.userInitiated)
//        // let queue1 = DispatchQueue(label: "com.appcoda.queue1", qos: DispatchQoS.background)
//        // let queue2 = DispatchQueue(label: "com.appcoda.queue2", qos: DispatchQoS.userInitiated)
//        let queue2 = DispatchQueue(label: "com.appcoda.queue2", qos: DispatchQoS.utility)
//        
//        queue1.async {
//            for i in 0..<10 {
//                print("🔴", i)
//            }
//        }
//        
//        queue2.async {
//            for i in 100..<110 {
//                print("🔵", i)
//            }
//        }
//        
//        
//        let concurrentQueue = DispatchQueue(label: "queuename", attributes: .concurrent)
//        concurrentQueue.sync {
//            
//        }
        
        var i = fromValue
        Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { timer in
            
            fromValue < toValue ? (i+=1):(i-=1)
            
//            print("hello \(i)")
            serial.sendMessageToDevice("\(String(i))\n")
            print("\(String(i))\n")


            if i == toValue {
                timer.invalidate()
            }
        }
    }

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
    
    @IBAction func toggleShouldDim(sender: UIButton) {
        shouldDimSmoothly = !shouldDimSmoothly
    }
    
    public func delay(bySeconds seconds: Double, dispatchLevel: DispatchLevel = .main, closure: @escaping () -> Void) {
        let dispatchTime = DispatchTime.now() + seconds
        dispatchLevel.dispatchQueue.asyncAfter(deadline: dispatchTime, execute: closure)
    }
    
    public enum DispatchLevel {
        case main, userInteractive, userInitiated, utility, background
        var dispatchQueue: DispatchQueue {
            switch self {
            case .main:                 return DispatchQueue.main
            case .userInteractive:      return DispatchQueue.global(qos: .userInteractive)
            case .userInitiated:        return DispatchQueue.global(qos: .userInitiated)
            case .utility:              return DispatchQueue.global(qos: .utility)
            case .background:           return DispatchQueue.global(qos: .background)
            }
        }
    }
}
