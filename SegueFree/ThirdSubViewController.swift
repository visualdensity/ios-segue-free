//
//  ThirdSubViewController.swift
//  SegueFree
//
//  Created by Wee Keat Chin on 25/08/2015.
//  Copyright (c) 2015 Wee Keat Chin. All rights reserved.
//

import UIKit

class ThirdSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third Sub"

        let nextButton = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.Plain, target: self, action: "goNext")
        self.navigationItem.rightBarButtonItem = nextButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backOneTapped(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func backRootTapped(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func dismissTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func nextTapped(sender: AnyObject) {
        goNext()
    }
    
    func goNext() -> Void {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("FourthSubView") as! FourthSubViewController
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
