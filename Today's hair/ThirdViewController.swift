//
//  ThirdViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/22.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var pointbox:Int = 0
    
    @IBOutlet weak var resultlabel1 :UILabel!
    @IBOutlet weak var resultImage :UIImageView!
    let ResultPic0: UIImage! = UIImage(named: "stevejobs-e1317891052158.png")
    let ResultPic1: UIImage! = UIImage(named: "ipod.png")
    let ResultPic2: UIImage! = UIImage(named: "stevejobswallpaper-ipad.png")
    let ResultPic3: UIImage! = UIImage(named: "stevejobs1.png")
        
    @IBOutlet weak var button3: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        resultlabel1.text = String(format: "君の今日の髪型は%dだ!!!!",pointbox);
        
        if(pointbox == 5){
            
            resultImage.image = ResultPic0
        }else if(pointbox >= 3){
            resultImage.image = ResultPic1
        }else if(pointbox >= 1){
                resultImage.image = ResultPic2
        }else if(pointbox == 0){
            resultImage.image = ResultPic3
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}