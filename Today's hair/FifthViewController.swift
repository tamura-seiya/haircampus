//
//  FifthViewController.swift
//  Today's hair
//
//  Created by tamura seiya on 2015/06/28.
//  Copyright (c) 2015年 tamura seiya. All rights reserved.
//

import UIKit

import Social

let successTitle = "投稿成功"
let failedTitle = "投稿失敗"
let successText = "メッセージの投稿に成功しました。"
let failedText = "メッセージの投稿に失敗しました。"
let closeBtnTitle = "閉じる"

var imagePicker:UIImagePickerController?
var savedImage:UIImage?



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

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if(operation == 1 && operation2 == 1){
            lastImage?.image = ResultPic2
        }else if(operation == 2 && operation2 == 1){
            lastImage?.image = ResultPic11
        }else if(operation == 3 && operation2 == 1){
            lastImage?.image = ResultPic12
        }else if(operation == 4 && operation2 == 1){
            lastImage?.image = ResultPic13
        }else if(operation == 5 && operation2 == 1){
            lastImage?.image = ResultPic14
        }else if(operation == 6 && operation2 == 1){
            lastImage?.image = ResultPic22
        }else if(operation == 1 && operation2 == 2){
            lastImage?.image = ResultPic17
        }else if(operation == 2 && operation2 == 2){
            lastImage?.image = ResultPic18
        }else if(operation == 3 && operation2 == 2){
            lastImage?.image = ResultPic19
        }else if(operation == 4 && operation2 == 2){
            lastImage?.image = ResultPic4
        }else if(operation == 5 && operation2 == 2){
            lastImage?.image = ResultPic6
        }else if(operation == 6 && operation2 == 2){
            lastImage?.image = ResultPic7
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
            lastImage?.image = ResultPic8
        }












    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //////////////////////////////////////////
    //BUTTON ACTIONS//
    //////////////////////////////////////////
    
    //Facebookに投稿
    @IBAction func postToFacebook(sender: AnyObject) {
        createPostView(SLServiceTypeFacebook)
    }
    
    //Twitterに投稿
    @IBAction func postToTwitter(sender: AnyObject) {
        createPostView(SLServiceTypeTwitter)
    }
    
    //////////////////////////////////////////
    //CREATE POST VIEW//
    //////////////////////////////////////////
    
    //SNS投稿画面の表示
    func createPostView(serviceType:NSString) {
        if SLComposeViewController.isAvailableForServiceType(serviceType as String){
            
            let postViewController:SLComposeViewController = SLComposeViewController(forServiceType: serviceType as String)
            
            //完了処理
            let handler : SLComposeViewControllerCompletionHandler =
            {result in
                if result == SLComposeViewControllerResult.Done{
                    self.showAlertView(true)
                    savedImage = nil
                }else if result == SLComposeViewControllerResult.Cancelled{
                    self.showAlertView(false)
                }
            }
            
            postViewController.completionHandler = handler
            if savedImage != nil {
                postViewController.addImage(savedImage)
            }
            
            self.presentViewController(postViewController, animated: true, completion: nil)
            
        }
    }
    
    //////////////////////////////////////////
    //ALERT VIEW//
    //////////////////////////////////////////
    
    //アラートビューの表示
    func showAlertView(success:Bool) {
        
        let alertView = UIAlertView()
        alertView.delegate = self
        alertView.addButtonWithTitle(closeBtnTitle)
        
        if success {
            alertView.title = successTitle
            alertView.message = successText
        }else{
            alertView.title = failedTitle
            alertView.message = failedText
        }
        
        alertView.show()
    }
    
    
    //////////////////////////////////////////
    //IMAGE PICKER//
    //////////////////////////////////////////
    
    //イメージピッカーの画像取得完了
    func ImagePickerController(picker: UIImagePickerController?, didFinishPickingImage image: UIImage?, editingInfo: NSDictionary!){
        savedImage = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    //イメージピッカーがキャンセルされた
    func imagePickerControllerDidCancel(picker: UIImagePickerController!){
        savedImage = nil
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}