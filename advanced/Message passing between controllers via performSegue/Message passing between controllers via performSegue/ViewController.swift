//
//  ViewController.swift
//  Message passing between controllers via performSegue
//
//  Created by Julio Pramaitama on 24/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailLabel:
    UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showDetail(_ sender: Any) {
        self.performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailViewController
        vc.parameter = "Hello, Swift!"
    }
}
