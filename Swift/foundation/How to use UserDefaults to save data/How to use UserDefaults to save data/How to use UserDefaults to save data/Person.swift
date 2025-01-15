//
//  Person.swift
//  How to use UserDefaults to save data
//
//  Created by Julio Pramaitama on 15/09/24.
//

import UIKit

class Person: NSObject, NSCoding, NSSecureCoding
{
    static var supportsSecureCoding: Bool = true
    var name: String
    
    required init(name:String="") {
        self.name = name
    }
    
    required init(coder decoder: NSCoder)
    {
        self.name = decoder.decodeObject(forKey: "Name") as? String ?? ""
    }
    
    func encode(with coder: NSCoder)
    {
        coder.encode(name, forKey:"Name")
    }
}
