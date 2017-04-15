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

class LEDViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!

    var serial: BluetoothSerial!
    var delegate: LEDVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.addTarget(self, action: #selector(self.onLuminosityChange), for: UIControlEvents.valueChanged)
        self.slider2.addTarget(self, action: #selector(self.onLuminosityChange), for: UIControlEvents.valueChanged)
        self.slider3.addTarget(self, action: #selector(self.onLuminosityChange), for: UIControlEvents.valueChanged)

//        self.slider.transform = CGAffineTransform.init().rotated(by: -45)
//        self.slider.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2));
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
    
    @IBAction func dismiss(sender: UIButton) {
        self.navigationController?.dismiss(animated: true, completion: nil)
        self.delegate.ledVCDidFinish()
    }
}
