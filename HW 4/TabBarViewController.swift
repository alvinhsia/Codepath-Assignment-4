//
//  TabBarViewController.swift
//  HW 4
//
//  Created by Alvin Hsia on 2/24/16.
//  Copyright © 2016 Alvin Hsia. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set up storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        onTabButtonPress(buttons[selectedIndex])
        buttons[selectedIndex].selected = true
    }
    
    @IBAction func onTabButtonPress(sender: UIButton) {
        
        // set the button indexes
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        sender.selected = true
        
        // set the VC indexes
        let previousVC = viewControllers[previousIndex]
        let currentVC = viewControllers[selectedIndex]
        
        // set the unselected button state
        buttons[previousIndex].selected = false
        
        // remove the previous view controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        // add the current view controller
        addChildViewController(currentVC)
        
        // adjust the size of the view controller
        currentVC.view.frame = contentView.frame
        contentView.addSubview(currentVC.view)
        currentVC.didMoveToParentViewController(self)
    }
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
