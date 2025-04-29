//
//  ViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit

extension Array where Element: Comparable {
    mutating func bubbleSort()
    {
        for i in 0..<self.count-1
        {
            for j in (i+1...self.count-1).reversed()
            {
                if self[j] < self[j-1]
                {
                    swap(i: j, j: j-1)
                }
            }
        }
    }
}

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func sort()
    {
        for i in 0..<self.arrayToBeSorted.count-1
        {
            for j in (i+1...self.arrayToBeSorted.count-1).reversed()
            {
                if self.arrayToBeSorted[j] < self.arrayToBeSorted[j-1]
                {
                    swapTwoViews(first: j, second: j-1)
                }
            }
        }
    }


}
