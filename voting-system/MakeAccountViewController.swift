//
//  MakeAccountViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/27.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit
import Firebase

class MakeAccountViewController: UIViewController {

    @IBOutlet weak var back_to_loginView: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var send_button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_to_loginView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func send_functon(_ sender: Any) {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            }
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
