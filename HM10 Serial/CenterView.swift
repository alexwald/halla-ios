//
//  CenterView.swift
//  HM10 Serial
//
//  Created by Alexander Wald on 17/04/17.
//  Copyright © 2017 Balancing Rock. All rights reserved.
//

import UIKit

class CenterView: UIView {

    var graphicLayer = CALayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        //        contentMode = UIViewContentMode.redraw
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        if let _ = graphicLayer.superlayer {
            graphicLayer.removeFromSuperlayer()
        }

        graphicLayer = CALayer()
        createSublayers()
        layer.addSublayer(graphicLayer)
    }

    func createSublayers() {
        //// Color Declarations
        let fillColor2 = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        let iconFrame = CGRect(x: 0, y: 0, width: 30, height: 30)

        let x = iconFrame.minX
        let y = iconFrame.minY
        //        let w = iconFrame.width
        //        let h = iconFrame.height

        let shapeLayer = CAShapeLayer()

        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: x - 0.28, y: y + 17.62))
        bezier3Path.addCurve(to: CGPoint(x: x + 8.42, y: y + 21.43), controlPoint1: CGPoint(x: x + 2.88, y: y + 17.75), controlPoint2: CGPoint(x: x + 6.01, y: y + 19.02))
        bezier3Path.addCurve(to: CGPoint(x: x + 12.22, y: y + 29.98), controlPoint1: CGPoint(x: x + 10.79, y: y + 23.8), controlPoint2: CGPoint(x: x + 12.05, y: y + 26.86))
        bezier3Path.addLine(to: CGPoint(x: x + 17.2, y: y + 29.98))
        bezier3Path.addCurve(to: CGPoint(x: x + 21.01, y: y + 21.27), controlPoint1: CGPoint(x: x + 17.33, y: y + 26.81), controlPoint2: CGPoint(x: x + 18.6, y: y + 23.68))
        bezier3Path.addCurve(to: CGPoint(x: x + 29.56, y: y + 17.48), controlPoint1: CGPoint(x: x + 23.38, y: y + 18.91), controlPoint2: CGPoint(x: x + 26.44, y: y + 17.64))
        bezier3Path.addLine(to: CGPoint(x: x + 29.56, y: y + 12.49))
        bezier3Path.addCurve(to: CGPoint(x: x + 20.86, y: y + 8.68), controlPoint1: CGPoint(x: x + 26.39, y: y + 12.36), controlPoint2: CGPoint(x: x + 23.26, y: y + 11.09))
        bezier3Path.addCurve(to: CGPoint(x: x + 17.06, y: y + 0.13), controlPoint1: CGPoint(x: x + 18.49, y: y + 6.32), controlPoint2: CGPoint(x: x + 17.22, y: y + 3.25))
        bezier3Path.addLine(to: CGPoint(x: x + 12.07, y: y + 0.13))
        bezier3Path.addCurve(to: CGPoint(x: x + 8.27, y: y + 8.84), controlPoint1: CGPoint(x: x + 11.94, y: y + 3.3), controlPoint2: CGPoint(x: x + 10.68, y: y + 6.43))
        bezier3Path.addCurve(to: CGPoint(x: x - 0.28, y: y + 12.63), controlPoint1: CGPoint(x: x + 5.9, y: y + 11.2), controlPoint2: CGPoint(x: x + 2.83, y: y + 12.47))
        bezier3Path.addLine(to: CGPoint(x: x - 0.28, y: y + 17.62))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezier3Path.fill()

        shapeLayer.path = bezier3Path.cgPath
        self.graphicLayer.addSublayer(shapeLayer)
        self.backgroundColor = UIColor.clear
    }

    override func draw(_ layer: CALayer, in ctx: CGContext) {
        super.draw(layer, in: ctx)
    }
}
