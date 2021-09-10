//
//  ViewController.swift
//  followingfllowersTest
//
//  Created by 笹倉一也 on 2021/09/10.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let user = Auth.auth().currentUser
        
        print("now user is ->\(user?.email ?? "not login")")
    }


}

