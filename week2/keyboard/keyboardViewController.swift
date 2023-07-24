//
//  keyboardViewController.swift
//  week2
//
//  Created by zeze kim on 2023/07/24.
//

import UIKit

class keyboardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var inputText: UITextField!
    @IBOutlet var colorButton: UIButton!
    
    @IBOutlet var textButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCSS(button: sendButton)
        buttonCSS(button: colorButton)
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        inputText.delegate = self
    }
    

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func buttonCSS(button: UIButton){
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = UIColor.white
        
        
    }
    @IBAction func randomColorTap(_ sender: UIButton) {
        let randomColor = randomColor()
        colorButton.tintColor = randomColor
        resultLabel.textColor = randomColor
    }

    @IBAction func textFieldSubmit(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    @IBAction func gestureTap(_ sender: UITapGestureRecognizer) {
        textButtonView.isHidden = !textButtonView.isHidden
        view.endEditing(true)
    }
    @IBAction func sendTap(_ sender: UIButton) {
        resultLabel.text = inputText.text
        view.endEditing(true)
       
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         inputText.resignFirstResponder() // 텍스트 필드 수정 종료 시 키보드를 숨기는 코드
         return true
     }
}
