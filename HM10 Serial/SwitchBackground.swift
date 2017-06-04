

import C4
import UIKit

@IBDesignable
public class SwitchBackground: View {
    public override init() {
        super.init()
        self.frame = Rect(UISwitch().frame)
        applyMask()
        setup()
    }

    internal func applyMask() {
        let backgroundMask = Rectangle(frame: self.bounds)
        backgroundMask.lineWidth = 0
        backgroundMask.corner = Size(height/2, height/2)
        self.mask = backgroundMask

        self.backgroundColor = Color(UIColor.black)
    }

    func setup() {
    }

    func toggle(force: Bool) {
        ViewAnimation(duration: 0.25) {
            if force {
                self.on()
            } else {
                self.off()
            }
            }.animate()
    }

    func on() {
        self.backgroundColor = Color(UIColor.black)
    }

    func off() {
        self.backgroundColor = Color(UIColor.black)
    }
}
