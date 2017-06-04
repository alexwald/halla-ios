
import C4

@IBDesignable
public class SwitchThumb: Circle {
    convenience public init() {
        self.init(center: Point(14, 14), radius: 14)
        lineWidth = 0
        setup()
    }

    func setup() {
        fillColor = Color(UIColor.hexStringToUIColor(hex: "FEC709"))
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
        self.fillColor = Color(UIColor.hexStringToUIColor(hex: "FEC709"))
        //        topBottomSwitch.thumbTintColor = UIColor.hexStringToUIColor(hex: "FEC709")

    }

    func off() {
        self.fillColor = Color(UIColor.hexStringToUIColor(hex: "FEC709"))
    }
}
