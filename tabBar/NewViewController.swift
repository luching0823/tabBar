//
//  NewViewController.swift
//  tabBar
//
//  Created by 廖昱晴 on 2021/3/4.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var messageFromViewOne: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = messageFromViewOne
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textField.becomeFirstResponder() //每次畫面顯示時，鍵盤自動跳出來
    }

    @IBAction func ok(_ sender: UIButton) {
        if let inputText = textField.text {
            print(inputText)
            textField.text = ""
            textField.resignFirstResponder() //鍵盤自動收起來
            
            if let firstViewControllers = self.tabBarController?.viewControllers?[0] as? ViewController { //利用tabBarController找到第一個畫面，並轉型成ViewController
                firstViewControllers.label.text = inputText
            }
            self.tabBarController?.selectedIndex = 0 //選到第一個畫面
            
        }
    }
    
}
