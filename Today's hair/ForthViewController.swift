//
//  ForthViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/27.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    //pointbox定義
    var pointbox:Int!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!



    
    
 /*pointbox取得
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
    appDelegate.pointbox = appDelegate.pointbox */
    
    let ResultPic1: UIImage! = UIImage(named: "1.jpeg")
    let ResultPic2: UIImage! = UIImage(named: "2.jpg")
    let ResultPic3: UIImage! = UIImage(named: "3.jpeg")
    let ResultPic4: UIImage! = UIImage(named: "4.jpeg")
    let ResultPic5: UIImage! = UIImage(named: "5.png")
    let ResultPic6: UIImage! = UIImage(named: "6.jpg")
    let ResultPic7: UIImage! = UIImage(named: "7.jpg")
    let ResultPic8: UIImage! = UIImage(named: "8.jpg")
    let ResultPic9: UIImage! = UIImage(named: "9.jpg")
    let ResultPic10: UIImage! = UIImage(named: "10.jpg")
    let ResultPic11: UIImage! = UIImage(named: "11.jpg")
    let ResultPic12: UIImage! = UIImage(named: "12.jpg")
    let ResultPic13: UIImage! = UIImage(named: "13.jpg")
    let ResultPic14: UIImage! = UIImage(named: "14.jpg")
    let ResultPic15: UIImage! = UIImage(named: "15.jpg")
    let ResultPic16: UIImage! = UIImage(named: "16.jpg")
    let ResultPic17: UIImage! = UIImage(named: "17.jpeg")
    let ResultPic18: UIImage! = UIImage(named: "18.jpg")
    let ResultPic19: UIImage! = UIImage(named: "19.jpeg")
    let ResultPic20: UIImage! = UIImage(named: "20.jpg")
    let ResultPic21: UIImage! = UIImage(named: "21.jpg")
    let ResultPic22: UIImage! = UIImage(named: "22.jpg")
    let ResultPic23: UIImage! = UIImage(named: "23.jpeg")
    let ResultPic24: UIImage! = UIImage(named: "24.jpeg")
    let ResultPic25: UIImage! = UIImage(named: "25.jpeg")
    let ResultPic26: UIImage! = UIImage(named: "26.jpeg")
    let ResultPic27: UIImage! = UIImage(named: "27.jpeg")
   let ResultPic28: UIImage! = UIImage(named: "19.jpg")
    
    



    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

            println("pointbox\(pointbox)")
            if (pointbox <= 3){
                btn1.setBackgroundImage(ResultPic2, forState: .Normal)
                btn2.setBackgroundImage(ResultPic11, forState: .Normal)
                btn3.setBackgroundImage(ResultPic12, forState: .Normal)
                btn4.setBackgroundImage(ResultPic13, forState: .Normal)
                btn5.setBackgroundImage(ResultPic14, forState: .Normal)
                btn6.setBackgroundImage(ResultPic22, forState: .Normal)
                btn7.setBackgroundImage(ResultPic25, forState: .Normal)
                
            }else if (pointbox >= 4 && 7 > pointbox){
                btn1.setBackgroundImage(ResultPic17, forState: .Normal)
                btn2.setBackgroundImage(ResultPic18, forState: .Normal)
                btn3.setBackgroundImage(ResultPic19, forState: .Normal)
                btn4.setBackgroundImage(ResultPic4, forState: .Normal)
                btn5.setBackgroundImage(ResultPic6, forState: .Normal)
                btn6.setBackgroundImage(ResultPic7, forState: .Normal)
               
            }else if (pointbox > 6){
                btn1.setBackgroundImage(ResultPic10, forState: .Normal)
                btn2.setBackgroundImage(ResultPic15, forState: .Normal)
                btn3.setBackgroundImage(ResultPic16, forState: .Normal)
                btn4.setBackgroundImage(ResultPic20, forState: .Normal)
                btn5.setBackgroundImage(ResultPic21, forState: .Normal)
                btn6.setBackgroundImage(ResultPic3, forState: .Normal)
                btn7.setBackgroundImage(ResultPic8, forState: .Normal)

            }
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
