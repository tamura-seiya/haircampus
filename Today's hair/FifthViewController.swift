//
//  FifthViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/28.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit
import Social




class FifthViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
   
    var operation :Int!
    var operation2 :Int!
     @IBOutlet weak var lastImage:UIImageView!
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

    var myComposeView : SLComposeViewController!
    var myTwitterButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        /*
    // ボタンイベント.
    func onPostToTwitter(sender : AnyObject) {
*/
        
        println("operation\(operation)")
        println("operation2\(operation2)")
        if(operation == 1 && operation2 == 1){
            lastImage?.image = ResultPic11
        }else if(operation == 2 && operation2 == 1){
            lastImage?.image = ResultPic4
        }else if(operation == 3 && operation2 == 1){
            lastImage?.image = ResultPic12
        }else if(operation == 4 && operation2 == 1){
            lastImage?.image = ResultPic13
        }else if(operation == 5 && operation2 == 1){
            lastImage?.image = ResultPic14
        }else if(operation == 6 && operation2 == 1){
            lastImage?.image = ResultPic22
        }else if(operation == 7 && operation2 == 1){
            lastImage?.image = ResultPic1
        }else if(operation == 8 && operation2 == 1){
            lastImage?.image = ResultPic7
        }else if(operation == 1 && operation2 == 2){
            lastImage?.image = ResultPic17
        }else if(operation == 2 && operation2 == 2){
            lastImage?.image = ResultPic18
        }else if(operation == 3 && operation2 == 2){
            lastImage?.image = ResultPic19
        }else if(operation == 4 && operation2 == 2){
            lastImage?.image = ResultPic2
        }else if(operation == 5 && operation2 == 2){
            lastImage?.image = ResultPic28
        }else if(operation == 6 && operation2 == 2){
            lastImage?.image = ResultPic24
        }else if(operation == 7 && operation2 == 2){
            lastImage?.image = ResultPic7
        }else if(operation == 8 && operation2 == 2){
            lastImage?.image = ResultPic25
        }else if(operation == 1 && operation2 == 3){
            lastImage?.image = ResultPic10
        }else if(operation == 2 && operation2 == 3){
            lastImage?.image = ResultPic15
        }else if(operation == 3 && operation2 == 3){
            lastImage?.image = ResultPic16
        }else if(operation == 4 && operation2 == 3){
            lastImage?.image = ResultPic20
        }else if(operation == 5 && operation2 == 3){
            lastImage?.image = ResultPic21
        }else if(operation == 6 && operation2 == 3){
            lastImage?.image = ResultPic3
        }else if(operation == 7 && operation2 == 3){
            lastImage?.image = ResultPic26
        }else if(operation == 8 && operation2 == 3){
            lastImage?.image = ResultPic27
        }
        
        // Twitter用のUIButtonの生成.
        let hex: Int = 0x55ACEE
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0xFF00) >> 8) / 255.0
        let blue = Double((hex & 0xFF)) / 255.0
        var myColor: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(1.0))
        
        // ボタン.
        myTwitterButton = UIButton()
        myTwitterButton.frame = CGRectMake(0,0,100,100)
        myTwitterButton.backgroundColor = myColor
        myTwitterButton.layer.masksToBounds = true
        myTwitterButton.setTitle("Twitter", forState: UIControlState.Normal)
        myTwitterButton.titleLabel?.font = UIFont.systemFontOfSize(CGFloat(20))
        myTwitterButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myTwitterButton.layer.cornerRadius = 50.0
        myTwitterButton.layer.position = CGPoint(x: self.view.frame.width/4.1
            , y:self.view.frame.height/1.25)
        myTwitterButton.tag = 1
        myTwitterButton.addTarget(self, action: "onPostToTwitter:", forControlEvents: .TouchUpInside)
        
        // buttonをviewに追加.
        self.view.addSubview(myTwitterButton)
        
        
        
        
    }
    
    // ボタンイベント.
    func onPostToTwitter(sender : AnyObject) {
        
        // SLComposeViewControllerのインスタンス化.
        // ServiceTypeをTwitterに指定.
        myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        // 投稿するテキストを指定.
        myComposeView.setInitialText("Today's Hair最高！もう本当に毎日使いたい！！！")
        
        // 投稿する画像を指定.
        myComposeView.addImage(UIImage(named: "oouchi.jpg"))
        
        // myComposeViewの画面遷移.
        self.presentViewController(myComposeView, animated: true, completion: nil)
        
           }
    
    
    
    
    }
    
    
    
    
    
    
    


        
            

        
        
        











    
    
  /*
    @IBAction func twitter(sender: AnyObject) {
    // availability check
    if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
        // make controller to share on twitter
        var controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        // add link to the controller
        let link: String = "http://www.apple.com"
        let url = NSURL(string: link)
        controller.addURL(url)
        
        // add text to the controller
        let title: String = "ﾟ(ﾟ´ω`ﾟ)ﾟ｡ﾋﾟｰ"
        controller.setInitialText(title)
        
        // show twitter post screen
        presentViewController(controller, animated: true, completion: {})
    }
}
*/

