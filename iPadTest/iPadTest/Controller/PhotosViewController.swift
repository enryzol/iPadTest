//
//  Photos.swift
//  iPadTest
//
//  Created by Jackie on 15/8/5.
//  Copyright (c) 2015年 Jackie. All rights reserved.
//

import UIKit
import Alamofire


class PhotosViewController: UIViewController {
    
    let imageView:UIImageView = UIImageView(frame: CGRectMake(UIScreen.mainScreen().applicationFrame.width/2-60, UIScreen.mainScreen().applicationFrame.height/2-60, 120, 120));
    
    override func viewDidLoad() {
    
        //NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"loading1.png"],[UIImage imageNamed:@"loading2.png"],[UIImage imageNamed:@"loading3.png"], nil, nil];
        
        //let array: NSMutableArray = NSMutableArray(objects:UIImage(named: "loading1.png")!,objects:UIImage(named: "loading2.png"),objects:UIImage(named: "loading3.png"));
        
        var array:[UIImage] = [];
        //UIImage(named: "loading1.png"),UIImage(named: "loading2.png"),UIImage(named: "loading3.png")
        array.append(UIImage(named: "loading1.png")!);
        array.append(UIImage(named: "loading2.png")!);
        array.append(UIImage(named: "loading3.png")!);
        
        
        
        //NSMutableArray[UIImage(named: "loading1.png")];
        //UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 80, 30)];
        
        //let imageView = UIImageView(frame: CGRectMake(100, 200, 120, 120));
        
        imageView.animationImages = array as [AnyObject]; //动画图片数组
        imageView.animationDuration = 1.5; //执行一次完整动画所需的时长
        //    gifImageView.animationRepeatCount = 0;  //动画重复次数 0表示无限次，默认为0
//        [imageView startAnimating];
//        [self.view addSubview:imageView];

        imageView.startAnimating();
        self.view.addSubview(imageView);
        
        
        Alamofire.request(.GET, "http://www.ports-intl.com/data/Database/p.php?c=12")
            .responseString { _, _, string, _ in
                println(string);
                self.imageView.removeFromSuperview();
        }
        
    
    }
    
    
}