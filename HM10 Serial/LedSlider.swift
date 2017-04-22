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
        maximumTrackTintColor = UIColor.black
        minimumTrackTintColor = UIColor.black
        backgroundColor = UIColor.black
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
