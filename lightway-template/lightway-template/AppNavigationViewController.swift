//
//  AppNavigationViewController.swift
//  lightway-template
//
//  Created by hayato.iida on 2014/07/21.
//  Copyright (c) 2014年 hayato.iida. All rights reserved.
//

import UIKit

class AppNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func show_back(){
        self.popViewControllerAnimated(true)
    }
    func show_top(){
        self.popToRootViewControllerAnimated(true)
    }
    func show_info(sender:UIButton){
            self.popToRootViewControllerAnimated(false)
            self.topViewController.performSegueWithIdentifier("showInfo", sender: nil)
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
