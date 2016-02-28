//
//  ComposeViewController.swift
//  HW 4
//
//  Created by Alvin Hsia on 2/24/16.
//  Copyright © 2016 Alvin Hsia. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textCompose: UIImageView!
    @IBOutlet weak var photoCompose: UIImageView!
    @IBOutlet weak var quoteCompose: UIImageView!
    @IBOutlet weak var linkCompose: UIImageView!
    @IBOutlet weak var chatCompose: UIImageView!
    @IBOutlet weak var videoCompose: UIImageView!
    
    var topRowStartingYPos = CGFloat(224)
    var bottomRowStartingYPos = CGFloat(340)
    var bottomHideYPos = CGFloat(600)
    var topHideYPos = CGFloat(-800)
    
    override func viewWillAppear(animated: Bool) {
        textCompose.center.y = bottomHideYPos
        photoCompose.center.y = bottomHideYPos
        quoteCompose.center.y = bottomHideYPos
        linkCompose.center.y = bottomHideYPos
        chatCompose.center.y = bottomHideYPos
        videoCompose.center.y = bottomHideYPos
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // first appearance - photo
        UIView.animateWithDuration(0.2, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.photoCompose.center.y = self.topRowStartingYPos
            }, completion: nil)
        
        // second appearance - chat
        UIView.animateWithDuration(0.2, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.chatCompose.center.y = self.bottomRowStartingYPos
            }, completion: nil)
        
        // third appearance - quote
        UIView.animateWithDuration(0.2, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.quoteCompose.center.y = self.topRowStartingYPos
            }, completion: nil)
        
        // fourth appearance - text
        UIView.animateWithDuration(0.2, delay: 0.4, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.textCompose.center.y = self.topRowStartingYPos
            }, completion: nil)
        
        // fifth appearance - link
        UIView.animateWithDuration(0.2, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.linkCompose.center.y = self.bottomRowStartingYPos
            }, completion: nil)
        
        // sixth appearance - video
        UIView.animateWithDuration(0.2, delay: 0.6, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.videoCompose.center.y = self.bottomRowStartingYPos
            }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressDismiss(sender: UIButton) {
        
        // first disappearance - photo
        UIView.animateWithDuration(0.2, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.photoCompose.center.y = self.topHideYPos
            }, completion: nil)
        
        // second disappearance - chat
        UIView.animateWithDuration(0.2, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.chatCompose.center.y = self.topHideYPos
            }, completion: nil)
        
        // third disappearance - quote
        UIView.animateWithDuration(0.2, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.quoteCompose.center.y = self.topHideYPos
            }, completion: nil)
        
        
        // fourth disappearance - text
        UIView.animateWithDuration(0.2, delay: 0.4, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.textCompose.center.y = self.topHideYPos
            }, completion: nil)
        
        // fifth disappearance - link
        UIView.animateWithDuration(0.2, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.linkCompose.center.y = self.topHideYPos
            }, completion: nil)
        
        // sixth disappearance - video
        UIView.animateWithDuration(0.2, delay: 0.6, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.videoCompose.center.y = self.topHideYPos
            }) { (Bool) -> Void in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
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
