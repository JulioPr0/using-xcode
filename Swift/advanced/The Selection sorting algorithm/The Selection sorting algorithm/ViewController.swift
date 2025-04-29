//
//  ViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit

extension Array where Element:Comparable {
    mutating func selectorSort()
    {
        var min = 0
        for i in 0..<self.count-1
        {
            min = i
            
            for j in i+1...self.count-1
            {
                if self[j] < self[min]
                {
                    min = j
                }
            }
            
            if min != i
            {
                swap(i: min, j: i)
            }
        }
    }
}

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
        var min = 0
        
        for i in 0..<self.arrayToBeSorted.count-1
        {
            min = i
            for j in i+1...self.arrayToBeSorted.count-1
            {
                if self.arrayToBeSorted[j] < self.arrayToBeSorted[min]
                {
                    min = j
                }
            }
            
            if min != i
            {
                swapTwoViews(first: i, second: min)
            }
        }
    }


}
