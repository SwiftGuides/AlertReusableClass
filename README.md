# AlertReusableClass
AlertClass with UIAlertController to show normal alert and alert with action 


## Usage :-

*Simple Alert with message
```swift

    AlertReusableClass.showAlertView(vc: self, titleString: "Alert Title here", messageString: "Alert msg here")

```
*Alert with action

```swift
        self.popupAlertWithAction(title: "Alert Title", message: "Alert Message", actionTitles: ["YES","NO"], actions: [{yes in
            //On Clicking YES action
            DispatchQueue.main.async {
                let login = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
                self.navigationController?.pushViewController(login, animated: true)
            }
            },
            //on Clicking NO Action
            { no in
                
                self.dismiss(animated: true, completion: nil)
            }
            ])

```
