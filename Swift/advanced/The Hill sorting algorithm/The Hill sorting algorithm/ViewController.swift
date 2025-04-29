//
//  ViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit

extension Array where Element: Comparable {
    func quickSort(list: inout Array<Int>, low: Int, high: Int)
    {
        if low < high
        {
            let mid = partition(list: &list, low: low, high: high)
            quickSort(list: &list, low: low, high: mid - 1)
            quickSort(list: &list, low: mid + 1, high: high)
        }
    }
    
    private func partition(list: inout Array<Int>, low: Int, high: Int) -> Int
    {
        var low = low
        var high = high
        let temp = list[low]
        
        while low < high
        {
            while low < high && list[high] >= temp
            {
                high -= 1
            }
            list[low] = list[high]
            
            while low < high && list[low] <= temp
            {
                low += 1
            }
            
            list[high] = list[low]
        }
        list[low] = temp
        return low
    }
}


class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc override func reOrderView() {
        processingDate = Date()
        DispatchQueue.global().async {
            self.quickSort(list: &self.arrayToBeSorted, low: 0, high: self.arrayToBeSorted.count - 1)
            
            let endDate = Date()
            print(endDate.timeIntervalSince(self.processingDate))
        }
    }

    func quickSort(list: inout Array<Int>, low: Int, high: Int)
    {
        if low < high
        {
            let mid = partition(list: &list, low: low, high: high)
            quickSort(list: &list, low: low, high: mid - 1)
            quickSort(list: &list, low: mid + 1, high: high)
        }
    }
    
    private func partition(list: inout Array<Int>, low: Int, high: Int) -> Int
    {
        var low = low
        var high = high
        let temp = list[low]
        
        while low < high
        {
            while low < high && list[high] >= temp
            {
                high -= 1
            }
            list[low] = list[high]
            udpateView(j: low, height: list[high])
            
            while low < high && list[low] <= temp
            {
                low += 1
            }
            
            list[high] = list[low]
            udpateView(j: high, height: list[low])
        }
        list[low] = temp
        udpateView(j: low, height: temp)
        
        return low
    }
}
