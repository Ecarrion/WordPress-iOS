import UIKit

class NoConnectionNotificationView: UIView {

    @IBOutlet weak var noConnectionLabel: UILabel?

    class func view() -> NoConnectionNotificationView? {

        let nib = UINib(nibName: "NoConnectionNotificationView", bundle: nil)
        let views = nib.instantiateWithOwner(nil, options: nil)
        return views.first as? NoConnectionNotificationView
    }

    override func awakeFromNib() {
        self.noConnectionLabel?.text = NSLocalizedString("No connection", comment: "")
    }
}
