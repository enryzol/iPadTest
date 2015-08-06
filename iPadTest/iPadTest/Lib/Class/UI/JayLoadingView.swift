//
//  JayLoadingView.swift
//  iPadTest
//
//  Created by Jackie on 15/8/6.
//  Copyright (c) 2015年 Jackie. All rights reserved.
//

import UIKit

class JayLoadingView{
    
    var ImageView : UIImageView  = UIImageView(frame: CGRectMake(UIScreen.mainScreen().applicationFrame.width/2-50, UIScreen.mainScreen().applicationFrame.height/2-50, 100, 100));;
    
    
//    var array:[UIImage] = [];
//    array.append(UIImage(named: "loading1.png")!);
//    array.append(UIImage(named: "loading2.png")!);
//    array.append(UIImage(named: "loading3.png")!);
    
    var array:[UIImage] = [];
    
    init(){
        
        println("JayLoadingView init");
        
    }
    
    
    func setImagesArray(array:[UIImage]){
        
        self.array = array;
        ImageView.animationImages = array as [AnyObject]; //动画图片数组
        ImageView.animationDuration = 1.5; //执行一次完整动画所需的时长
        //    gifImageView.animationRepeatCount = 0;  //动画重复次数 0表示无限次，默认为0
        
    }
    
    func show(view:UIView){
        view.addSubview(ImageView);
    }
    
    func getLoadingView()->UIImageView{
        ImageView.startAnimating();
        return ImageView;
    }
    
    func removeFromSuperview(){
        self.ImageView.removeFromSuperview();
    }
    
}
