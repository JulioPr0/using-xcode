//
//  ViewController.swift
//  Protocol-oriented programming practice network request
//
//  Created by Julio Pramaitama on 06/09/24.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        HttpClient().send(UserHttpRequest())
        { user in
            if let user = user
            {
                print("user.name: \(user.name)")
                print("user.birthdate: \(user.birthdate)")
                print("user.hobbies: \(user.hobbies)")
            }
        }
    }
}
