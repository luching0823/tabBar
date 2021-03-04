//
//  ViewController.swift
//  tabBar
//
//  Created by 廖昱晴 on 2021/3/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "First View"
        if let secondViewController = self.tabBarController?.viewControllers?[1] as? NewViewController { //利用tabBarController找到第二個畫面，並轉型成NewViewController
            secondViewController.messageFromViewOne = "Hi" //將"Hi"傳給第二個畫面的messageFromViewOne
        }
    }


}

