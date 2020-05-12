//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() ->Bool{
        if number % 3 == 0{
            return true  //アホになる
        }
        var checkNumber: Int = number //3がつくか判断するための変数を宣言
        
        while checkNumber != 0 {
            if checkNumber % 10 == 3 {
            return true // アホになる
                
            }else {
                checkNumber = checkNumber / 10
        }
          
    }
        func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }



}
}

