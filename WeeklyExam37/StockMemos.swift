//
//  StockMemos.swift
//  WeeklyExam37
//
//  Created by ShingoYokoyama on 2016/07/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit
import Alamofire

class StockMemos: NSObject {
    class func postMemo(memo: Memo) {
        
        var params: [String: AnyObject] = [
            "text": memo.text
        ]
        
        // HTTP通信
        Alamofire.request(.POST, "http://localhost:3000/api/memos", parameters: params, encoding: .URL).responseJSON { (request, response, JSON, error) in
            
            println("=============request=============")
            println(request)
            println("=============response============")
            println(response)
            println("=============JSON================")
            println(JSON)
            println("=============error===============")
            println(error)
            println("=================================")
        }
        
    }
}