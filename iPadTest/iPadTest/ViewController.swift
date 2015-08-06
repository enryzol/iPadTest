//
//  ViewController.swift
//  iPadTest
//
//  Created by Jackie on 15/8/5.
//  Copyright (c) 2015年 Jackie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func GoNext(sender: AnyObject) {
        
        let view : PhotosViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PhotosViewController") as! PhotosViewController;
        
        self.presentViewController(view, animated: true, completion: nil);
        
    }

}

