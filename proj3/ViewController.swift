//
//  ViewController.swift
//  proj3
//
//  Created by sakamotoyuya on 2019/04/05.
//  Copyright © 2019 sakamotoyuya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func call(_ sender: Any) {
        call()
//        calltest()
        
    }
    func call(){
        
        //(1)UIAlertControllerを生成する
        let ac = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        
        //(2)UIAlertActionを生成を生成する
        let action = UIAlertAction(title: "OK",style: .default){(_)in
            
            //(3)クロージャー内でacを参照する
            print(ac)
        }
        
        //(4)acのプロパティactionsにactionを追加する
        ac.addAction(action)//ここでメモリリークする
        
        //acを表示
        present(ac, animated: true)
    }
    
    func calltest(){
        let cc = AlertController()
        let ca = AlertAction{(_)in
            print(cc)
        }
        cc.addClosure(ca)
    }
    
    @IBAction func kaihou1(_ sender: Any) {
    }

    @IBAction func saiseisei(_ sender: Any) {
    }
}
