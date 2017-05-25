//
//  CenterView.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 17/04/17.
//  Copyright © 2017 passionmakes.us. All rights reserved.
//

import UIKit

class CenterView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
                contentMode = UIViewContentMode.redraw
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

    }
    
    override func draw(_ rect: CGRect) {
        StyleKit.drawCenterView(frame: self.bounds)
    }

    override func draw(_ layer: CALayer, in ctx: CGContext) {
        super.draw(layer, in: ctx)
    }
}
