//
//  TransitionViewController.swift
//  week2
//
//  Created by zeze kim on 2023/07/24.
//

import UIKit

class TransitionViewController: UIViewController {
    @IBOutlet var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /// 다른 화면에서 transitionViewContrller 로 돌아올때(unwind) 사용하는 기능
    ///
    
    @IBAction func unwindToHome(_ sender: UIButton) {
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
