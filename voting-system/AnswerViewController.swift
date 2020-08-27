//
//  AnswerViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/13.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    
    @IBOutlet weak var backviewcontroller_button: UIButton!
    @IBOutlet weak var formatedTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_viewcontroller(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendFunction(_ sender: Any) {
        formatedTextField.endEditing(true)
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
