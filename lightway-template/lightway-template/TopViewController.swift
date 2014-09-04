//
//  TopViewController.swift
//  lightway-template
//
//  Created by hayato.iida on 2014/07/21.
//  Copyright (c) 2014年 hayato.iida. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet var btn_info: UIButton!
    @IBOutlet var btn_back: UIButton!
    @IBOutlet var btn_top: UIButton!
    
    var appNavigation:AppNavigationViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func TouchBack(sender: UIButton) {
        self.appNavigation?.showBack()
    }
    @IBAction func TouchTop(sender: UIButton) {
        self.appNavigation?.showTop()
    }
    @IBAction func TouchInfo(sender: UIButton) {
        self.appNavigation?.showInfo(sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "embedContainer") {
            self.appNavigation = segue.destinationViewController as? AppNavigationViewController
        }
    }

}
