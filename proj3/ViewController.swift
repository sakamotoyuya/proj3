//
//  ViewController.swift
//  proj3
//
//  Created by sakamotoyuya on 2019/04/04.
//  Copyright © 2019 sakamotoyuya. All rights reserved.
//

import UIKit

//UIAlertControllerを操作してなぜ循環参照してしまうのか追ってみるための操作クラス
class ViewController: UIViewController {
    var am:AlertManager? = AlertManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func alerthyouji(_ sender: Any) {
        /*
         AlertManager内のテキスト変更イベントがフックしなかった。
         なぜなのか図解すること。
         */

        //alert()
        
        /*
         これならテキスト変更イベントがフックされた。
         もしかしてAlertManager自体が上記だと
         メモリ解放されてしまっているため
         delegate = self でselfが解放されてしまっているのではないだろうか・・・
         */
        am?.present(self,"初期値"){(text:String?)in
            if(text == "初期値"){
                self.alerthyouji(sender)
            }
        }
    }
    
    func alert(){
        let al = AlertManager()
        al.present(self,"test"){(_)in
            print("testアラートのOKタップ後の処理")
        }
    }
    
    @IBAction func kaihou1(_ sender: Any) {
        am = nil
    }
    
    @IBAction func saiseisei(_ sender: Any) {
        am = AlertManager()
    }
    
}

