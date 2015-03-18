//
//  ViewController.swift
//  File Creation
//
//  Created by Mohsin on 30/11/2014.
//  Copyright (c) 2014 Mohsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        var docPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as NSString
        
        let isCreat: Bool =  NSFileManager.defaultManager().createDirectoryAtPath(docPath.stringByAppendingPathComponent("MohsinFolder1"), withIntermediateDirectories: true, attributes: nil, error: nil)
        
        if isCreat {
            
            println("all folder: \(NSFileManager.defaultManager().contentsOfDirectoryAtPath(docPath, error: nil))")
            
        }
        
        println(docPath)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: AnyObject) {
        
        var task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://images4.fanpop.com/image/photos/24100000/Roses-from-Princess-yorkshire_rose-24169767-2104-1860.jpg")! ){(data, response, error) in
            
            println("Response: \(response)")
            
            var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
          //  println("Body: \(data)\n\n")
        }
        task.resume()
    }

}

