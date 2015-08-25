//
//  FourthSubViewController.swift
//  SegueFree
//
//  Created by Wee Keat Chin on 25/08/2015.
//  Copyright (c) 2015 Wee Keat Chin. All rights reserved.
//

import UIKit

class FourthSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fourth Sub"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backTapped(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func backSecondTapped(sender: AnyObject) {
        //back to a specific view in the navigation path
        let vc = self.navigationController?.viewControllers[1] as! SecondSubViewController
        self.navigationController?.popToViewController(vc, animated: true)
    }
    
    @IBAction func backFirstTapped(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func flashTapped(sender: AnyObject) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("FlashCardView") as! FlashCardViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func dismissTapped(sender: AnyObject) {
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
