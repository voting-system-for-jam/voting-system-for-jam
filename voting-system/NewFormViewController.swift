//
//  NewFormViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/27.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit

class NewFormViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var formTextField: UITextField!
    @IBOutlet weak var teamNumberTextField: UITextField!
    
//    let scrollView = UIScrollView()
    var labelY = 10
    var textY = 20
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configureSV()

        // Do any additional setup after loading the view.
    }
    
    func createLabel(contentsView: UIView) -> UILabel {
        print("label")
        let label = UILabel()
        
        let labelX = contentsView.center.x
        label.frame = CGRect(x:Int(labelX), y:labelY,width:95,height:50)
        label.text = "チーム" + String(count)
        return label
    }
    
    func createText(contentsView: UIView) -> UITextField {
        let text = UITextField()
        
        let textX = contentsView.center.x
        text.frame = CGRect(x:Int(textX), y:textY,width:95,height:50)
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.red.cgColor
        return text
    }
    
    func createContentsView() -> UIView {
        let contentsView = UIView()
//        ここのheightを変更
        contentsView.frame = CGRect(x:0, y:0, width:414, height:1200)
        
        for _ in 1...10{
            let label = createLabel(contentsView: contentsView)
            let text = createText(contentsView: contentsView)
            contentsView.addSubview(label)
            contentsView.addSubview(text)
            labelY += 100
            textY += 100
            count += 1
        }
        return contentsView
    }
    
    func configureSV() {
        print("configureSV")
        let subView = createContentsView()
        scrollView.addSubview(subView)
        
        scrollView.contentSize = subView.frame.size
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func send_form(_ sender: Any) {
        formTextField.endEditing(true)
        teamNumberTextField.endEditing(true)
        configureSV()
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
