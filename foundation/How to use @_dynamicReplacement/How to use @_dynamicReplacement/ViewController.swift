//
//  ViewController.swift
//  How to use @_dynamicReplacement
//
//  Created by Julio Pramaitama on 26/09/24.
//

import UIKit

class DemoClass
{
    dynamic var oldValue : String
    {
        return "This is the old value."
    }
    dynamic func oldFunction()
    {
        print("This is the old function.")
    }
}

extension DemoClass
{
    @_dynamicReplacement(for: oldValue)
    var newNumber : String {
        return "This is the new value."
    }
    
    @_dynamicReplacement(for: oldFunction())
    func newFunction()
    {
        print("This is the new function.")
//        oldFunction()
        DemoClass().oldFunction()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(DemoClass().oldValue)
        DemoClass().oldFunction()
    }


}
