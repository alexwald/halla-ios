

import C4
import UIKit

@IBDesignable
class Switch: UISwitch {
    var thumb: SwitchThumb?
    var background: SwitchBackground?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        thumb = SwitchThumb()
        background = SwitchBackground()
        replaceViews()
        setup()
        toggle()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        thumb = SwitchThumb()
        background = SwitchBackground()
        replaceViews()
        setup()
        toggle()
    }

    init(thumb aThumb: SwitchThumb? = SwitchThumb(), background aBackground: SwitchBackground? = SwitchBackground()) {
        super.init(frame: CGRect())

        thumb = aThumb
        background = aBackground
        replaceViews()
        setup()
    }

    internal func replaceViews() {
        let subviews = self.subviews
        let mainView = subviews[0]
        let imageView = subviews[0].subviews[3] as! UIImageView // swiftlint:disable:this force_cast
        thumb?.center = Point(Double(imageView.bounds.size.width-28.66666), Double(imageView.bounds.midY-0.66666))
        imageView.addSubview(thumb!.view)


        let centerViewTransform = (CGAffineTransform(scaleX: 0.8, y: 0.8))

        thumb!.view.transform = centerViewTransform


        imageView.image = UIImage()

        self.addTarget(self, action: #selector(Switch.toggle), for: UIControlEvents.valueChanged)

        mainView.add(background)
        mainView.bringToFront(imageView)

//        imageView.transform = centerViewTransform

        let sv0 = mainView.subviews[0]
        let sv1 = mainView.subviews[1]
        let sv2 = mainView.subviews[2]

        mainView.remove(sv0)
        mainView.remove(sv1)
        mainView.remove(sv2)
    }

    func setup() {
    }

    func toggle() {
        self.thumb?.toggle(force: isOn)
        self.background?.toggle(force: isOn)
    }
}
