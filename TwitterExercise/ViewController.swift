//
//  ViewController.swift
//  TwitterExercise
//
//  Created by Shajith on 2/19/15.
//  Copyright (c) 2015 zd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(User.currentUser != nil) {
            self.performSegueWithIdentifier("loginSegue", sender: self)
        // Do any additional setup after loading the view, typically from a nib.
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        TwitterClient.sharedInstance.login { (user: User?, error: NSError?) in
            if (user != nil) {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                
            }
        }
    }

}

