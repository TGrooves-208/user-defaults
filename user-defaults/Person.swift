//
//  Person.swift
//  user-defaults
//
//  Created by Gil Aguilar on 2/24/16.
//  Copyright © 2016 redeye-dev. All rights reserved.
//

import Foundation

class Person: NSObject,NSCoding {
    var firstName: String!
    var lastName: String!
    
    init (first:String, last:String) {
        firstName = first
        lastName = last 
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self.firstName = aDecoder.decodeObjectForKey("firstName") as? String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
        
    }
}