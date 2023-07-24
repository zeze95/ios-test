//
//  ViewController.swift
//  week2
//
//  Created by zeze kim on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(firstImgView.isUserInteractionEnabled = true)
        print(view.isUserInteractionEnabled)
        print("123345")
        print("test")
        print("123345")
        
        print("test")
        print("test")
        print("test")
        print("123345")
        print("커밋 푸쉬 동시에")
    }

    @IBAction func firstTapGesture(_ sender: UITapGestureRecognizer) {
        print("처음")
    }
    @IBAction func SecondTapGesture(_ sender: UITapGestureRecognizer) {
        print("둘")
    }
    
}

