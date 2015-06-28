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
    let ResultPic0: UIImage! = UIImage(named: "11.jpg")
    let ResultPic1: UIImage! = UIImage(named: "10.jpg")
    let ResultPic2: UIImage! = UIImage(named: "19.jpg")
    
        
    @IBOutlet weak var button3: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        resultlabel1.text = String(format: "君の今日の髪型は%dだ!!!!",pointbox);
        
        
        if(pointbox <= 3){
            resultImage.image = ResultPic0
        }else if(pointbox >= 4 && 7 > pointbox ){
            resultImage.image = ResultPic1
        }else if(pointbox > 6){
            resultImage.image = ResultPic2
        }
        
                

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}