//
//  Photos.swift
//  iPadTest
//
//  Created by Jackie on 15/8/5.
//  Copyright (c) 2015年 Jackie. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class PhotosViewController: UIViewController {
    
//    let imageView:UIImageView = UIImageView(frame: CGRectMake(UIScreen.mainScreen().applicationFrame.width/2-60, UIScreen.mainScreen().applicationFrame.height/2-60, 120, 120));
    
    let loading : JayLoadingView = JayLoadingView() ;
    
    override func viewDidLoad() {
        
        var array:[UIImage] = [];
        array.append(UIImage(named: "loading1.png")!);
        array.append(UIImage(named: "loading2.png")!);
        array.append(UIImage(named: "loading3.png")!);
        
        //var loading = JayLoadingView();
        
        
        loading.setImagesArray(array);
        self.view.addSubview(loading.getLoadingView());
        
        
        
        
        Alamofire.request(.GET, "http://www.ports-intl.com/data/Database/p.php?c=12")
            .responseJSON { _, _, json, error in
                //println(string);
                //self.imageView.removeFromSuperview();

                
                self.loading.removeFromSuperview();
                
                
                if(error != nil) {
                    NSLog("Error: \(error)")
                }
                else {
                    var json = JSON(json!);
                    if let p1 = json["productsList"][0]["style_no"].string {
                        println(p1);
                    }else{
                        println(json["productsList"][0]["style_no"].error);
                    }
                }
                
                
                
        }
        
    
    }
    
    
}