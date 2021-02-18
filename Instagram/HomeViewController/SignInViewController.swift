//
//  SignInViewController.swift
//  Instagram
//
//  Created by shahzod on 2/18/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //Mark : -Function
    
    func callSignUpViewController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc , animated: true , completion: nil)
        
    }
    
    
    //Mark : - Action
    
    @IBAction func LogIN(_ sender: Any) {
        
    }
    
    
    @IBAction func SignIn(_ sender: Any) {
        callSignUpViewController()
    }
    
}
