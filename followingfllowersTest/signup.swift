//
//  signup.swift
//  followingfllowersTest
//
//  Created by 笹倉一也 on 2021/09/10.
//

import UIKit
import Firebase

class signup: UIViewController {

    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTF.text!, password: passTF.text!) { authResult, error in
          // ...
        }
    }
    
    
    @IBAction func logoutBtn(_ sender: Any) {
        let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError)
            }
      
    }
    
    
    
    
}
