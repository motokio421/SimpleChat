//
//  Message.swift
//  SimpleChatApp
//
//  Created by 比嘉幹樹 on 2019/08/09.
//  Copyright © 2019 比嘉幹樹. All rights reserved.
//

import Foundation

struct Message {

    // メッセージのID(Firestoreでそ使用するキーを入れる）
    let documentId: String
    
    //送信されたメッセージ
    let text: String
    
    
}

