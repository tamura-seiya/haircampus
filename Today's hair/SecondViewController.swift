//
//  SecondViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/22.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //出題数
    var questionNumber:Int = 4
    
    //現在の問題数
    var sum:Int = 0
    
    //ポイント数
    var pointbox:Int = 0
    
    //乱数
    var random:Int = 0
    
    //クイズを格納する配列
    var questionArray = [NSMutableArray]()
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons: Array<UIButton>!
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //------------------------ここから下にクイズを書く------------------------//
        questionArray.append(["今日の前髪の気分は？","斜め","センター分け","アップ"])
        questionArray.append(["もみあげはどうする？","2ブロック","ナチュラル","ロング"])
        questionArray.append(["後ろ髪はどうする？？","ショート","アラウンド","ロング"])
        questionArray.append(["新しい髪型にチャレンジするなら？？","ショート","坊主","ロング"])
        
        //------------------------ここから下にクイズを書く------------------------//
        choiceQuiz()

        // Do any additional setup after loading the view.
    }
    
    func choiceQuiz(){
        println(questionArray.count)
        
        random = Int(arc4random_uniform(UInt32(questionArray.count)))
        quizTextView.text = questionArray[random][0] as! String
        
        for var i = 0; i < choiceButtons.count; i++ {
            choiceButtons[i].setTitle(questionArray[random][i+1] as? String, forState: .Normal)
            
            choiceButtons[i].tag = i+1;
        }
    
    }
    @IBAction func choiceAnswer(sender: UIButton) {
        sum++
        println("random \(random)")
        if questionArray[random][1] as? Int  == sender.tag {
            //ポイントを増やす
            appDelegate.pointbox + 1
        }else if questionArray[random][2] as? Int == sender.tag {
            //ポイントを増やす
            appDelegate.pointbox + 2
        }else if questionArray[random][3] as? Int == sender.tag {
            //ポイントを増やす
            appDelegate.pointbox + 3
        }
        

        
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if sum == questionNumber {
            self.performSegueToResult()
        }
        questionArray.removeAtIndex(random)
        choiceQuiz()
        
        
    }
    
    
    func performSegueToResult() {
        self.performSegueWithIdentifier("toResultView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toResultView") {
            
            var ResultView : ThirdViewController = segue.destinationViewController as! ThirdViewController
            
            ResultView.pointbox = self.pointbox
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}