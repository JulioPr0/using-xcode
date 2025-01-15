//
//  ViewController.swift
//  How to use @discardableResult
//
//  Created by Julio Pramaitama on 26/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let userName = getUserName()
        getUserName()
        
        _ = getUserName()
    }
    
    @discardableResult
    func getUserName() -> String {
        print("Get user name from api.")
        return "julpramaitama"
    }


}
