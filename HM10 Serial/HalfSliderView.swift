//
//  HalfSliderView.swift
//
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import Foundation
import UIKit

//protocol HalfSliderViewDelegate: SliderViewDelegate {
//    func topBottomSwitchChanged(sender: UISwitch)
//}

class HalfSliderView: SliderView {



//    let topBottomSwitch = UISwitch(frame: CGRect())
        let topBottomSwitch = Switch(thumb: SwitchThumb(), background: SwitchBackground())

    let switchContainer = UIView(frame: CGRect())

//    override var delegate: HalfSliderViewDelegate?


    override init(frame: CGRect) {

        super.init(frame: frame)
        centerView.removeFromSuperview()
        centerView = HalfCenterView(frame: CGRect())

        self.addSubview(centerView)
        self.addSubview(switchContainer)

//        topBottomSwitch.thumbTintColor = UIColor.hallaYellow()
//        topBottomSwitch.tintColor = UIColor.black
//        topBottomSwitch.onTintColor = UIColor.black

//        topBottomSwitch.backgroundColor = UIColor.black
//        topBottomSwitch.layer.cornerRadius = 18.0

        topBottomSwitch.addTarget(self, action: #selector(switchChanged(_:)), for: UIControlEvents.valueChanged)

     }

    func switchChanged(_ sender: UISwitch) {
//        sender.isOn ? (print("is on")) : (print("is off"))
        self.delegate?.topBottomSwitchChanged(sender: sender)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        container2.removeFromSuperview()
        container4.removeFromSuperview()

        self.addSubview(switchContainer)
        switchContainer.backgroundColor = UIColor.clear

        switchContainer.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.size.height)
            make.width.equalTo(self.bounds.size.width/2)
            make.leftMargin.equalTo(self.bounds.size.width/2)
            make.topMargin.equalTo(0)
        }

        switchContainer.addSubview(topBottomSwitch)

        let degrees: CGFloat = 90.0 //the value in degrees
        let radians: CGFloat = degrees * CGFloat(-M_PI/180)


        let centerViewTransform = (CGAffineTransform(scaleX: 1.2, y: 1.2))

        topBottomSwitch.transform = centerViewTransform.rotated(by: radians)

        topBottomSwitch.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
        }


    }
}
