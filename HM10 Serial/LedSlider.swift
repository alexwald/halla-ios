//
//  LEDSlider.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 17/04/17.
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import UIKit

class LEDSlider: UISlider {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true

        thumbTintColor = UIColor.hexStringToUIColor(hex: "FEC709")
        maximumTrackTintColor =  UIColor.hexStringToUIColor(hex: "FEC709")
        minimumTrackTintColor =  UIColor.hexStringToUIColor(hex: "FEC709")
        backgroundColor = UIColor.black
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 10, y: (bounds.size.height/2), width: bounds.size.width-20, height: 2)
    }
}
