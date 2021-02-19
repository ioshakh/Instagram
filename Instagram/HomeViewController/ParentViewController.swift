//
//  ParentViewController.swift
//  Instagram
//
//  Created by shahzod on 2/19/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func appdelegate() -> AppDelegate {
        return  UIApplication.shared.delegate as! AppDelegate
    }
    
    func scenedelegate() -> SceneDelegate {
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }
}
