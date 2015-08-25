//
//  SecondSubViewController.swift
//  SegueFree
//
//  Created by Wee Keat Chin on 25/08/2015.
//  Copyright (c) 2015 Wee Keat Chin. All rights reserved.
//

import UIKit

class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Sub"

        let nextButton = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.Plain, target: self, action: "goNext" )
        self.navigationItem.rightBarButtonItem = nextButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backTapped(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func dismissTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func flashTapped(sender: AnyObject) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("FlashCardView") as! FlashCardViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func nextTapped(sender: AnyObject) {
        self.goNext()
    }
    
    func goNext() {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ThirdSubView") as! ThirdSubViewController
        self.navigationController?.pushViewController(vc, animated: true)
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
