//
//  LEDSlider.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 17/04/17.
//  Copyright © 2017 passionmakes.us. All rights reserved.
//

import UIKit

class LEDSlider: UISlider {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true

        thumbTintColor = UIColor.hallaYellow()
//        thumb
        maximumTrackTintColor = UIColor.hallaYellow()
        minimumTrackTintColor =  UIColor.hallaYellow()
        backgroundColor = UIColor.black
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 7, y: (bounds.size.height/2)-1.5, width: bounds.size.width-14, height: 3)
    }
}
