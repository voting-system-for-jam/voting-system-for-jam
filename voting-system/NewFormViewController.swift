//
//  NewFormViewController.swift
//  voting-system
//
//  Created by Ryota Sato on 2020/08/27.
//  Copyright © 2020 Ryota. All rights reserved.
//

import UIKit

class NewFormViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var formTextField: UITextField!
    @IBOutlet weak var teamNumberTextField: UITextField!
    
    let scrollView = UIScrollView()
    var labelY = 10
    var textY = 60
    var count = 1
    let labelW = 95
    let labelH = 50
    let textW = 300
    let textH = 30
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configureSV()

        // Do any additional setup after loading the view.
    }
    
    func createLabel(contentsView: UIView) -> UILabel {
        print("label")
        let label = UILabel()
        
        let labelX = 20
        label.frame = CGRect(x:Int(labelX), y:labelY,width:labelW,height:labelH)
        
        label.layer.borderWidth = 1.0
        label.layer.borderColor = UIColor.blue.cgColor
        
        label.text = "チーム" + String(count)
        return label
    }
    
    func createText(contentsView: UIView) -> UITextField {
        let text = UITextField()
        
        let textX = 20
        text.frame = CGRect(x:Int(textX), y:textY,width:textW,height:textH)
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        return text
    }
    
    func createContentsView() -> UIView {
        let contentsView = UIView()
//        ここのheightを変更
        contentsView.frame = CGRect(x:0, y:0, width:self.view.frame.width, height:1200)
        
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
       
        scrollView.frame = self.view.frame
        scrollView.contentSize = CGSize(width:0,height:1000)
        self.view.addSubview(scrollView)
        let subView = createContentsView()
        scrollView.addSubview(subView)
        scrollView.contentSize = subView.frame.size
        scrollView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
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
