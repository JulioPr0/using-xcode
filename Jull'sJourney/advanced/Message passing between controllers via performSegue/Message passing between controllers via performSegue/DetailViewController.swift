//
//  DetailViewController.swift
//  Message passing between controllers via performSegue
//
//  Created by Julio Pramaitama on 24/10/24.
//

import UIKit

class DetailViewController: UIViewController {
    var paremeter : String!
    @IBOutlet weak var detailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.detailLabel.text = self.paremeter
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
