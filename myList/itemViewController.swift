//
//  itemViewController.swift
//  myList
//
//  Created by Apple on 16/06/15.
//  Copyright (c) 2015 mcanche. All rights reserved.
//

import UIKit
import CoreData

class itemViewController: UIViewController {

    
    @IBOutlet var textFieldItem: UITextField! = nil
    @IBOutlet var textFieldQuantity: UITextField! = nil
    @IBOutlet var textFieldInfo: UITextField! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveTapped(sender: AnyObject) {
        
        //reference to tour app delegate
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //referente moc
        let context: NSManagedObjectContext = appDel.managedObjectContext!
        let en = NSEntityDescription.entityForName("List", inManagedObjectContext: context)
        
        // create instance of pur data model and initialize
        var newItem = Model(entity: en!, insertIntoManagedObjectContext: context)
        
        //map our properties
        newItem.item = textFieldItem.text
        newItem.quantity = textFieldQuantity.text
        newItem.info = textFieldInfo.text
        
        
        //save our context
        context.save(nil)
        println(newItem)
        
        //navigate back to root vc
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
