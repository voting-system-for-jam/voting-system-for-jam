//
//  ViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/13.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var make_form_button: UIButton!
    
    @IBOutlet weak var answer_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    make_form_button.setTitle("フォームを作成する",for:UIControl.State.normal)
    
    answer_button.setTitle("回答する",for:UIControl.State.normal)
    }
    
}

