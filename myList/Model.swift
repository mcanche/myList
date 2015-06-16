//
//  Model.swift
//  myList
//
//  Created by Apple on 16/06/15.
//  Copyright (c) 2015 mcanche. All rights reserved.
//

import UIKit
import CoreData

@objc(Model)
class Model: NSManagedObject {
    @NSManaged var item: String
    @NSManaged var quantity: String
    @NSManaged var info: String
    
    
}
