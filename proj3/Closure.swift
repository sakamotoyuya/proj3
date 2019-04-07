//
//  Closure.swift
//  proj3
//
//  Created by sakamotoyuya on 2019/04/05.
//  Copyright © 2019 sakamotoyuya. All rights reserved.
//

import UIKit

//UIAlertActionに該当するクラス
class AlertAction: NSObject {
    //ここは想像してつくっています。
    //根拠：イベント
    private var completionhandler:((AlertAction)->())?
    
    //UIAlertActionを生成するときと似たようにクロージャーを引数にとるコンストラクタを作る。
    init(handler: ((AlertAction)->())? = nil){
        //この処理も想像して作ってます。
        /*
         [根拠]
         呼び出し元にイベントを返すにはここでタップイベントハンドラの登録が必要と思う。
         プロパティをここで保持しておかないと
         */
        completionhandler = handler
    }
    
    
    /// タップイベント検知処理
    func tapEvent(){
        completionhandler?(self)
    }
    
    deinit{
        print("Closureが解放されました。")
    }
}

//UIAlertControllerに該当するクラスとする。
class AlertController:NSObject{
    var actions = [AlertAction]()
    
    /// actionsにAlertActionを追加する。
    ///
    /// - Parameter element: Closureを指定
    func addClosure(_ element:AlertAction){
        actions.append(element)
    }
    
    deinit{
        print("AlertControllerが解放されました。")
    }

    //リークしたかどうかわかりにくいため、大量のメモリを確保しておく。
    let a = [
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456",
        "123456","123456","123456","123456"
    ]

}
