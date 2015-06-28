//
//  ForthViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/27.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    var btnArray = ("btn1","btn2","btn3","btn4","btn5","btn6","btn7","btn8","btn9")
   
    /*画像をボタンに表示させるfor文
  for var i=0; i<btnArray.count; i++{
    if (pointbox <= 3){
    button.setImage(shorthair, forState: .Normal)
    }else if (pointbox >= 4 && 7 > pointbox){
    button.setImage(longhair, forState: .Normal)
    }else if (pointbox > 6){
    button.setImage(parmahair, forState: .Normal)
    }
  }
*/
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
   /* appDelegate.pointbox = appDelegate.pointbox */
    
    let ResultPic1: UIImage! = UIImage(named: "1.jpeg")
    let ResultPic2: UIImage! = UIImage(named: "2.jpeg")
    let ResultPic3: UIImage! = UIImage(named: "3.jpeg")
    let ResultPic4: UIImage! = UIImage(named: "4.jpeg")
    let ResultPic5: UIImage! = UIImage(named: "5.jpeg")
    let ResultPic6: UIImage! = UIImage(named: "6.jpeg")
    let ResultPic7: UIImage! = UIImage(named: "7.jpeg")
    let ResultPic8: UIImage! = UIImage(named: "8.jpeg")
    let ResultPic9: UIImage! = UIImage(named: "9.jpeg")
    let ResultPic10: UIImage! = UIImage(named: "10.jpeg")
    let ResultPic11: UIImage! = UIImage(named: "11.jpeg")
    let ResultPic12: UIImage! = UIImage(named: "12.jpeg")
    let ResultPic13: UIImage! = UIImage(named: "13.jpeg")
    let ResultPic14: UIImage! = UIImage(named: "14.jpeg")
    let ResultPic15: UIImage! = UIImage(named: "15.jpeg")
    let ResultPic16: UIImage! = UIImage(named: "16.jpeg")
    let ResultPic17: UIImage! = UIImage(named: "17.jpeg")
    let ResultPic18: UIImage! = UIImage(named: "18.jpeg")
    let ResultPic19: UIImage! = UIImage(named: "19.jpeg")
    let ResultPic20: UIImage! = UIImage(named: "20.jpeg")
    let ResultPic21: UIImage! = UIImage(named: "21.jpeg")
    let ResultPic22: UIImage! = UIImage(named: "22.jpeg")
    let ResultPic23: UIImage! = UIImage(named: "23.jpeg")
    let ResultPic24: UIImage! = UIImage(named: "24.jpeg")
    let ResultPic25: UIImage! = UIImage(named: "25.jpeg")
    let ResultPic26: UIImage! = UIImage(named: "26.jpeg")
    let ResultPic27: UIImage! = UIImage(named: "27.jpeg")
   
    var shorthair = ("ResultPic2","ResultPic11","ResultPic12","ResultPic13","ResultPic14","ResultPic22","ResultPic5")
    var longhair = ("ResultPic17","ResultPic18","ResultPic19","ResultPic4","ResultPic6","ResultPic7")
    var parmahair = ("ResultPic10","ResultPic15","ResultPic16","ResultPic20","ResultPic21","ResultPic3","ResultPic8","ResultPic9")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
