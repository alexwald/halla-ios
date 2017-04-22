//
//  SliderView.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 17/04/17.
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import UIKit
import SnapKit

class SliderView: UIView {

    let slider = LEDSlider(frame: CGRect())
    let slider2 = LEDSlider(frame: CGRect())
    let slider3 = LEDSlider(frame: CGRect())
    let slider4 = LEDSlider(frame: CGRect())

    let centerView = CenterView(frame: CGRect())

    let container1 = UIView(frame: CGRect())
    let container2 = UIView(frame: CGRect())
    let container3 = UIView(frame: CGRect())
    let container4 = UIView(frame: CGRect())

    var sliderArray = [LEDSlider]()

    override func layoutSubviews() {
        super.layoutSubviews()

        ///CENTER VIEW
        self.addSubview(centerView)
        centerView.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        self.centerView.transform = CGAffineTransform(scaleX: 2.8, y: 2.8)


        ///cont1
        self.addSubview(container1)
        container1.backgroundColor = UIColor.clear

        container1.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.size.height/2)
            make.width.equalTo(self.bounds.size.width/2)
            make.leftMargin.equalTo(0)
            make.topMargin.equalTo(0)
        }
        ///cont1

        ///1
        container1.addSubview(slider)

        let degrees: CGFloat = 135.0 //the value in degrees
        let radians: CGFloat = degrees * CGFloat(-M_PI/180)

        self.slider.transform = CGAffineTransform(rotationAngle: radians)

        slider.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(40)
            make.center.equalToSuperview()
            make.width.equalToSuperview()
        }
        ///1

        ///cont2
        self.addSubview(container2)
        container2.backgroundColor = UIColor.clear

        container2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.size.height/2)
            make.width.equalTo(self.bounds.size.width/2)
            make.rightMargin.equalTo(0)
            make.topMargin.equalTo(0)
        }
        ///cont2

        ///2

        container2.addSubview(slider2)
        let degrees2: CGFloat = 45 //the value in degrees
        let radians2: CGFloat = degrees2 * CGFloat(-M_PI/180)
        self.slider2.transform = CGAffineTransform(rotationAngle: radians2)
        slider2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(40)
            make.center.equalToSuperview()
            make.width.equalToSuperview()
        }

        ///2

        ///cont3
        self.addSubview(container3)
        container3.backgroundColor = UIColor.clear

        container3.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.size.height/2)
            make.width.equalTo(self.bounds.size.width/2)
            make.leftMargin.equalTo(0)
            make.bottomMargin.equalTo(0)
        }
        ///cont3

        ///3
        container3.addSubview(slider3)
        let degrees3: CGFloat = 225 //the value in degrees
        let radians3: CGFloat = degrees3 * CGFloat(-M_PI/180)
        self.slider3.transform = CGAffineTransform(rotationAngle: radians3)
        slider3.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(40)
            make.center.equalToSuperview()
            make.width.equalToSuperview()
        }
        ///3

        ///cont4
        self.addSubview(container4)
        container4.backgroundColor = UIColor.clear

        container4.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(self.bounds.size.height/2)
            make.width.equalTo(self.bounds.size.width/2)
            make.rightMargin.equalTo(0)
            make.bottomMargin.equalTo(0)
        }
        ///cont4

        ///4
        container4.addSubview(slider4)
        let degrees4: CGFloat = 45 //the value in degrees
        let radians4: CGFloat = degrees4 * CGFloat(M_PI/180)
        self.slider4.transform = CGAffineTransform(rotationAngle: radians4)
        slider4.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(40)
            make.center.equalToSuperview()
            make.width.equalToSuperview()
        }
        ///4
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = UIColor.hexStringToUIColor(hex: "FEC709")

        self.addSubview(container1)
        self.addSubview(container2)
        self.addSubview(container3)
        self.addSubview(container4)
        
        sliderArray.append(contentsOf: [slider, slider2, slider3, slider4])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
