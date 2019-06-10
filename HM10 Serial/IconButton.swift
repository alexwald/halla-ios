//
//  IconButton.swift
//  Halla 360
//
//  Created by Alexander Wald on 18/05/2017.
//  Copyright © 2017 passionmakes.us. All rights reserved.
//

import Foundation

enum IconButtonType {
    case refresh, rotateOff, rotateOn, disconnect, addDevice, dimButton
}

class IconButton: UIButton {

    let type: IconButtonType

     init(rect: CGRect, type: IconButtonType) {
        self.type = type
        super.init(frame: rect)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var isEnabled:Bool {
        didSet {            
            if !isEnabled {
                self.alpha = 0.3
            } else {
                self.alpha = 1.0
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        switch type {
        case IconButtonType.refresh:
            StyleKit.drawRefresh(frame: self.bounds)
        case .addDevice:
            StyleKit.drawAddBle(frame: self.bounds)
        case .rotateOn:
            StyleKit.drawRotate2(frame: self.bounds)
        case .rotateOff:
            StyleKit.drawRotate1(frame: self.bounds)
        case .dimButton:
            StyleKit.drawDimButton(frame: self.bounds)
        default:
            print("problem")
        }
    }
}

class ConnectivityIconButton: IconButton {
    
    var isConnected: Bool = false {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        isConnected ? StyleKit.drawDisconnect(frame: self.bounds) : StyleKit.drawAddBle(frame: self.bounds)
    }
}
