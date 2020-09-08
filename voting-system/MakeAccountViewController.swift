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
    
    private func showErrorIfNeeded(_ errorOrNil: Error?) {
        // エラーがなければ何もしません
        guard let error = errorOrNil else { return }
        
        let message = "エラーが起きました" // ここは後述しますが、とりあえず固定文字列
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func send_functon(_ sender: Any) {
        // textfield close
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
  
        // make account
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            
            guard let self = self else { return }
            if let user = result?.user {
                print("OK")
                let req = user.createProfileChangeRequest()
                req.displayName = email
                req.commitChanges() { [weak self] error in
                    guard let self = self else { return }
                    if error == nil {
                        user.sendEmailVerification() { [weak self] error in
                            guard let self = self else { return }
                            if error == nil {
                                
                                // 仮登録完了画面へ遷移する処理
                            }
                            print("Fail1")
                            self.showErrorIfNeeded(error)
                        }
                    }
                    print("Fail2")
                    self.showErrorIfNeeded(error)
                }
            }
            print("Fail3")
            self.showErrorIfNeeded(error)
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
