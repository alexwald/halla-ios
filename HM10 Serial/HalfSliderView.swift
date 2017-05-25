//
//  HalfSliderView.swift
//
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import Foundation
import UIKit

class HalfSliderView: SliderView {

    override init(frame: CGRect) {

        super.init(frame: frame)
        centerView.removeFromSuperview()
        centerView = HalfCenterView(frame: CGRect())

        self.addSubview(centerView)
  }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        container2.removeFromSuperview()
        container4.removeFromSuperview()
    }
}
