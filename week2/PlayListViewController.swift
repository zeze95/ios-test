//
//  PlayListViewController.swift
//  week2
//
//  Created by zeze kim on 2023/07/24.
//

import UIKit

class PlayListViewController: UIViewController {
    @IBOutlet var firstImg: UIImageView!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var firstButton: UIButton!
    
    @IBOutlet var secondImg: UIImageView!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var secondButton: UIButton!
    
    
    @IBOutlet var thirdImg: UIImageView!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var thirdButton: UIButton!
    
    
    let list = ["가사1","가사2","가사3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        print(sender.tag)
        print(list[sender.tag - 1])
    }
    
    
    
    @IBAction func gestureTapping(_ sender: UITapGestureRecognizer) {
        // 1. 다시는 이미지 못봄
        // firstImg.isHidden = true
        // 이미지가 숨겨짐 이즈히든의 디폴트는 트루
        // 2. 조건문으로 제어하여 prev
//        if firstImg.isHidden == true {
//            firstImg.isHidden = false
//        } else {
//            firstImg.isHidden = true
//        }
        // 3. ! 으로 제어
//        firstImg.isHidden = !firstImg.isHidden
        // 4. 토글 쓰기
//        firstImg.isHidden.toggle()
        // 5. 삼항 연산자
        firstImg.isHidden = firstImg.isHidden ? false : true
        
        
    }
    
}
