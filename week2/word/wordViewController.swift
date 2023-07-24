//
//  wordViewController.swift
//  week2
//
//  Created by zeze kim on 2023/07/24.
//

import UIKit

class wordViewController: UIViewController {
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var wordInput: UITextField!
    
    @IBOutlet var wordButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle()
        wordInput.text = getRandomWord()
//        그냥 사용 하기만 하면 주의가  뜸
    }
    let list = ["뉴진스" : "아이돌", "알잘딱깔센" : "알아서 잘 깔끔하게" , "별다줄" : "별거다줄여", "아무거나" : "아무거나"]

    @discardableResult // 이렇게해두면 위에 함수를 단독으로 사용해도 주의가 뜨지않음
    func getRandomWord() -> String{
        let random = ["고래밥", "칙촉", "카스타드", "메로나", "월드콘"]
        wordInput.text = random.randomElement()!
        return random.randomElement()!
    }
    
    func buttonStyle (){
        let keys = Array(list.keys)
        for btn in wordButton {
            btn.setTitle(keys[btn.tag], for: .normal)
        }
    }

    @IBAction func TextFieldOn(_ sender: UITextField) {
        print("콘솔")
//        var result = (sender.text ?? nil)
//        if (result != nil){
//            list[result]
//        }
//  
    }
        
    
    @IBAction func Gesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func wordButtonTapped(_ sender: UIButton) {
        wordInput.text = sender.titleLabel?.text
        resultLabel.text = list[sender.titleLabel?.text ?? "없음"]
    }
    
}
