//
//  ViewController.swift
//  NavigationController-Popover
//
//  Created by Tim Even on 03-12-15.
//  Copyright © 2015 evenwerk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    var popover:UIPopoverPresentationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(sender: UIButton) {
            if popover == nil {
                let navigationController = self.storyboard?.instantiateViewControllerWithIdentifier("Navigation") as! UINavigationController
                navigationController.modalPresentationStyle = .Popover
                popover = navigationController.popoverPresentationController
                navigationController.preferredContentSize = CGSizeMake(320.0, 480.0)
                popover.delegate = self
                popover.sourceView = sender
                popover.sourceRect = CGRectMake(0, 6, sender.bounds.width, sender.bounds.height)
                
                
                self.presentViewController(navigationController, animated: true, completion: nil)
            }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

