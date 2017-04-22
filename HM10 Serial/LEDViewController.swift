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

    var serial: BluetoothSerial!
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
