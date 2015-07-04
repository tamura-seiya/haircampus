//
//  ThirdViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/22.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var pointbox:Int!
    
    @IBOutlet weak var resultlabel1 :UILabel!
    @IBOutlet weak var resultImage :UIImageView!
    let ResultPic0: UIImage! = UIImage(named: "11.jpg")
    let ResultPic1: UIImage! = UIImage(named: ".jpg")
    let ResultPic2: UIImage! = UIImage(named: "19.jpg")
    
     /*
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    //AppDelegateのインスタンスを取得
    
   var pointbox = AppDelegate.pointbox*/
    
        
    @IBOutlet weak var button3: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        
        if(pointbox <= 4){
            resultImage.image = ResultPic0
            resultlabel1.text = String(format: "Short Set")
            
        }else if(pointbox >= 5 &&  pointbox < 10 ){
            resultImage.image = ResultPic1
            resultlabel1.text = String(format: "Long Set!!!!")
        }else if(pointbox >= 10){
            resultImage.image = ResultPic2
            resultlabel1.text = String(format: "Perm Set!!!!")
        }
        
                

        
        // Do any additional setup after loading the view.
    }
    
    func performSegueToResult() {
        self.performSegueWithIdentifier("toView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toView") {
            
            var ResultView : ForthViewController = segue.destinationViewController as! ForthViewController
            
            ResultView.pointbox = pointbox
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}