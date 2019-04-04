//
//  AlertManager.swift
//  proj3
//
//  Created by sakamotoyuya on 2019/04/04.
//  Copyright © 2019 sakamotoyuya. All rights reserved.
//

import UIKit

//AlertManagerがないでUIAlertControllerによるダイアログを制御します。
class AlertManager: NSObject {
    
    //自分の画面渡してもらって表示までするメソッド。戻り値は入力したテキスト。
    /// ダイアログの表示を行う
    ///
    /// - Parameters:
    ///   - vc: 渡されたUIViewControllerの上に表示します。
    ///   - defaultText: テキストの初期値
    ///   - action: OKイベント処理(String：OKタップ時の入力文字)
    func present(_ vc:UIViewController,_ defaultText:String? = "",action:((String?)->())? = nil){
        let ac = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        ac.addTextField{(tf:UITextField) in
            tf.delegate = self
            tf.text = defaultText
        }
//         OKボタンタップ時にacを渡します。
        let ok = UIAlertAction(title: "OK",style: .default){(_)in
            //内部でacを参照しているため循環参照する。なぜこうなるのか追ってみる。
            action?(ac.textFields?.first?.text)
        }
        ac.addAction(ok)
        vc.present(ac, animated: true)
    }
    deinit{
        print("AlertManagerが解放されました。")
    }
}

extension AlertManager:UITextFieldDelegate{
    /// テキスト変更イベント検出時にテキスト変更の許可または拒否を決定する処理
    ///
    /// - Parameters:
    ///   - textField: 変更時のtextField
    ///   - range: 変更時のrannge
    ///   - string: 変更時のstring
    /// - Returns: 変更の拒否(false)または許可(true)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("変更されました。")
        return true
    }
}
