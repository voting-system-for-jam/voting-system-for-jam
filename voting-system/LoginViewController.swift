//
//  LoginViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/13.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var back_viewcontroller: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backViewController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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