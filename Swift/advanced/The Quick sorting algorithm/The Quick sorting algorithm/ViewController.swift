//
//  ViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit


class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func sort()
    {
        for i in 1..<self.arrayToBeSorted.count
        {
            for j in (1 ... i).reversed()
            {
                if self.arrayToBeSorted[j] < self.arrayToBeSorted[j - 1]
                {
                    self.swapTwoViews(first: j, second: j-1)
                }
                else
                {
                    break
                }
            }
        }
    }


}
