//
//  DetailViewController.swift
//  SwiftCustomCell
//
//  Created by Kar Roderick Sze Hsing on 10/25/14.
//  Copyright (c) 2014 Cloudyun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var age: UILabel!
    
    var firstNameString:String?
    var lastNameString:String?
    var ageInt:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstName.text = firstNameString
        self.lastName.text = lastNameString
        self.age.text = String(ageInt!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
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
