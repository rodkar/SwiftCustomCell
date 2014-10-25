//
//  ViewController.swift
//  SwiftCustomCell
//
//  Created by Kar Roderick Sze Hsing on 10/25/14.
//  Copyright (c) 2014 Cloudyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var arrayOfPersons : [Person] = [Person]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpPersons()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpPersons() {
        var person1 = Person(firstName: "Roderick", number: 44, lastName: "Kar")
        var person2 = Person(firstName: "Daisy", number: 45, lastName: "Yim")
        var person3 = Person(firstName: "Peter", number: 23, lastName: "Chan")
        arrayOfPersons.append(person1)
        arrayOfPersons.append(person2)
        arrayOfPersons.append(person3)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPersons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.purpleColor()
        } else {
            cell.backgroundColor = UIColor.orangeColor()
        }
        
        let person = arrayOfPersons[indexPath.row]
        cell.setCell(person.firstName, rightLabelText: person.lastName, middleLabelInt: person.number)
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            arrayOfPersons.removeAtIndex(indexPath.row)
            self.myTableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let person = arrayOfPersons[indexPath.row]
        var detailedViewController : DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as DetailViewController
        detailedViewController.firstNameString = person.firstName
        detailedViewController.lastNameString = person.lastName
        detailedViewController.ageInt = person.number
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        self.myTableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

