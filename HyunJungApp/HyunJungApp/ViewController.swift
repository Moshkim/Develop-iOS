//
//  ViewController.swift
//  HyungJungApp
//
//  Created by KWANIL KIM on 11/13/15.
//  Copyright © 2015 University of California, Davis. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController{
    
    var timer = NSTimer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashNO.hidden = true
        spashTransparent.hidden = true
        
        
        if (splashLoading != nil) {
            helper.delay(4, closure: {
                self.splashLoading.alpha -= 0.2
                self.splashLoading.hidden = true
            })
        }
    }
    
    //    init(aDecoder: NSCoder!) {
    //        super.init(coder: aDecoder)!
    //        self.splashLoading.isAnimating()
    //    }
    //
    //    required init?(coder aDecoder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    
    
    //    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?)-> NSTimeInterval {
    //        return 0
    //    }
    //    func animationControllerForPresentedController(
    //        presented: UIViewController,
    //        presentingController presenting: UIViewController,
    //        sourceController source: UIViewController) ->
    //        UIViewControllerAnimatedTransitioning? {
    //
    //            //return transition
    //    }
    
    
    
    @IBOutlet weak var splashLoading: UIImageView!
    
    @IBOutlet weak var splashImage: UIImageView!
    
    @IBOutlet weak var spashTransparent: UIImageView!
    
    @IBAction func splashText(sender: UITextField) {
        
        if sender.text == "Love" || sender.text == "love" {
            
            
        }
        
    }
    
    
    @IBAction func splashBoolen(sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            splashNO.hidden = false
            splashNO.text = "Nice, That is what I want!"
            spashTransparent.hidden = false
            
        }
            
        else if sender.selectedSegmentIndex == 1 {
            spashTransparent.hidden = true
            splashNO.text = "Choose Again!"
            splashNO.hidden = false
            
        }
        
    }
    
    
    
    @IBOutlet weak var splashNO: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}