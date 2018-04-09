//
//  ViewController.swift
//  iosAppProject
//
//  Created by Baikio on 3/21/18.
//  Copyright © 2018 Baikio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        let registerAlert = UIAlertController(title: "Register", message: nil, preferredStyle: .alert)
        
        registerAlert.addAction(UIAlertAction(title: NSLocalizedString("Cancel", comment: "Default action"), style: .cancel, handler: {_ in }))
        
        registerAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: {_ in print(registerAlert.textFields!)}))
        
        registerAlert.addTextField {(userField) in userField.placeholder = "email"
            userField.textAlignment = .center
        }
        
        registerAlert.addTextField{(passField) in passField.placeholder = "password"
            passField.textAlignment = .center
            passField.isSecureTextEntry = true
        }
        self.present(registerAlert, animated: true, completion: nil)
    }
    
    @IBAction func passwordRecoveryAlert(_ sender: UIButton) {
        
        let forgotAlert = UIAlertController(title: "Forgot Password?", message: "An email will be sent to you with a provisional password.", preferredStyle: .alert)
        
        forgotAlert.addAction(UIAlertAction(title: NSLocalizedString("Cancel", comment: "Default action"), style: .cancel, handler: {_ in }))
        
        forgotAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: {_ in print(forgotAlert.textFields!)}))
        
        forgotAlert.addTextField {(userField) in userField.placeholder = "email"
            userField.textAlignment = .center
        }
        self.present(forgotAlert, animated: true, completion: nil)
        
    }
    
}

