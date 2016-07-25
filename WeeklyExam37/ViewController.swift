//
//  ViewController.swift
//  WeeklyExam37
//
//  Created by ShingoYokoyama on 2016/07/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSaveBtn(sender: UIButton) {
        let memo = Memo()
        memo.text = textView.text
        
        StockMemos.postMemo(memo)
    }
    

}

