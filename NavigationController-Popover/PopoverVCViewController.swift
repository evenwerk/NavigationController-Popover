//
//  PopoverVCViewController.swift
//  NavigationController-Popover
//
//  Created by Tim Even on 03-12-15.
//  Copyright © 2015 evenwerk. All rights reserved.
//

import UIKit

class PopoverVCViewController: UIViewController, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    let animator = Animator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func popOverButtonPressed(sender: UIButton) {
//        self.performSegueWithIdentifier("segue", sender: self)
    }
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            animator.reverse = operation == .Pop
            return animator
        }

}
