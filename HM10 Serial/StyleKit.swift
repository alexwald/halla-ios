//
//  StyleKit.swift
//  Halla 360
//
//  Created by Alexander Wald on 22/05/2017.
//  Copyright © 2017 passionmakes.us. All rights reserved.
//

//import Foundation
import UIKit

class StyleKit: NSObject {

    public dynamic class func drawRotate2(frame: CGRect = CGRect(x: 0, y: 11, width: 17, height: 19)) {
        //// Color Declarations

        let context = UIGraphicsGetCurrentContext()!


        let fillColor = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let rotate_2: CGRect = CGRect(x: frame.minX + 0.49, y: frame.minY + 1.61, width: frame.width - 1.18, height: frame.height - 3.18)

        //// rotate_2
        //// Bezier 14 Drawing
        let bezier14Path = UIBezierPath()
        bezier14Path.move(to: CGPoint(x: rotate_2.minX + 0.16278 * rotate_2.width, y: rotate_2.minY + 0.06734 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.06522 * rotate_2.width, y: rotate_2.minY + 0.16702 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.15005 * rotate_2.width, y: rotate_2.minY + 0.31336 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.10127 * rotate_2.width, y: rotate_2.minY + 0.21156 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.13097 * rotate_2.width, y: rotate_2.minY + 0.26034 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.18611 * rotate_2.width, y: rotate_2.minY + 0.50424 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.17338 * rotate_2.width, y: rotate_2.minY + 0.37275 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.18611 * rotate_2.width, y: rotate_2.minY + 0.43637 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.15217 * rotate_2.width, y: rotate_2.minY + 0.69300 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.18611 * rotate_2.width, y: rotate_2.minY + 0.56999 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.17338 * rotate_2.width, y: rotate_2.minY + 0.63362 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.06734 * rotate_2.width, y: rotate_2.minY + 0.83722 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.13097 * rotate_2.width, y: rotate_2.minY + 0.74390 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.10339 * rotate_2.width, y: rotate_2.minY + 0.79268 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.16702 * rotate_2.width, y: rotate_2.minY + 0.93478 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.31336 * rotate_2.width, y: rotate_2.minY + 0.84995 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.21156 * rotate_2.width, y: rotate_2.minY + 0.89873 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.26034 * rotate_2.width, y: rotate_2.minY + 0.86903 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.50424 * rotate_2.width, y: rotate_2.minY + 0.81389 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.37275 * rotate_2.width, y: rotate_2.minY + 0.82662 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.43637 * rotate_2.width, y: rotate_2.minY + 0.81389 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.69300 * rotate_2.width, y: rotate_2.minY + 0.84783 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.56999 * rotate_2.width, y: rotate_2.minY + 0.81389 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.63362 * rotate_2.width, y: rotate_2.minY + 0.82662 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.83722 * rotate_2.width, y: rotate_2.minY + 0.93266 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.74390 * rotate_2.width, y: rotate_2.minY + 0.86903 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.79268 * rotate_2.width, y: rotate_2.minY + 0.89661 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.93478 * rotate_2.width, y: rotate_2.minY + 0.83298 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.84995 * rotate_2.width, y: rotate_2.minY + 0.68664 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.89873 * rotate_2.width, y: rotate_2.minY + 0.78844 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.86903 * rotate_2.width, y: rotate_2.minY + 0.73966 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.81389 * rotate_2.width, y: rotate_2.minY + 0.49576 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.82662 * rotate_2.width, y: rotate_2.minY + 0.62725 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.81389 * rotate_2.width, y: rotate_2.minY + 0.56363 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.84783 * rotate_2.width, y: rotate_2.minY + 0.30700 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.81389 * rotate_2.width, y: rotate_2.minY + 0.43001 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.82662 * rotate_2.width, y: rotate_2.minY + 0.36638 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.93266 * rotate_2.width, y: rotate_2.minY + 0.16278 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.86903 * rotate_2.width, y: rotate_2.minY + 0.25610 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.89661 * rotate_2.width, y: rotate_2.minY + 0.20732 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.83298 * rotate_2.width, y: rotate_2.minY + 0.06522 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.68664 * rotate_2.width, y: rotate_2.minY + 0.15005 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.78844 * rotate_2.width, y: rotate_2.minY + 0.10127 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.73966 * rotate_2.width, y: rotate_2.minY + 0.13097 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.49576 * rotate_2.width, y: rotate_2.minY + 0.18611 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.62725 * rotate_2.width, y: rotate_2.minY + 0.17338 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.56363 * rotate_2.width, y: rotate_2.minY + 0.18611 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.30700 * rotate_2.width, y: rotate_2.minY + 0.15217 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.43001 * rotate_2.width, y: rotate_2.minY + 0.18611 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.36638 * rotate_2.width, y: rotate_2.minY + 0.17338 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.16278 * rotate_2.width, y: rotate_2.minY + 0.06734 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.25610 * rotate_2.width, y: rotate_2.minY + 0.13097 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.20732 * rotate_2.width, y: rotate_2.minY + 0.10339 * rotate_2.height))
        bezier14Path.close()
        bezier14Path.move(to: CGPoint(x: rotate_2.minX + 0.00795 * rotate_2.width, y: rotate_2.minY + 0.14793 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.14369 * rotate_2.width, y: rotate_2.minY + 0.01220 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.14369 * rotate_2.width, y: rotate_2.minY + 0.01220 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.17975 * rotate_2.width, y: rotate_2.minY + 0.01220 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.15429 * rotate_2.width, y: rotate_2.minY + 0.00159 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.16914 * rotate_2.width, y: rotate_2.minY + 0.00159 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.32609 * rotate_2.width, y: rotate_2.minY + 0.10127 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.22216 * rotate_2.width, y: rotate_2.minY + 0.05037 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.08006 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.49576 * rotate_2.width, y: rotate_2.minY + 0.13309 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.37911 * rotate_2.width, y: rotate_2.minY + 0.12248 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.43637 * rotate_2.width, y: rotate_2.minY + 0.13309 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.66755 * rotate_2.width, y: rotate_2.minY + 0.10127 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.55726 * rotate_2.width, y: rotate_2.minY + 0.13309 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.61453 * rotate_2.width, y: rotate_2.minY + 0.12248 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.81389 * rotate_2.width, y: rotate_2.minY + 0.00795 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.72269 * rotate_2.width, y: rotate_2.minY + 0.08006 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.77147 * rotate_2.width, y: rotate_2.minY + 0.04825 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.81389 * rotate_2.width, y: rotate_2.minY + 0.00795 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.85207 * rotate_2.width, y: rotate_2.minY + 0.00795 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.82450 * rotate_2.width, y: rotate_2.minY + -0.00265 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.84146 * rotate_2.width, y: rotate_2.minY + -0.00265 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.98780 * rotate_2.width, y: rotate_2.minY + 0.14369 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.98780 * rotate_2.width, y: rotate_2.minY + 0.14369 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.98780 * rotate_2.width, y: rotate_2.minY + 0.17975 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.99841 * rotate_2.width, y: rotate_2.minY + 0.15429 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.99841 * rotate_2.width, y: rotate_2.minY + 0.16914 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.89873 * rotate_2.width, y: rotate_2.minY + 0.32609 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.94963 * rotate_2.width, y: rotate_2.minY + 0.22216 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.91994 * rotate_2.width, y: rotate_2.minY + 0.27306 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.86691 * rotate_2.width, y: rotate_2.minY + 0.49576 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.87752 * rotate_2.width, y: rotate_2.minY + 0.37911 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.86691 * rotate_2.width, y: rotate_2.minY + 0.43637 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.89873 * rotate_2.width, y: rotate_2.minY + 0.66755 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.86691 * rotate_2.width, y: rotate_2.minY + 0.55726 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.87752 * rotate_2.width, y: rotate_2.minY + 0.61453 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.99205 * rotate_2.width, y: rotate_2.minY + 0.81389 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.91994 * rotate_2.width, y: rotate_2.minY + 0.72269 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.95175 * rotate_2.width, y: rotate_2.minY + 0.77147 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.99205 * rotate_2.width, y: rotate_2.minY + 0.81389 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.99205 * rotate_2.width, y: rotate_2.minY + 0.85207 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 1.00265 * rotate_2.width, y: rotate_2.minY + 0.82450 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 1.00265 * rotate_2.width, y: rotate_2.minY + 0.84146 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.85631 * rotate_2.width, y: rotate_2.minY + 0.98780 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.85631 * rotate_2.width, y: rotate_2.minY + 0.98780 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.82025 * rotate_2.width, y: rotate_2.minY + 0.98780 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.84571 * rotate_2.width, y: rotate_2.minY + 0.99841 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.83086 * rotate_2.width, y: rotate_2.minY + 0.99841 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.67391 * rotate_2.width, y: rotate_2.minY + 0.89873 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.77784 * rotate_2.width, y: rotate_2.minY + 0.94963 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.72694 * rotate_2.width, y: rotate_2.minY + 0.91994 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.50424 * rotate_2.width, y: rotate_2.minY + 0.86691 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.62089 * rotate_2.width, y: rotate_2.minY + 0.87752 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.56363 * rotate_2.width, y: rotate_2.minY + 0.86691 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.33245 * rotate_2.width, y: rotate_2.minY + 0.89873 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.44274 * rotate_2.width, y: rotate_2.minY + 0.86691 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.38547 * rotate_2.width, y: rotate_2.minY + 0.87752 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.18611 * rotate_2.width, y: rotate_2.minY + 0.99205 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.27731 * rotate_2.width, y: rotate_2.minY + 0.91994 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.22853 * rotate_2.width, y: rotate_2.minY + 0.95175 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.18611 * rotate_2.width, y: rotate_2.minY + 0.99205 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.14793 * rotate_2.width, y: rotate_2.minY + 0.99205 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.17550 * rotate_2.width, y: rotate_2.minY + 1.00265 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.15854 * rotate_2.width, y: rotate_2.minY + 1.00265 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.01220 * rotate_2.width, y: rotate_2.minY + 0.85631 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.01220 * rotate_2.width, y: rotate_2.minY + 0.85631 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.01220 * rotate_2.width, y: rotate_2.minY + 0.82025 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.00159 * rotate_2.width, y: rotate_2.minY + 0.84571 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.00159 * rotate_2.width, y: rotate_2.minY + 0.83086 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.10127 * rotate_2.width, y: rotate_2.minY + 0.67391 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.05037 * rotate_2.width, y: rotate_2.minY + 0.77784 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.08006 * rotate_2.width, y: rotate_2.minY + 0.72694 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.13309 * rotate_2.width, y: rotate_2.minY + 0.50424 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.12248 * rotate_2.width, y: rotate_2.minY + 0.62089 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.13309 * rotate_2.width, y: rotate_2.minY + 0.56363 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.10127 * rotate_2.width, y: rotate_2.minY + 0.33245 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.13309 * rotate_2.width, y: rotate_2.minY + 0.44274 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.12248 * rotate_2.width, y: rotate_2.minY + 0.38547 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.00795 * rotate_2.width, y: rotate_2.minY + 0.18611 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.08006 * rotate_2.width, y: rotate_2.minY + 0.27731 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.04825 * rotate_2.width, y: rotate_2.minY + 0.22853 * rotate_2.height))
        bezier14Path.addLine(to: CGPoint(x: rotate_2.minX + 0.00795 * rotate_2.width, y: rotate_2.minY + 0.18611 * rotate_2.height))
        bezier14Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.00795 * rotate_2.width, y: rotate_2.minY + 0.14793 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + -0.00265 * rotate_2.width, y: rotate_2.minY + 0.17550 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + -0.00265 * rotate_2.width, y: rotate_2.minY + 0.15854 * rotate_2.height))
        bezier14Path.close()
        bezier14Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier14Path.fill()


        //// Bezier 15 Drawing
        let bezier15Path = UIBezierPath()
        bezier15Path.move(to: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.43001 * rotate_2.height))
        bezier15Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.40456 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.28579 * rotate_2.width, y: rotate_2.minY + 0.43213 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.41941 * rotate_2.height))
        bezier15Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.29639 * rotate_2.width, y: rotate_2.minY + 0.37699 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.27094 * rotate_2.width, y: rotate_2.minY + 0.38971 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.28155 * rotate_2.width, y: rotate_2.minY + 0.37699 * rotate_2.height))
        bezier15Path.addLine(to: CGPoint(x: rotate_2.minX + 0.42789 * rotate_2.width, y: rotate_2.minY + 0.36638 * rotate_2.height))
        bezier15Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.45546 * rotate_2.width, y: rotate_2.minY + 0.39183 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.44274 * rotate_2.width, y: rotate_2.minY + 0.36426 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.45546 * rotate_2.width, y: rotate_2.minY + 0.37699 * rotate_2.height))
        bezier15Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.43001 * rotate_2.width, y: rotate_2.minY + 0.41941 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.45758 * rotate_2.width, y: rotate_2.minY + 0.40668 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.44486 * rotate_2.width, y: rotate_2.minY + 0.41941 * rotate_2.height))
        bezier15Path.addLine(to: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.43001 * rotate_2.height))
        bezier15Path.close()
        bezier15Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier15Path.fill()


        //// Bezier 16 Drawing
        let bezier16Path = UIBezierPath()
        bezier16Path.move(to: CGPoint(x: rotate_2.minX + 0.32609 * rotate_2.width, y: rotate_2.minY + 0.40032 * rotate_2.height))
        bezier16Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.43001 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.32609 * rotate_2.width, y: rotate_2.minY + 0.41516 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.31548 * rotate_2.width, y: rotate_2.minY + 0.42789 * rotate_2.height))
        bezier16Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.40456 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.28579 * rotate_2.width, y: rotate_2.minY + 0.43213 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.41941 * rotate_2.height))
        bezier16Path.addLine(to: CGPoint(x: rotate_2.minX + 0.26246 * rotate_2.width, y: rotate_2.minY + 0.27519 * rotate_2.height))
        bezier16Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.28791 * rotate_2.width, y: rotate_2.minY + 0.24761 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.26034 * rotate_2.width, y: rotate_2.minY + 0.26034 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.24761 * rotate_2.height))
        bezier16Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.31548 * rotate_2.width, y: rotate_2.minY + 0.27094 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.30276 * rotate_2.width, y: rotate_2.minY + 0.24549 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.31548 * rotate_2.width, y: rotate_2.minY + 0.25610 * rotate_2.height))
        bezier16Path.addLine(to: CGPoint(x: rotate_2.minX + 0.32609 * rotate_2.width, y: rotate_2.minY + 0.40032 * rotate_2.height))
        bezier16Path.close()
        bezier16Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier16Path.fill()


        //// Bezier 17 Drawing
        let bezier17Path = UIBezierPath()
        bezier17Path.move(to: CGPoint(x: rotate_2.minX + 0.32397 * rotate_2.width, y: rotate_2.minY + 0.41516 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.28791 * rotate_2.width, y: rotate_2.minY + 0.42789 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.31760 * rotate_2.width, y: rotate_2.minY + 0.42789 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.43425 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.27519 * rotate_2.width, y: rotate_2.minY + 0.39183 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.27519 * rotate_2.width, y: rotate_2.minY + 0.42153 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.26882 * rotate_2.width, y: rotate_2.minY + 0.40456 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.32609 * rotate_2.width, y: rotate_2.minY + 0.32185 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.28791 * rotate_2.width, y: rotate_2.minY + 0.36426 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.30488 * rotate_2.width, y: rotate_2.minY + 0.34093 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.39820 * rotate_2.width, y: rotate_2.minY + 0.27306 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.34730 * rotate_2.width, y: rotate_2.minY + 0.30064 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.37063 * rotate_2.width, y: rotate_2.minY + 0.28367 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.58908 * rotate_2.width, y: rotate_2.minY + 0.26670 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.45970 * rotate_2.width, y: rotate_2.minY + 0.24337 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.52969 * rotate_2.width, y: rotate_2.minY + 0.24337 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.72694 * rotate_2.width, y: rotate_2.minY + 0.39820 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.64846 * rotate_2.width, y: rotate_2.minY + 0.29003 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.69936 * rotate_2.width, y: rotate_2.minY + 0.33457 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.73330 * rotate_2.width, y: rotate_2.minY + 0.58908 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.75663 * rotate_2.width, y: rotate_2.minY + 0.45970 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.75663 * rotate_2.width, y: rotate_2.minY + 0.52969 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.60180 * rotate_2.width, y: rotate_2.minY + 0.72694 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.70997 * rotate_2.width, y: rotate_2.minY + 0.64846 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.66543 * rotate_2.width, y: rotate_2.minY + 0.69936 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.41092 * rotate_2.width, y: rotate_2.minY + 0.73330 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.54030 * rotate_2.width, y: rotate_2.minY + 0.75663 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.47031 * rotate_2.width, y: rotate_2.minY + 0.75663 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.60180 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.35154 * rotate_2.width, y: rotate_2.minY + 0.70997 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.66543 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.28579 * rotate_2.width, y: rotate_2.minY + 0.56575 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.26670 * rotate_2.width, y: rotate_2.minY + 0.58908 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.27306 * rotate_2.width, y: rotate_2.minY + 0.57211 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.32185 * rotate_2.width, y: rotate_2.minY + 0.58059 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.30064 * rotate_2.width, y: rotate_2.minY + 0.56151 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.31548 * rotate_2.width, y: rotate_2.minY + 0.56575 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.43001 * rotate_2.width, y: rotate_2.minY + 0.68240 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.34305 * rotate_2.width, y: rotate_2.minY + 0.62937 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.38335 * rotate_2.width, y: rotate_2.minY + 0.66543 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.58059 * rotate_2.width, y: rotate_2.minY + 0.67815 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.47667 * rotate_2.width, y: rotate_2.minY + 0.70148 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.53181 * rotate_2.width, y: rotate_2.minY + 0.70148 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.68240 * rotate_2.width, y: rotate_2.minY + 0.56999 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.62937 * rotate_2.width, y: rotate_2.minY + 0.65695 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.66543 * rotate_2.width, y: rotate_2.minY + 0.61665 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.67815 * rotate_2.width, y: rotate_2.minY + 0.41941 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.70148 * rotate_2.width, y: rotate_2.minY + 0.52333 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.70148 * rotate_2.width, y: rotate_2.minY + 0.46819 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.56999 * rotate_2.width, y: rotate_2.minY + 0.31760 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.65695 * rotate_2.width, y: rotate_2.minY + 0.37063 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.61665 * rotate_2.width, y: rotate_2.minY + 0.33457 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.41941 * rotate_2.width, y: rotate_2.minY + 0.32185 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.52333 * rotate_2.width, y: rotate_2.minY + 0.29852 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.46819 * rotate_2.width, y: rotate_2.minY + 0.29852 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.36426 * rotate_2.width, y: rotate_2.minY + 0.36002 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.39820 * rotate_2.width, y: rotate_2.minY + 0.33033 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.37911 * rotate_2.width, y: rotate_2.minY + 0.34305 * rotate_2.height))
        bezier17Path.addCurve(to: CGPoint(x: rotate_2.minX + 0.32397 * rotate_2.width, y: rotate_2.minY + 0.41516 * rotate_2.height), controlPoint1: CGPoint(x: rotate_2.minX + 0.34730 * rotate_2.width, y: rotate_2.minY + 0.37487 * rotate_2.height), controlPoint2: CGPoint(x: rotate_2.minX + 0.33457 * rotate_2.width, y: rotate_2.minY + 0.39396 * rotate_2.height))
        bezier17Path.close()
        bezier17Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier17Path.fill()
        
        context.saveGState()
        
        
    }

    public dynamic class func drawRotate1(frame: CGRect = CGRect(x: 0, y: 11, width: 17, height: 19)) {
        //// Color Declarations
        let fillColor = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let rotate_1: CGRect = CGRect(x: frame.minX + 0.34, y: frame.minY + 1.36, width: frame.width - 0.68, height: frame.height - 2.72)


        //// rotate_1
        //// Bezier 10 Drawing
        let bezier10Path = UIBezierPath()
        bezier10Path.move(to: CGPoint(x: rotate_1.minX + 0.55674 * rotate_1.width, y: rotate_1.minY + 0.04440 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.43972 * rotate_1.width, y: rotate_1.minY + 0.04440 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.40426 * rotate_1.width, y: rotate_1.minY + 0.18117 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.43440 * rotate_1.width, y: rotate_1.minY + 0.09059 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.42376 * rotate_1.width, y: rotate_1.minY + 0.13854 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.31206 * rotate_1.width, y: rotate_1.minY + 0.31616 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.38298 * rotate_1.width, y: rotate_1.minY + 0.23091 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.35284 * rotate_1.width, y: rotate_1.minY + 0.27709 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.18085 * rotate_1.width, y: rotate_1.minY + 0.40675 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.27305 * rotate_1.width, y: rotate_1.minY + 0.35524 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.22872 * rotate_1.width, y: rotate_1.minY + 0.38544 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.04610 * rotate_1.width, y: rotate_1.minY + 0.44227 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.13830 * rotate_1.width, y: rotate_1.minY + 0.42629 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.09220 * rotate_1.width, y: rotate_1.minY + 0.43694 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.04610 * rotate_1.width, y: rotate_1.minY + 0.55950 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.18262 * rotate_1.width, y: rotate_1.minY + 0.59503 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.09220 * rotate_1.width, y: rotate_1.minY + 0.56483 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.14007 * rotate_1.width, y: rotate_1.minY + 0.57549 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.31738 * rotate_1.width, y: rotate_1.minY + 0.68739 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.23227 * rotate_1.width, y: rotate_1.minY + 0.61634 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.27660 * rotate_1.width, y: rotate_1.minY + 0.64654 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.31738 * rotate_1.width, y: rotate_1.minY + 0.68739 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.31738 * rotate_1.width, y: rotate_1.minY + 0.68739 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.40780 * rotate_1.width, y: rotate_1.minY + 0.81883 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.35638 * rotate_1.width, y: rotate_1.minY + 0.72647 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.38652 * rotate_1.width, y: rotate_1.minY + 0.77087 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.44326 * rotate_1.width, y: rotate_1.minY + 0.95382 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.42730 * rotate_1.width, y: rotate_1.minY + 0.86146 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.43794 * rotate_1.width, y: rotate_1.minY + 0.90764 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.56028 * rotate_1.width, y: rotate_1.minY + 0.95382 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.59574 * rotate_1.width, y: rotate_1.minY + 0.81705 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.56560 * rotate_1.width, y: rotate_1.minY + 0.90764 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.57624 * rotate_1.width, y: rotate_1.minY + 0.85968 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.68794 * rotate_1.width, y: rotate_1.minY + 0.68206 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.61702 * rotate_1.width, y: rotate_1.minY + 0.76732 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.64716 * rotate_1.width, y: rotate_1.minY + 0.72114 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.81915 * rotate_1.width, y: rotate_1.minY + 0.59147 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.72695 * rotate_1.width, y: rotate_1.minY + 0.64298 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.77128 * rotate_1.width, y: rotate_1.minY + 0.61279 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.95390 * rotate_1.width, y: rotate_1.minY + 0.55595 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.86170 * rotate_1.width, y: rotate_1.minY + 0.57194 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.90780 * rotate_1.width, y: rotate_1.minY + 0.56128 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.95390 * rotate_1.width, y: rotate_1.minY + 0.43872 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.81738 * rotate_1.width, y: rotate_1.minY + 0.40320 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.90780 * rotate_1.width, y: rotate_1.minY + 0.43339 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.85993 * rotate_1.width, y: rotate_1.minY + 0.42274 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.68262 * rotate_1.width, y: rotate_1.minY + 0.31083 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.76773 * rotate_1.width, y: rotate_1.minY + 0.38188 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.72340 * rotate_1.width, y: rotate_1.minY + 0.35169 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.68262 * rotate_1.width, y: rotate_1.minY + 0.31083 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.68262 * rotate_1.width, y: rotate_1.minY + 0.31083 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.59220 * rotate_1.width, y: rotate_1.minY + 0.17940 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.64362 * rotate_1.width, y: rotate_1.minY + 0.27176 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.61348 * rotate_1.width, y: rotate_1.minY + 0.22735 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.55674 * rotate_1.width, y: rotate_1.minY + 0.04440 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.57270 * rotate_1.width, y: rotate_1.minY + 0.13677 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.56206 * rotate_1.width, y: rotate_1.minY + 0.09059 * rotate_1.height))
        bezier10Path.close()
        bezier10Path.move(to: CGPoint(x: rotate_1.minX + 0.41844 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.57801 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.57801 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.59929 * rotate_1.width, y: rotate_1.minY + 0.02131 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.58865 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.59929 * rotate_1.width, y: rotate_1.minY + 0.00888 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.63298 * rotate_1.width, y: rotate_1.minY + 0.16163 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.60284 * rotate_1.width, y: rotate_1.minY + 0.06927 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.61348 * rotate_1.width, y: rotate_1.minY + 0.11723 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.71454 * rotate_1.width, y: rotate_1.minY + 0.27886 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.65248 * rotate_1.width, y: rotate_1.minY + 0.20426 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.67908 * rotate_1.width, y: rotate_1.minY + 0.24334 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.71454 * rotate_1.width, y: rotate_1.minY + 0.27886 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.83511 * rotate_1.width, y: rotate_1.minY + 0.36234 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.75000 * rotate_1.width, y: rotate_1.minY + 0.31439 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.79078 * rotate_1.width, y: rotate_1.minY + 0.34281 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.97518 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.87943 * rotate_1.width, y: rotate_1.minY + 0.38188 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.92730 * rotate_1.width, y: rotate_1.minY + 0.39254 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.97695 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.97695 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.97695 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 1.00000 * rotate_1.width, y: rotate_1.minY + 0.41741 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.98936 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 1.00000 * rotate_1.width, y: rotate_1.minY + 0.40497 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 1.00000 * rotate_1.width, y: rotate_1.minY + 0.57726 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.99823 * rotate_1.width, y: rotate_1.minY + 0.57726 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.97695 * rotate_1.width, y: rotate_1.minY + 0.59858 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.99823 * rotate_1.width, y: rotate_1.minY + 0.58792 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.98936 * rotate_1.width, y: rotate_1.minY + 0.59858 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.83688 * rotate_1.width, y: rotate_1.minY + 0.63233 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.92908 * rotate_1.width, y: rotate_1.minY + 0.60213 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.88298 * rotate_1.width, y: rotate_1.minY + 0.61279 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.71986 * rotate_1.width, y: rotate_1.minY + 0.71403 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.79433 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.75532 * rotate_1.width, y: rotate_1.minY + 0.67851 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.63652 * rotate_1.width, y: rotate_1.minY + 0.83481 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.68440 * rotate_1.width, y: rotate_1.minY + 0.74956 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.65603 * rotate_1.width, y: rotate_1.minY + 0.79041 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.97513 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.61702 * rotate_1.width, y: rotate_1.minY + 0.87922 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.60638 * rotate_1.width, y: rotate_1.minY + 0.92718 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.97691 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.97691 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.97691 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.58156 * rotate_1.width, y: rotate_1.minY + 1.00000 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.98934 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.59397 * rotate_1.width, y: rotate_1.minY + 1.00000 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42199 * rotate_1.width, y: rotate_1.minY + 1.00000 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42199 * rotate_1.width, y: rotate_1.minY + 0.99822 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.40071 * rotate_1.width, y: rotate_1.minY + 0.97691 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.41135 * rotate_1.width, y: rotate_1.minY + 0.99822 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.40071 * rotate_1.width, y: rotate_1.minY + 0.98934 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.36702 * rotate_1.width, y: rotate_1.minY + 0.83659 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.39716 * rotate_1.width, y: rotate_1.minY + 0.92895 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.38652 * rotate_1.width, y: rotate_1.minY + 0.88099 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.28546 * rotate_1.width, y: rotate_1.minY + 0.71936 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.34752 * rotate_1.width, y: rotate_1.minY + 0.79396 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.32092 * rotate_1.width, y: rotate_1.minY + 0.75488 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.28546 * rotate_1.width, y: rotate_1.minY + 0.71936 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.16489 * rotate_1.width, y: rotate_1.minY + 0.63588 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.25000 * rotate_1.width, y: rotate_1.minY + 0.68384 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.20922 * rotate_1.width, y: rotate_1.minY + 0.65542 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.02482 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.12057 * rotate_1.width, y: rotate_1.minY + 0.61634 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.07270 * rotate_1.width, y: rotate_1.minY + 0.60568 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.02305 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.02305 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.02305 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.00000 * rotate_1.width, y: rotate_1.minY + 0.58082 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.01064 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.00000 * rotate_1.width, y: rotate_1.minY + 0.59325 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.00000 * rotate_1.width, y: rotate_1.minY + 0.42096 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.00177 * rotate_1.width, y: rotate_1.minY + 0.42096 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.02305 * rotate_1.width, y: rotate_1.minY + 0.39964 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.00177 * rotate_1.width, y: rotate_1.minY + 0.41030 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.01064 * rotate_1.width, y: rotate_1.minY + 0.39964 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.16312 * rotate_1.width, y: rotate_1.minY + 0.36590 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.07092 * rotate_1.width, y: rotate_1.minY + 0.39609 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.11879 * rotate_1.width, y: rotate_1.minY + 0.38544 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.28014 * rotate_1.width, y: rotate_1.minY + 0.28419 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.20567 * rotate_1.width, y: rotate_1.minY + 0.34636 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.24468 * rotate_1.width, y: rotate_1.minY + 0.31972 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.36348 * rotate_1.width, y: rotate_1.minY + 0.16341 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.31560 * rotate_1.width, y: rotate_1.minY + 0.24867 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.34397 * rotate_1.width, y: rotate_1.minY + 0.20782 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.39539 * rotate_1.width, y: rotate_1.minY + 0.02309 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.38298 * rotate_1.width, y: rotate_1.minY + 0.11901 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.39362 * rotate_1.width, y: rotate_1.minY + 0.07105 * rotate_1.height))
        bezier10Path.addLine(to: CGPoint(x: rotate_1.minX + 0.39539 * rotate_1.width, y: rotate_1.minY + 0.02131 * rotate_1.height))
        bezier10Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.41844 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.39539 * rotate_1.width, y: rotate_1.minY + 0.00888 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.40603 * rotate_1.width, y: rotate_1.minY + 0.00000 * rotate_1.height))
        bezier10Path.close()
        bezier10Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier10Path.fill()


        //// Bezier 11 Drawing
        let bezier11Path = UIBezierPath()
        bezier11Path.move(to: CGPoint(x: rotate_1.minX + 0.42376 * rotate_1.width, y: rotate_1.minY + 0.33925 * rotate_1.height))
        bezier11Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.42199 * rotate_1.width, y: rotate_1.minY + 0.30906 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.41489 * rotate_1.width, y: rotate_1.minY + 0.33215 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.41312 * rotate_1.width, y: rotate_1.minY + 0.31794 * rotate_1.height))
        bezier11Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.45390 * rotate_1.width, y: rotate_1.minY + 0.30551 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.42908 * rotate_1.width, y: rotate_1.minY + 0.29840 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.44326 * rotate_1.width, y: rotate_1.minY + 0.29840 * rotate_1.height))
        bezier11Path.addLine(to: CGPoint(x: rotate_1.minX + 0.53546 * rotate_1.width, y: rotate_1.minY + 0.37655 * rotate_1.height))
        bezier11Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.53901 * rotate_1.width, y: rotate_1.minY + 0.40853 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.54610 * rotate_1.width, y: rotate_1.minY + 0.38544 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.54610 * rotate_1.width, y: rotate_1.minY + 0.39964 * rotate_1.height))
        bezier11Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.50709 * rotate_1.width, y: rotate_1.minY + 0.41030 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.53014 * rotate_1.width, y: rotate_1.minY + 0.41741 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.51596 * rotate_1.width, y: rotate_1.minY + 0.41918 * rotate_1.height))
        bezier11Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42376 * rotate_1.width, y: rotate_1.minY + 0.33925 * rotate_1.height))
        bezier11Path.close()
        bezier11Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier11Path.fill()


        //// Bezier 12 Drawing
        let bezier12Path = UIBezierPath()
        bezier12Path.move(to: CGPoint(x: rotate_1.minX + 0.45567 * rotate_1.width, y: rotate_1.minY + 0.33748 * rotate_1.height))
        bezier12Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.42376 * rotate_1.width, y: rotate_1.minY + 0.33925 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.44681 * rotate_1.width, y: rotate_1.minY + 0.34636 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.43262 * rotate_1.width, y: rotate_1.minY + 0.34813 * rotate_1.height))
        bezier12Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.42199 * rotate_1.width, y: rotate_1.minY + 0.30906 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.41489 * rotate_1.width, y: rotate_1.minY + 0.33215 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.41312 * rotate_1.width, y: rotate_1.minY + 0.31794 * rotate_1.height))
        bezier12Path.addLine(to: CGPoint(x: rotate_1.minX + 0.49291 * rotate_1.width, y: rotate_1.minY + 0.22558 * rotate_1.height))
        bezier12Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.52305 * rotate_1.width, y: rotate_1.minY + 0.22380 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.50000 * rotate_1.width, y: rotate_1.minY + 0.21670 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.51418 * rotate_1.width, y: rotate_1.minY + 0.21492 * rotate_1.height))
        bezier12Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.52660 * rotate_1.width, y: rotate_1.minY + 0.25400 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.53369 * rotate_1.width, y: rotate_1.minY + 0.23091 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.53369 * rotate_1.width, y: rotate_1.minY + 0.24512 * rotate_1.height))
        bezier12Path.addLine(to: CGPoint(x: rotate_1.minX + 0.45567 * rotate_1.width, y: rotate_1.minY + 0.33748 * rotate_1.height))
        bezier12Path.close()
        bezier12Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier12Path.fill()


        //// Bezier 13 Drawing
        let bezier13Path = UIBezierPath()
        bezier13Path.move(to: CGPoint(x: rotate_1.minX + 0.44681 * rotate_1.width, y: rotate_1.minY + 0.34458 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.41844 * rotate_1.width, y: rotate_1.minY + 0.33037 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.43440 * rotate_1.width, y: rotate_1.minY + 0.34813 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.42199 * rotate_1.width, y: rotate_1.minY + 0.34281 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.43085 * rotate_1.width, y: rotate_1.minY + 0.30195 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.41312 * rotate_1.width, y: rotate_1.minY + 0.31972 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.42021 * rotate_1.width, y: rotate_1.minY + 0.30551 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.50355 * rotate_1.width, y: rotate_1.minY + 0.28952 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.45390 * rotate_1.width, y: rotate_1.minY + 0.29307 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.47872 * rotate_1.width, y: rotate_1.minY + 0.28952 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.57447 * rotate_1.width, y: rotate_1.minY + 0.30373 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.52660 * rotate_1.width, y: rotate_1.minY + 0.29130 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.55142 * rotate_1.width, y: rotate_1.minY + 0.29485 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.57447 * rotate_1.width, y: rotate_1.minY + 0.30373 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.68972 * rotate_1.width, y: rotate_1.minY + 0.41385 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.62766 * rotate_1.width, y: rotate_1.minY + 0.32504 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.66844 * rotate_1.width, y: rotate_1.minY + 0.36412 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.71277 * rotate_1.width, y: rotate_1.minY + 0.46181 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.71454 * rotate_1.width, y: rotate_1.minY + 0.51865 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.69504 * rotate_1.width, y: rotate_1.minY + 0.57371 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.58511 * rotate_1.width, y: rotate_1.minY + 0.68917 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.67376 * rotate_1.width, y: rotate_1.minY + 0.62700 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.63298 * rotate_1.width, y: rotate_1.minY + 0.66785 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.42553 * rotate_1.width, y: rotate_1.minY + 0.69449 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.53723 * rotate_1.width, y: rotate_1.minY + 0.71226 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.48050 * rotate_1.width, y: rotate_1.minY + 0.71403 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42553 * rotate_1.width, y: rotate_1.minY + 0.69449 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42553 * rotate_1.width, y: rotate_1.minY + 0.69449 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.42553 * rotate_1.width, y: rotate_1.minY + 0.69449 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.31028 * rotate_1.width, y: rotate_1.minY + 0.58437 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.37234 * rotate_1.width, y: rotate_1.minY + 0.67318 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.33156 * rotate_1.width, y: rotate_1.minY + 0.63233 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.30496 * rotate_1.width, y: rotate_1.minY + 0.42451 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.28723 * rotate_1.width, y: rotate_1.minY + 0.53641 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.28546 * rotate_1.width, y: rotate_1.minY + 0.47957 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.30496 * rotate_1.width, y: rotate_1.minY + 0.42451 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.30496 * rotate_1.width, y: rotate_1.minY + 0.42451 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.33333 * rotate_1.width, y: rotate_1.minY + 0.41208 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.30851 * rotate_1.width, y: rotate_1.minY + 0.41385 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.32270 * rotate_1.width, y: rotate_1.minY + 0.40675 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.34752 * rotate_1.width, y: rotate_1.minY + 0.44050 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.34574 * rotate_1.width, y: rotate_1.minY + 0.41563 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.35106 * rotate_1.width, y: rotate_1.minY + 0.42984 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.34752 * rotate_1.width, y: rotate_1.minY + 0.44050 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.34752 * rotate_1.width, y: rotate_1.minY + 0.44050 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.34752 * rotate_1.width, y: rotate_1.minY + 0.44050 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.35106 * rotate_1.width, y: rotate_1.minY + 0.56661 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.33156 * rotate_1.width, y: rotate_1.minY + 0.48313 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.33333 * rotate_1.width, y: rotate_1.minY + 0.52753 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.36879 * rotate_1.width, y: rotate_1.minY + 0.60391 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.39894 * rotate_1.width, y: rotate_1.minY + 0.63588 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.44149 * rotate_1.width, y: rotate_1.minY + 0.65187 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.56738 * rotate_1.width, y: rotate_1.minY + 0.64831 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.48404 * rotate_1.width, y: rotate_1.minY + 0.66785 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.52837 * rotate_1.width, y: rotate_1.minY + 0.66607 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.65248 * rotate_1.width, y: rotate_1.minY + 0.55773 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.60461 * rotate_1.width, y: rotate_1.minY + 0.63055 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.63652 * rotate_1.width, y: rotate_1.minY + 0.60036 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.65248 * rotate_1.width, y: rotate_1.minY + 0.55773 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.65248 * rotate_1.width, y: rotate_1.minY + 0.55773 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.65248 * rotate_1.width, y: rotate_1.minY + 0.55773 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.64894 * rotate_1.width, y: rotate_1.minY + 0.43162 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.66844 * rotate_1.width, y: rotate_1.minY + 0.51510 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.66667 * rotate_1.width, y: rotate_1.minY + 0.47069 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.55851 * rotate_1.width, y: rotate_1.minY + 0.34636 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.63121 * rotate_1.width, y: rotate_1.minY + 0.39432 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.60106 * rotate_1.width, y: rotate_1.minY + 0.36234 * rotate_1.height))
        bezier13Path.addLine(to: CGPoint(x: rotate_1.minX + 0.55851 * rotate_1.width, y: rotate_1.minY + 0.34636 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.50177 * rotate_1.width, y: rotate_1.minY + 0.33570 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.54078 * rotate_1.width, y: rotate_1.minY + 0.33925 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.52128 * rotate_1.width, y: rotate_1.minY + 0.33570 * rotate_1.height))
        bezier13Path.addCurve(to: CGPoint(x: rotate_1.minX + 0.44681 * rotate_1.width, y: rotate_1.minY + 0.34458 * rotate_1.height), controlPoint1: CGPoint(x: rotate_1.minX + 0.48404 * rotate_1.width, y: rotate_1.minY + 0.33570 * rotate_1.height), controlPoint2: CGPoint(x: rotate_1.minX + 0.46454 * rotate_1.width, y: rotate_1.minY + 0.33748 * rotate_1.height))
        bezier13Path.close()
        bezier13Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier13Path.fill()
    }

    public dynamic class func drawDisconnect(frame: CGRect = CGRect(x: 0, y: 11, width: 17, height: 19)) {
        //// Color Declarations
        let fillColor = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let disconnect: CGRect = CGRect(x: frame.minX + 0.35, y: frame.minY + 1.33, width: frame.width - 0.68, height: frame.height - 2.72)


        //// disconnect
        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: disconnect.minX + 0.55674 * disconnect.width, y: disconnect.minY + 0.04440 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.43972 * disconnect.width, y: disconnect.minY + 0.04440 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.40426 * disconnect.width, y: disconnect.minY + 0.18117 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.43440 * disconnect.width, y: disconnect.minY + 0.09059 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.42376 * disconnect.width, y: disconnect.minY + 0.13854 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.31206 * disconnect.width, y: disconnect.minY + 0.31616 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.38298 * disconnect.width, y: disconnect.minY + 0.23091 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.35284 * disconnect.width, y: disconnect.minY + 0.27531 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.31206 * disconnect.width, y: disconnect.minY + 0.31616 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.31206 * disconnect.width, y: disconnect.minY + 0.31616 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.18085 * disconnect.width, y: disconnect.minY + 0.40675 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.27305 * disconnect.width, y: disconnect.minY + 0.35524 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.22872 * disconnect.width, y: disconnect.minY + 0.38544 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.04610 * disconnect.width, y: disconnect.minY + 0.44227 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.13830 * disconnect.width, y: disconnect.minY + 0.42629 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.09220 * disconnect.width, y: disconnect.minY + 0.43694 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.04610 * disconnect.width, y: disconnect.minY + 0.55950 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.18262 * disconnect.width, y: disconnect.minY + 0.59503 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.09220 * disconnect.width, y: disconnect.minY + 0.56483 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.14007 * disconnect.width, y: disconnect.minY + 0.57549 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.31738 * disconnect.width, y: disconnect.minY + 0.68739 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.23227 * disconnect.width, y: disconnect.minY + 0.61634 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.27837 * disconnect.width, y: disconnect.minY + 0.64654 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.31915 * disconnect.width, y: disconnect.minY + 0.68917 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.31738 * disconnect.width, y: disconnect.minY + 0.68739 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.31738 * disconnect.width, y: disconnect.minY + 0.68739 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.40780 * disconnect.width, y: disconnect.minY + 0.81883 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.35638 * disconnect.width, y: disconnect.minY + 0.72647 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.38652 * disconnect.width, y: disconnect.minY + 0.77087 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.44326 * disconnect.width, y: disconnect.minY + 0.95382 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.42730 * disconnect.width, y: disconnect.minY + 0.86146 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.43794 * disconnect.width, y: disconnect.minY + 0.90764 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.56028 * disconnect.width, y: disconnect.minY + 0.95382 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.59574 * disconnect.width, y: disconnect.minY + 0.81705 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.56560 * disconnect.width, y: disconnect.minY + 0.90764 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.57624 * disconnect.width, y: disconnect.minY + 0.85968 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.68794 * disconnect.width, y: disconnect.minY + 0.68206 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.61702 * disconnect.width, y: disconnect.minY + 0.76732 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.64716 * disconnect.width, y: disconnect.minY + 0.72114 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.81915 * disconnect.width, y: disconnect.minY + 0.59147 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.72695 * disconnect.width, y: disconnect.minY + 0.64298 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.77128 * disconnect.width, y: disconnect.minY + 0.61279 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.95390 * disconnect.width, y: disconnect.minY + 0.55595 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.86170 * disconnect.width, y: disconnect.minY + 0.57194 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.90780 * disconnect.width, y: disconnect.minY + 0.56128 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.95390 * disconnect.width, y: disconnect.minY + 0.43872 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.81738 * disconnect.width, y: disconnect.minY + 0.40320 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.90780 * disconnect.width, y: disconnect.minY + 0.43339 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.85993 * disconnect.width, y: disconnect.minY + 0.42274 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.68262 * disconnect.width, y: disconnect.minY + 0.31083 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.76773 * disconnect.width, y: disconnect.minY + 0.38188 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.72163 * disconnect.width, y: disconnect.minY + 0.35169 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.59220 * disconnect.width, y: disconnect.minY + 0.17940 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.64362 * disconnect.width, y: disconnect.minY + 0.27176 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.61348 * disconnect.width, y: disconnect.minY + 0.22735 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.55674 * disconnect.width, y: disconnect.minY + 0.04440 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.57270 * disconnect.width, y: disconnect.minY + 0.13677 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.56206 * disconnect.width, y: disconnect.minY + 0.09059 * disconnect.height))
        bezier8Path.close()
        bezier8Path.move(to: CGPoint(x: disconnect.minX + 0.41844 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.57801 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.57801 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.59929 * disconnect.width, y: disconnect.minY + 0.02131 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.58865 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.59929 * disconnect.width, y: disconnect.minY + 0.00888 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.63298 * disconnect.width, y: disconnect.minY + 0.16163 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.60284 * disconnect.width, y: disconnect.minY + 0.06927 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.61348 * disconnect.width, y: disconnect.minY + 0.11723 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.71454 * disconnect.width, y: disconnect.minY + 0.27886 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.65248 * disconnect.width, y: disconnect.minY + 0.20426 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.67908 * disconnect.width, y: disconnect.minY + 0.24334 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.83511 * disconnect.width, y: disconnect.minY + 0.36234 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.75000 * disconnect.width, y: disconnect.minY + 0.31439 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.79078 * disconnect.width, y: disconnect.minY + 0.34281 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.97518 * disconnect.width, y: disconnect.minY + 0.39432 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.87943 * disconnect.width, y: disconnect.minY + 0.38188 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.92730 * disconnect.width, y: disconnect.minY + 0.39254 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.97695 * disconnect.width, y: disconnect.minY + 0.39432 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.97695 * disconnect.width, y: disconnect.minY + 0.39432 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.97695 * disconnect.width, y: disconnect.minY + 0.39432 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 1.00000 * disconnect.width, y: disconnect.minY + 0.41741 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.98936 * disconnect.width, y: disconnect.minY + 0.39432 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 1.00000 * disconnect.width, y: disconnect.minY + 0.40497 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 1.00000 * disconnect.width, y: disconnect.minY + 0.57726 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.99823 * disconnect.width, y: disconnect.minY + 0.57726 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.97695 * disconnect.width, y: disconnect.minY + 0.59858 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 1.00000 * disconnect.width, y: disconnect.minY + 0.58792 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.98936 * disconnect.width, y: disconnect.minY + 0.59858 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.83688 * disconnect.width, y: disconnect.minY + 0.63233 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.92908 * disconnect.width, y: disconnect.minY + 0.60213 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.88298 * disconnect.width, y: disconnect.minY + 0.61279 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.71986 * disconnect.width, y: disconnect.minY + 0.71403 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.79433 * disconnect.width, y: disconnect.minY + 0.65187 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.75532 * disconnect.width, y: disconnect.minY + 0.67851 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.63652 * disconnect.width, y: disconnect.minY + 0.83481 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.68440 * disconnect.width, y: disconnect.minY + 0.74956 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.65603 * disconnect.width, y: disconnect.minY + 0.79041 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.60461 * disconnect.width, y: disconnect.minY + 0.97513 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.61702 * disconnect.width, y: disconnect.minY + 0.87922 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.60638 * disconnect.width, y: disconnect.minY + 0.92718 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.60461 * disconnect.width, y: disconnect.minY + 0.97691 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.60461 * disconnect.width, y: disconnect.minY + 0.97691 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.60461 * disconnect.width, y: disconnect.minY + 0.97691 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.58156 * disconnect.width, y: disconnect.minY + 1.00000 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.60461 * disconnect.width, y: disconnect.minY + 0.98934 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.59397 * disconnect.width, y: disconnect.minY + 1.00000 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.42199 * disconnect.width, y: disconnect.minY + 1.00000 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.42199 * disconnect.width, y: disconnect.minY + 0.99822 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.40071 * disconnect.width, y: disconnect.minY + 0.97691 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.41135 * disconnect.width, y: disconnect.minY + 0.99822 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.40071 * disconnect.width, y: disconnect.minY + 0.98934 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.36702 * disconnect.width, y: disconnect.minY + 0.83659 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.39716 * disconnect.width, y: disconnect.minY + 0.92895 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.38652 * disconnect.width, y: disconnect.minY + 0.88277 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.28723 * disconnect.width, y: disconnect.minY + 0.71936 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.34752 * disconnect.width, y: disconnect.minY + 0.79396 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.32092 * disconnect.width, y: disconnect.minY + 0.75488 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.28546 * disconnect.width, y: disconnect.minY + 0.71936 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.28546 * disconnect.width, y: disconnect.minY + 0.71936 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.28546 * disconnect.width, y: disconnect.minY + 0.71936 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.16489 * disconnect.width, y: disconnect.minY + 0.63588 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.25000 * disconnect.width, y: disconnect.minY + 0.68384 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.20922 * disconnect.width, y: disconnect.minY + 0.65542 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.02482 * disconnect.width, y: disconnect.minY + 0.60391 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.12057 * disconnect.width, y: disconnect.minY + 0.61634 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.07270 * disconnect.width, y: disconnect.minY + 0.60568 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.02305 * disconnect.width, y: disconnect.minY + 0.60391 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.02305 * disconnect.width, y: disconnect.minY + 0.60391 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.02305 * disconnect.width, y: disconnect.minY + 0.60391 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.00000 * disconnect.width, y: disconnect.minY + 0.58082 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.01064 * disconnect.width, y: disconnect.minY + 0.60391 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.00000 * disconnect.width, y: disconnect.minY + 0.59325 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.00000 * disconnect.width, y: disconnect.minY + 0.42096 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.00177 * disconnect.width, y: disconnect.minY + 0.42096 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.02305 * disconnect.width, y: disconnect.minY + 0.39964 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.00177 * disconnect.width, y: disconnect.minY + 0.41030 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.01064 * disconnect.width, y: disconnect.minY + 0.39964 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.16312 * disconnect.width, y: disconnect.minY + 0.36590 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.07092 * disconnect.width, y: disconnect.minY + 0.39609 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.11879 * disconnect.width, y: disconnect.minY + 0.38544 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.28014 * disconnect.width, y: disconnect.minY + 0.28419 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.20567 * disconnect.width, y: disconnect.minY + 0.34636 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.24468 * disconnect.width, y: disconnect.minY + 0.31972 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.36348 * disconnect.width, y: disconnect.minY + 0.16341 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.31560 * disconnect.width, y: disconnect.minY + 0.24867 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.34397 * disconnect.width, y: disconnect.minY + 0.20782 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.39539 * disconnect.width, y: disconnect.minY + 0.02309 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.38298 * disconnect.width, y: disconnect.minY + 0.11901 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.39362 * disconnect.width, y: disconnect.minY + 0.07105 * disconnect.height))
        bezier8Path.addLine(to: CGPoint(x: disconnect.minX + 0.39539 * disconnect.width, y: disconnect.minY + 0.02131 * disconnect.height))
        bezier8Path.addCurve(to: CGPoint(x: disconnect.minX + 0.41844 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.39539 * disconnect.width, y: disconnect.minY + 0.00888 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.40603 * disconnect.width, y: disconnect.minY + 0.00000 * disconnect.height))
        bezier8Path.close()
        bezier8Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier8Path.fill()


        //// Bezier 9 Drawing
        let bezier9Path = UIBezierPath()
        bezier9Path.move(to: CGPoint(x: disconnect.minX + 0.69681 * disconnect.width, y: disconnect.minY + 0.47602 * disconnect.height))
        bezier9Path.addCurve(to: CGPoint(x: disconnect.minX + 0.71986 * disconnect.width, y: disconnect.minY + 0.49911 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.71099 * disconnect.width, y: disconnect.minY + 0.47602 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.71986 * disconnect.width, y: disconnect.minY + 0.48668 * disconnect.height))
        bezier9Path.addCurve(to: CGPoint(x: disconnect.minX + 0.69681 * disconnect.width, y: disconnect.minY + 0.52220 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.71986 * disconnect.width, y: disconnect.minY + 0.51155 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.71099 * disconnect.width, y: disconnect.minY + 0.52220 * disconnect.height))
        bezier9Path.addLine(to: CGPoint(x: disconnect.minX + 0.29787 * disconnect.width, y: disconnect.minY + 0.52220 * disconnect.height))
        bezier9Path.addCurve(to: CGPoint(x: disconnect.minX + 0.27482 * disconnect.width, y: disconnect.minY + 0.49911 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.28546 * disconnect.width, y: disconnect.minY + 0.52220 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.27482 * disconnect.width, y: disconnect.minY + 0.51155 * disconnect.height))
        bezier9Path.addCurve(to: CGPoint(x: disconnect.minX + 0.29787 * disconnect.width, y: disconnect.minY + 0.47602 * disconnect.height), controlPoint1: CGPoint(x: disconnect.minX + 0.27482 * disconnect.width, y: disconnect.minY + 0.48668 * disconnect.height), controlPoint2: CGPoint(x: disconnect.minX + 0.28546 * disconnect.width, y: disconnect.minY + 0.47602 * disconnect.height))
        bezier9Path.addLine(to: CGPoint(x: disconnect.minX + 0.69681 * disconnect.width, y: disconnect.minY + 0.47602 * disconnect.height))
        bezier9Path.close()
        bezier9Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier9Path.fill()
    }

    public dynamic class func drawAddBle(frame: CGRect = CGRect(x: 0, y: 11, width: 17, height: 19)) {
        //// Color Declarations
        let fillColor = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let add_ble: CGRect = CGRect(x: frame.minX + 0.31, y: frame.minY + 1.36, width: frame.width - 0.68, height: frame.height - 2.72)


        //// add_ble
        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: add_ble.minX + 0.55674 * add_ble.width, y: add_ble.minY + 0.04440 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.43972 * add_ble.width, y: add_ble.minY + 0.04440 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.40426 * add_ble.width, y: add_ble.minY + 0.18117 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.43440 * add_ble.width, y: add_ble.minY + 0.09059 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.42376 * add_ble.width, y: add_ble.minY + 0.13854 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.31206 * add_ble.width, y: add_ble.minY + 0.31616 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.38298 * add_ble.width, y: add_ble.minY + 0.23091 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.35284 * add_ble.width, y: add_ble.minY + 0.27709 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.18085 * add_ble.width, y: add_ble.minY + 0.40675 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.27305 * add_ble.width, y: add_ble.minY + 0.35524 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.22872 * add_ble.width, y: add_ble.minY + 0.38544 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.04610 * add_ble.width, y: add_ble.minY + 0.44227 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.13830 * add_ble.width, y: add_ble.minY + 0.42629 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.09220 * add_ble.width, y: add_ble.minY + 0.43694 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.04610 * add_ble.width, y: add_ble.minY + 0.55950 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.18262 * add_ble.width, y: add_ble.minY + 0.59503 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.09220 * add_ble.width, y: add_ble.minY + 0.56483 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.14007 * add_ble.width, y: add_ble.minY + 0.57549 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.31738 * add_ble.width, y: add_ble.minY + 0.68739 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.23227 * add_ble.width, y: add_ble.minY + 0.61634 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.27660 * add_ble.width, y: add_ble.minY + 0.64654 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.31738 * add_ble.width, y: add_ble.minY + 0.68739 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.31738 * add_ble.width, y: add_ble.minY + 0.68739 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.40780 * add_ble.width, y: add_ble.minY + 0.81883 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.35638 * add_ble.width, y: add_ble.minY + 0.72647 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.38652 * add_ble.width, y: add_ble.minY + 0.77087 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.44326 * add_ble.width, y: add_ble.minY + 0.95382 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.42730 * add_ble.width, y: add_ble.minY + 0.86146 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.43794 * add_ble.width, y: add_ble.minY + 0.90764 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.56028 * add_ble.width, y: add_ble.minY + 0.95382 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.59574 * add_ble.width, y: add_ble.minY + 0.81705 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.56560 * add_ble.width, y: add_ble.minY + 0.90764 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.57624 * add_ble.width, y: add_ble.minY + 0.85968 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.68794 * add_ble.width, y: add_ble.minY + 0.68206 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.61702 * add_ble.width, y: add_ble.minY + 0.76732 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.64716 * add_ble.width, y: add_ble.minY + 0.72114 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.81915 * add_ble.width, y: add_ble.minY + 0.59147 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.72695 * add_ble.width, y: add_ble.minY + 0.64298 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.77128 * add_ble.width, y: add_ble.minY + 0.61279 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.95390 * add_ble.width, y: add_ble.minY + 0.55595 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.86170 * add_ble.width, y: add_ble.minY + 0.57194 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.90780 * add_ble.width, y: add_ble.minY + 0.56128 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.95390 * add_ble.width, y: add_ble.minY + 0.43872 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.81738 * add_ble.width, y: add_ble.minY + 0.40320 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.90780 * add_ble.width, y: add_ble.minY + 0.43339 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.85993 * add_ble.width, y: add_ble.minY + 0.42274 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.68262 * add_ble.width, y: add_ble.minY + 0.31083 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.76773 * add_ble.width, y: add_ble.minY + 0.38188 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.72340 * add_ble.width, y: add_ble.minY + 0.35169 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.68262 * add_ble.width, y: add_ble.minY + 0.31083 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.68262 * add_ble.width, y: add_ble.minY + 0.31083 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.59220 * add_ble.width, y: add_ble.minY + 0.17940 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.64362 * add_ble.width, y: add_ble.minY + 0.27176 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.61348 * add_ble.width, y: add_ble.minY + 0.22735 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.55674 * add_ble.width, y: add_ble.minY + 0.04440 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.57270 * add_ble.width, y: add_ble.minY + 0.13677 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.56206 * add_ble.width, y: add_ble.minY + 0.09059 * add_ble.height))
        bezier5Path.close()
        bezier5Path.move(to: CGPoint(x: add_ble.minX + 0.41844 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.57801 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.57801 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.59929 * add_ble.width, y: add_ble.minY + 0.02131 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.58865 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.59929 * add_ble.width, y: add_ble.minY + 0.00888 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.63298 * add_ble.width, y: add_ble.minY + 0.16163 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.60284 * add_ble.width, y: add_ble.minY + 0.06927 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.61348 * add_ble.width, y: add_ble.minY + 0.11723 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.71454 * add_ble.width, y: add_ble.minY + 0.27886 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.65248 * add_ble.width, y: add_ble.minY + 0.20426 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.67908 * add_ble.width, y: add_ble.minY + 0.24334 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.71454 * add_ble.width, y: add_ble.minY + 0.27886 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.83511 * add_ble.width, y: add_ble.minY + 0.36234 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.75000 * add_ble.width, y: add_ble.minY + 0.31439 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.79078 * add_ble.width, y: add_ble.minY + 0.34281 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.97518 * add_ble.width, y: add_ble.minY + 0.39432 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.87943 * add_ble.width, y: add_ble.minY + 0.38188 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.92730 * add_ble.width, y: add_ble.minY + 0.39254 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.97695 * add_ble.width, y: add_ble.minY + 0.39432 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.97695 * add_ble.width, y: add_ble.minY + 0.39432 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.97695 * add_ble.width, y: add_ble.minY + 0.39432 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 1.00000 * add_ble.width, y: add_ble.minY + 0.41741 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.98936 * add_ble.width, y: add_ble.minY + 0.39432 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 1.00000 * add_ble.width, y: add_ble.minY + 0.40497 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 1.00000 * add_ble.width, y: add_ble.minY + 0.57726 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.99823 * add_ble.width, y: add_ble.minY + 0.57726 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.97695 * add_ble.width, y: add_ble.minY + 0.59858 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.99823 * add_ble.width, y: add_ble.minY + 0.58792 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.98936 * add_ble.width, y: add_ble.minY + 0.59858 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.83688 * add_ble.width, y: add_ble.minY + 0.63233 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.92908 * add_ble.width, y: add_ble.minY + 0.60213 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.88298 * add_ble.width, y: add_ble.minY + 0.61279 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.71986 * add_ble.width, y: add_ble.minY + 0.71403 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.79433 * add_ble.width, y: add_ble.minY + 0.65187 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.75532 * add_ble.width, y: add_ble.minY + 0.67851 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.63652 * add_ble.width, y: add_ble.minY + 0.83481 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.68440 * add_ble.width, y: add_ble.minY + 0.74956 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.65603 * add_ble.width, y: add_ble.minY + 0.79041 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.60461 * add_ble.width, y: add_ble.minY + 0.97513 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.61702 * add_ble.width, y: add_ble.minY + 0.87922 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.60638 * add_ble.width, y: add_ble.minY + 0.92718 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.60461 * add_ble.width, y: add_ble.minY + 0.97691 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.60461 * add_ble.width, y: add_ble.minY + 0.97691 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.60461 * add_ble.width, y: add_ble.minY + 0.97691 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.58156 * add_ble.width, y: add_ble.minY + 1.00000 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.60461 * add_ble.width, y: add_ble.minY + 0.98934 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.59397 * add_ble.width, y: add_ble.minY + 1.00000 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.42199 * add_ble.width, y: add_ble.minY + 1.00000 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.42199 * add_ble.width, y: add_ble.minY + 0.99822 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.40071 * add_ble.width, y: add_ble.minY + 0.97691 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.41135 * add_ble.width, y: add_ble.minY + 0.99822 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.40071 * add_ble.width, y: add_ble.minY + 0.98934 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.36702 * add_ble.width, y: add_ble.minY + 0.83659 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.39716 * add_ble.width, y: add_ble.minY + 0.92895 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.38652 * add_ble.width, y: add_ble.minY + 0.88099 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.28546 * add_ble.width, y: add_ble.minY + 0.71936 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.34752 * add_ble.width, y: add_ble.minY + 0.79396 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.32092 * add_ble.width, y: add_ble.minY + 0.75488 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.28546 * add_ble.width, y: add_ble.minY + 0.71936 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.16489 * add_ble.width, y: add_ble.minY + 0.63588 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.25000 * add_ble.width, y: add_ble.minY + 0.68384 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.20922 * add_ble.width, y: add_ble.minY + 0.65542 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.02482 * add_ble.width, y: add_ble.minY + 0.60391 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.12057 * add_ble.width, y: add_ble.minY + 0.61634 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.07270 * add_ble.width, y: add_ble.minY + 0.60568 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.02305 * add_ble.width, y: add_ble.minY + 0.60391 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.02305 * add_ble.width, y: add_ble.minY + 0.60391 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.02305 * add_ble.width, y: add_ble.minY + 0.60391 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.00000 * add_ble.width, y: add_ble.minY + 0.58082 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.01064 * add_ble.width, y: add_ble.minY + 0.60391 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.00000 * add_ble.width, y: add_ble.minY + 0.59325 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.00000 * add_ble.width, y: add_ble.minY + 0.42096 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.00177 * add_ble.width, y: add_ble.minY + 0.42096 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.02305 * add_ble.width, y: add_ble.minY + 0.39964 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.00177 * add_ble.width, y: add_ble.minY + 0.41030 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.01064 * add_ble.width, y: add_ble.minY + 0.39964 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.16312 * add_ble.width, y: add_ble.minY + 0.36590 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.07092 * add_ble.width, y: add_ble.minY + 0.39609 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.11879 * add_ble.width, y: add_ble.minY + 0.38544 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.28014 * add_ble.width, y: add_ble.minY + 0.28419 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.20567 * add_ble.width, y: add_ble.minY + 0.34636 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.24468 * add_ble.width, y: add_ble.minY + 0.31972 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.36348 * add_ble.width, y: add_ble.minY + 0.16341 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.31560 * add_ble.width, y: add_ble.minY + 0.24867 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.34397 * add_ble.width, y: add_ble.minY + 0.20782 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.39539 * add_ble.width, y: add_ble.minY + 0.02309 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.38298 * add_ble.width, y: add_ble.minY + 0.11901 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.39362 * add_ble.width, y: add_ble.minY + 0.07105 * add_ble.height))
        bezier5Path.addLine(to: CGPoint(x: add_ble.minX + 0.39539 * add_ble.width, y: add_ble.minY + 0.02131 * add_ble.height))
        bezier5Path.addCurve(to: CGPoint(x: add_ble.minX + 0.41844 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.39539 * add_ble.width, y: add_ble.minY + 0.00888 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.40603 * add_ble.width, y: add_ble.minY + 0.00000 * add_ble.height))
        bezier5Path.close()
        bezier5Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier5Path.fill()


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: add_ble.minX + 0.47518 * add_ble.width, y: add_ble.minY + 0.29840 * add_ble.height))
        bezier6Path.addCurve(to: CGPoint(x: add_ble.minX + 0.49823 * add_ble.width, y: add_ble.minY + 0.27531 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.47518 * add_ble.width, y: add_ble.minY + 0.28597 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.48582 * add_ble.width, y: add_ble.minY + 0.27531 * add_ble.height))
        bezier6Path.addCurve(to: CGPoint(x: add_ble.minX + 0.51950 * add_ble.width, y: add_ble.minY + 0.29840 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.51064 * add_ble.width, y: add_ble.minY + 0.27531 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.51950 * add_ble.width, y: add_ble.minY + 0.28597 * add_ble.height))
        bezier6Path.addLine(to: CGPoint(x: add_ble.minX + 0.51950 * add_ble.width, y: add_ble.minY + 0.69982 * add_ble.height))
        bezier6Path.addCurve(to: CGPoint(x: add_ble.minX + 0.49823 * add_ble.width, y: add_ble.minY + 0.72291 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.51950 * add_ble.width, y: add_ble.minY + 0.71226 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.51064 * add_ble.width, y: add_ble.minY + 0.72291 * add_ble.height))
        bezier6Path.addCurve(to: CGPoint(x: add_ble.minX + 0.47518 * add_ble.width, y: add_ble.minY + 0.69982 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.48582 * add_ble.width, y: add_ble.minY + 0.72291 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.47518 * add_ble.width, y: add_ble.minY + 0.71226 * add_ble.height))
        bezier6Path.addLine(to: CGPoint(x: add_ble.minX + 0.47518 * add_ble.width, y: add_ble.minY + 0.29840 * add_ble.height))
        bezier6Path.close()
        bezier6Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier6Path.fill()


        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: add_ble.minX + 0.69681 * add_ble.width, y: add_ble.minY + 0.47602 * add_ble.height))
        bezier7Path.addCurve(to: CGPoint(x: add_ble.minX + 0.71986 * add_ble.width, y: add_ble.minY + 0.49911 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.70922 * add_ble.width, y: add_ble.minY + 0.47602 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.71986 * add_ble.width, y: add_ble.minY + 0.48668 * add_ble.height))
        bezier7Path.addCurve(to: CGPoint(x: add_ble.minX + 0.69681 * add_ble.width, y: add_ble.minY + 0.52220 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.71986 * add_ble.width, y: add_ble.minY + 0.51155 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.70922 * add_ble.width, y: add_ble.minY + 0.52220 * add_ble.height))
        bezier7Path.addLine(to: CGPoint(x: add_ble.minX + 0.29787 * add_ble.width, y: add_ble.minY + 0.52220 * add_ble.height))
        bezier7Path.addCurve(to: CGPoint(x: add_ble.minX + 0.27482 * add_ble.width, y: add_ble.minY + 0.49911 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.28546 * add_ble.width, y: add_ble.minY + 0.52220 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.27482 * add_ble.width, y: add_ble.minY + 0.51155 * add_ble.height))
        bezier7Path.addCurve(to: CGPoint(x: add_ble.minX + 0.29787 * add_ble.width, y: add_ble.minY + 0.47602 * add_ble.height), controlPoint1: CGPoint(x: add_ble.minX + 0.27482 * add_ble.width, y: add_ble.minY + 0.48668 * add_ble.height), controlPoint2: CGPoint(x: add_ble.minX + 0.28546 * add_ble.width, y: add_ble.minY + 0.47602 * add_ble.height))
        bezier7Path.addLine(to: CGPoint(x: add_ble.minX + 0.69681 * add_ble.width, y: add_ble.minY + 0.47602 * add_ble.height))
        bezier7Path.close()
        bezier7Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier7Path.fill()
    }


    public dynamic class func drawRefresh(frame: CGRect = CGRect(x: 0, y: 11, width: 17, height: 19)) {
        //// Color Declarations
        let fillColor = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let refresh: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width - 0.42, height: frame.height - 0.46)


        //// refresh
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: refresh.minX + 0.64134 * refresh.width, y: refresh.minY + 0.82236 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.67781 * refresh.width, y: refresh.minY + 0.83867 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.65729 * refresh.width, y: refresh.minY + 0.81624 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.67325 * refresh.width, y: refresh.minY + 0.82440 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.65957 * refresh.width, y: refresh.minY + 0.87129 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.68465 * refresh.width, y: refresh.minY + 0.85090 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.67553 * refresh.width, y: refresh.minY + 0.86517 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.40198 * refresh.width, y: refresh.minY + 0.88556 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.57523 * refresh.width, y: refresh.minY + 0.89576 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.48632 * refresh.width, y: refresh.minY + 0.89983 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.17174 * refresh.width, y: refresh.minY + 0.78362 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.31763 * refresh.width, y: refresh.minY + 0.87129 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.23785 * refresh.width, y: refresh.minY + 0.83663 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.17174 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16946 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16946 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16946 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16946 * refresh.width, y: refresh.minY + 0.78158 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.00077 * refresh.width, y: refresh.minY + 0.47575 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.06688 * refresh.width, y: refresh.minY + 0.70002 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.00988 * refresh.width, y: refresh.minY + 0.58992 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15360 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + -0.00607 * refresh.width, y: refresh.minY + 0.36157 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.03268 * refresh.width, y: refresh.minY + 0.24535 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15360 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15156 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15156 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15156 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.12614 * refresh.width, y: refresh.minY + 0.15156 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.12614 * refresh.width, y: refresh.minY + 0.15156 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.12614 * refresh.width, y: refresh.minY + 0.15156 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.46809 * refresh.width, y: refresh.minY + 0.00069 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.21733 * refresh.width, y: refresh.minY + 0.05981 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.34043 * refresh.width, y: refresh.minY + 0.00884 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.83054 * refresh.width, y: refresh.minY + 0.11079 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.59574 * refresh.width, y: refresh.minY + -0.00543 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.72568 * refresh.width, y: refresh.minY + 0.02923 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.99923 * refresh.width, y: refresh.minY + 0.41866 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.93312 * refresh.width, y: refresh.minY + 0.19234 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.99012 * refresh.width, y: refresh.minY + 0.30448 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.87613 * refresh.width, y: refresh.minY + 0.74284 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 1.00607 * refresh.width, y: refresh.minY + 0.53283 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.96732 * refresh.width, y: refresh.minY + 0.64905 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.83510 * refresh.width, y: refresh.minY + 0.74488 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.86474 * refresh.width, y: refresh.minY + 0.75303 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.84650 * refresh.width, y: refresh.minY + 0.75303 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.83282 * refresh.width, y: refresh.minY + 0.70818 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.82370 * refresh.width, y: refresh.minY + 0.73468 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.82142 * refresh.width, y: refresh.minY + 0.71837 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.93996 * refresh.width, y: refresh.minY + 0.42070 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.91261 * refresh.width, y: refresh.minY + 0.62662 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.94908 * refresh.width, y: refresh.minY + 0.52264 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.79179 * refresh.width, y: refresh.minY + 0.14952 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.93312 * refresh.width, y: refresh.minY + 0.32079 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.88297 * refresh.width, y: refresh.minY + 0.22292 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.47037 * refresh.width, y: refresh.minY + 0.05370 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.70061 * refresh.width, y: refresh.minY + 0.07816 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.58435 * refresh.width, y: refresh.minY + 0.04554 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.16946 * refresh.width, y: refresh.minY + 0.18622 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.35866 * refresh.width, y: refresh.minY + 0.05981 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.24924 * refresh.width, y: refresh.minY + 0.10467 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16718 * refresh.width, y: refresh.minY + 0.18622 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16718 * refresh.width, y: refresh.minY + 0.18622 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.16718 * refresh.width, y: refresh.minY + 0.18622 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.06004 * refresh.width, y: refresh.minY + 0.47371 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.08739 * refresh.width, y: refresh.minY + 0.26982 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.05092 * refresh.width, y: refresh.minY + 0.37176 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.20821 * refresh.width, y: refresh.minY + 0.74284 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.06688 * refresh.width, y: refresh.minY + 0.57361 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.11703 * refresh.width, y: refresh.minY + 0.67148 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.20821 * refresh.width, y: refresh.minY + 0.74488 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.20821 * refresh.width, y: refresh.minY + 0.74488 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.20821 * refresh.width, y: refresh.minY + 0.74488 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.41338 * refresh.width, y: refresh.minY + 0.83459 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.26748 * refresh.width, y: refresh.minY + 0.79177 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.33815 * refresh.width, y: refresh.minY + 0.82236 * refresh.height))
        bezier3Path.addCurve(to: CGPoint(x: refresh.minX + 0.64134 * refresh.width, y: refresh.minY + 0.82236 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.48860 * refresh.width, y: refresh.minY + 0.84886 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.56839 * refresh.width, y: refresh.minY + 0.84478 * refresh.height))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: refresh.minX + 0.17174 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.17174 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.17174 * refresh.width, y: refresh.minY + 0.78362 * refresh.height))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15360 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15360 * refresh.height))
        bezier3Path.addLine(to: CGPoint(x: refresh.minX + 0.12387 * refresh.width, y: refresh.minY + 0.15360 * refresh.height))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier3Path.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: refresh.minX + 0.67097 * refresh.width, y: refresh.minY + 0.82440 * refresh.height))
        bezierPath.addCurve(to: CGPoint(x: refresh.minX + 0.67781 * refresh.width, y: refresh.minY + 0.85906 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.68465 * refresh.width, y: refresh.minY + 0.83255 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.68693 * refresh.width, y: refresh.minY + 0.84886 * refresh.height))
        bezierPath.addCurve(to: CGPoint(x: refresh.minX + 0.63906 * refresh.width, y: refresh.minY + 0.86517 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.66869 * refresh.width, y: refresh.minY + 0.87129 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.65045 * refresh.width, y: refresh.minY + 0.87333 * refresh.height))
        bezierPath.addLine(to: CGPoint(x: refresh.minX + 0.49316 * refresh.width, y: refresh.minY + 0.77546 * refresh.height))
        bezierPath.addCurve(to: CGPoint(x: refresh.minX + 0.48632 * refresh.width, y: refresh.minY + 0.73876 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.48176 * refresh.width, y: refresh.minY + 0.76731 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.47720 * refresh.width, y: refresh.minY + 0.75100 * refresh.height))
        bezierPath.addCurve(to: CGPoint(x: refresh.minX + 0.52736 * refresh.width, y: refresh.minY + 0.73265 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.49544 * refresh.width, y: refresh.minY + 0.72857 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.51368 * refresh.width, y: refresh.minY + 0.72449 * refresh.height))
        bezierPath.addLine(to: CGPoint(x: refresh.minX + 0.67097 * refresh.width, y: refresh.minY + 0.82440 * refresh.height))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        fillColor.setFill()
        bezierPath.fill()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: refresh.minX + 0.35183 * refresh.width, y: refresh.minY + 0.60420 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.35638 * refresh.width, y: refresh.minY + 0.64090 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.36550 * refresh.width, y: refresh.minY + 0.61235 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.36550 * refresh.width, y: refresh.minY + 0.62866 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.31535 * refresh.width, y: refresh.minY + 0.64293 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.34499 * refresh.width, y: refresh.minY + 0.65109 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.32675 * refresh.width, y: refresh.minY + 0.65313 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.29712 * refresh.width, y: refresh.minY + 0.62866 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.30851 * refresh.width, y: refresh.minY + 0.63886 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.30167 * refresh.width, y: refresh.minY + 0.63274 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.28116 * refresh.width, y: refresh.minY + 0.61439 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.29028 * refresh.width, y: refresh.minY + 0.62458 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.28572 * refresh.width, y: refresh.minY + 0.61847 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.27888 * refresh.width, y: refresh.minY + 0.61031 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.27888 * refresh.width, y: refresh.minY + 0.61235 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.27888 * refresh.width, y: refresh.minY + 0.61235 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.21277 * refresh.width, y: refresh.minY + 0.42477 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.22873 * refresh.width, y: refresh.minY + 0.55730 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.20593 * refresh.width, y: refresh.minY + 0.49002 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.31079 * refresh.width, y: refresh.minY + 0.24943 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.21733 * refresh.width, y: refresh.minY + 0.35953 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.25152 * refresh.width, y: refresh.minY + 0.29632 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.31535 * refresh.width, y: refresh.minY + 0.24739 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.31307 * refresh.width, y: refresh.minY + 0.24943 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.31307 * refresh.width, y: refresh.minY + 0.24943 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.52280 * refresh.width, y: refresh.minY + 0.18826 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.37462 * refresh.width, y: refresh.minY + 0.20254 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.44985 * refresh.width, y: refresh.minY + 0.18419 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.71884 * refresh.width, y: refresh.minY + 0.27797 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.59574 * refresh.width, y: refresh.minY + 0.19438 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.66641 * refresh.width, y: refresh.minY + 0.22496 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.78723 * refresh.width, y: refresh.minY + 0.46555 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.77127 * refresh.width, y: refresh.minY + 0.33302 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.79179 * refresh.width, y: refresh.minY + 0.40031 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.68465 * refresh.width, y: refresh.minY + 0.64090 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.78039 * refresh.width, y: refresh.minY + 0.53283 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.74620 * refresh.width, y: refresh.minY + 0.59604 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.64589 * refresh.width, y: refresh.minY + 0.63886 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.67325 * refresh.width, y: refresh.minY + 0.65109 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.65501 * refresh.width, y: refresh.minY + 0.64905 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.64817 * refresh.width, y: refresh.minY + 0.60216 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.63450 * refresh.width, y: refresh.minY + 0.62866 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.63678 * refresh.width, y: refresh.minY + 0.61235 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.72796 * refresh.width, y: refresh.minY + 0.46147 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.69605 * refresh.width, y: refresh.minY + 0.56546 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.72340 * refresh.width, y: refresh.minY + 0.51448 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.67553 * refresh.width, y: refresh.minY + 0.31263 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.73252 * refresh.width, y: refresh.minY + 0.40846 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.71656 * refresh.width, y: refresh.minY + 0.35545 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.51824 * refresh.width, y: refresh.minY + 0.23924 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.63450 * refresh.width, y: refresh.minY + 0.26778 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.57751 * refresh.width, y: refresh.minY + 0.24331 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.34955 * refresh.width, y: refresh.minY + 0.28817 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.45897 * refresh.width, y: refresh.minY + 0.23516 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.39742 * refresh.width, y: refresh.minY + 0.25147 * refresh.height))
        bezier4Path.addLine(to: CGPoint(x: refresh.minX + 0.34955 * refresh.width, y: refresh.minY + 0.28817 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.26976 * refresh.width, y: refresh.minY + 0.42885 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.30167 * refresh.width, y: refresh.minY + 0.32487 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.27432 * refresh.width, y: refresh.minY + 0.37584 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.32447 * refresh.width, y: refresh.minY + 0.57769 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.26520 * refresh.width, y: refresh.minY + 0.48186 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.28344 * refresh.width, y: refresh.minY + 0.53487 * refresh.height))
        bezier4Path.addLine(to: CGPoint(x: refresh.minX + 0.32447 * refresh.width, y: refresh.minY + 0.57769 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.33815 * refresh.width, y: refresh.minY + 0.59196 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.32903 * refresh.width, y: refresh.minY + 0.58381 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.33359 * refresh.width, y: refresh.minY + 0.58788 * refresh.height))
        bezier4Path.addCurve(to: CGPoint(x: refresh.minX + 0.35183 * refresh.width, y: refresh.minY + 0.60420 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.34271 * refresh.width, y: refresh.minY + 0.59604 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.34727 * refresh.width, y: refresh.minY + 0.60012 * refresh.height))
        bezier4Path.close()
        bezier4Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier4Path.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: refresh.minX + 0.63222 * refresh.width, y: refresh.minY + 0.83051 * refresh.height))
        bezier2Path.addCurve(to: CGPoint(x: refresh.minX + 0.67097 * refresh.width, y: refresh.minY + 0.82440 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.64134 * refresh.width, y: refresh.minY + 0.81828 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.65729 * refresh.width, y: refresh.minY + 0.81624 * refresh.height))
        bezier2Path.addCurve(to: CGPoint(x: refresh.minX + 0.67781 * refresh.width, y: refresh.minY + 0.85906 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.68465 * refresh.width, y: refresh.minY + 0.83255 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.68693 * refresh.width, y: refresh.minY + 0.84886 * refresh.height))
        bezier2Path.addLine(to: CGPoint(x: refresh.minX + 0.57751 * refresh.width, y: refresh.minY + 0.98954 * refresh.height))
        bezier2Path.addCurve(to: CGPoint(x: refresh.minX + 0.53647 * refresh.width, y: refresh.minY + 0.99566 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.56839 * refresh.width, y: refresh.minY + 0.99974 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.55015 * refresh.width, y: refresh.minY + 1.00382 * refresh.height))
        bezier2Path.addCurve(to: CGPoint(x: refresh.minX + 0.52963 * refresh.width, y: refresh.minY + 0.95896 * refresh.height), controlPoint1: CGPoint(x: refresh.minX + 0.52508 * refresh.width, y: refresh.minY + 0.98751 * refresh.height), controlPoint2: CGPoint(x: refresh.minX + 0.52052 * refresh.width, y: refresh.minY + 0.97119 * refresh.height))
        bezier2Path.addLine(to: CGPoint(x: refresh.minX + 0.63222 * refresh.width, y: refresh.minY + 0.83051 * refresh.height))
        bezier2Path.close()
        bezier2Path.usesEvenOddFillRule = true
        fillColor.setFill()
        bezier2Path.fill()
    }

    public dynamic class func drawCenterView(frame: CGRect = CGRect(x: 0, y: 0, width: 29, height: 30)) {
        //// Color Declarations
        let fillColor2 = UIColor(red: 0.079, green: 0.079, blue: 0.079, alpha: 1.000)


        //// Subframes
        let uI_HALLA_appaiGroup: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: frame.height - 0.02)


        //// UI_HALLA_app.ai Group
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.00000 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.58597 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.29158 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.71350 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.10610 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.59032 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.21092 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.63281 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.41889 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 1.00000 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.37097 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.79288 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.41339 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.89562 * uI_HALLA_appaiGroup.height))
        bezier3Path.addLine(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.58594 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 1.00000 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.71348 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.70841 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.59030 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.89388 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.63279 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.78910 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 1.00000 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.58114 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.79287 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.62906 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.89561 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.58664 * uI_HALLA_appaiGroup.height))
        bezier3Path.addLine(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 1.00000 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.41407 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.70842 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.28653 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.89390 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.40971 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.78908 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.36722 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.58111 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.00000 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.62903 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.20715 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.58658 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.10438 * uI_HALLA_appaiGroup.height))
        bezier3Path.addLine(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.41406 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.00000 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.28652 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.29159 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.40970 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.10612 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.36721 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.21094 * uI_HALLA_appaiGroup.height))
        bezier3Path.addCurve(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.00000 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.41889 * uI_HALLA_appaiGroup.height), controlPoint1: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.20713 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.37097 * uI_HALLA_appaiGroup.height), controlPoint2: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.10439 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.41343 * uI_HALLA_appaiGroup.height))
        bezier3Path.addLine(to: CGPoint(x: uI_HALLA_appaiGroup.minX + 0.00000 * uI_HALLA_appaiGroup.width, y: uI_HALLA_appaiGroup.minY + 0.58597 * uI_HALLA_appaiGroup.height))
        bezier3Path.close()
        bezier3Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezier3Path.fill()
    }

}
