//
//  HalfCenterView.swift
//
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import Foundation

class HalfCenterView: CenterView {

    override func draw(_ rect: CGRect) {
        StyleKit.drawHalfCenterView(frame: self.bounds)
    }
}
