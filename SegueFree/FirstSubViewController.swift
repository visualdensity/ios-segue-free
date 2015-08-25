//
//  FirstSubViewController.swift
//  SegueFree
//
//  Created by Wee Keat Chin on 25/08/2015.
//  Copyright (c) 2015 Wee Keat Chin. All rights reserved.
//

import UIKit

class FirstSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextTapped(sender: AnyObject) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("SecondSubView") as! SecondSubViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func backTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
