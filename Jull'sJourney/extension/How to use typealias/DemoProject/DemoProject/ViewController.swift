//
//  ViewController.swift
//  DemoProject
//
//  Created by Julio Pramaitama on 26/08/24.
//

import UIKit
typealias Distance = Double
typealias Position = (Int, Int)
typealias TableDelegates = UITableViewDelegate & UITableViewDataSource
typealias Response = (_ code: Int, _ json: Dictionary<String, Any>) -> ()

class ViewController: UIViewController, TableDelegates {
    
    func getUserInfo(url:String, response: Response) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
    -> Int {
        code
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        code
    }
}

class viewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let distance : Distance = 10.2
        let playerPosition : Position = (0, 0)
        
    }
}
