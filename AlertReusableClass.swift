import UIKit

class BWAlertClass {
    
    let sharedInstance = BWAlertClass()
    
    //MARK: Show Alert message only
    static func showAlertView(vc : UIViewController, titleString : String , messageString: String) ->()
    {
        let alertView = UIAlertController(title: titleString, message: messageString, preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .cancel) { (alert) in
            vc.dismiss(animated: true, completion: nil)
        }
        alertView.addAction(alertAction)
        vc.present(alertView, animated: true, completion: nil)
        
    }
    
}

//MARK: Alert with Action
extension UIViewController {
    func popupAlertWithAction(title: String?, message: String?, actionTitles:[String?], actions:[((UIAlertAction) -> Void)?]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: .default, handler: actions[index])
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
}
