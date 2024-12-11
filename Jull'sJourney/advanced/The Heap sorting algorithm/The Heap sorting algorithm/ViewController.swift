//
//  ViewController.swift
//  The Radix sorting algorithm
//
//  Created by Julio Pramaitama on 04/12/24.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func sort() {
        var list = self.arrayToBeSorted
        var endIndex = list.count - 1
        heapCreate(items: &list)
        while endIndex > 0
        {
            let temp = list[0]
            list[0] = list[endIndex]
            list[endIndex] = temp
            
            self.udpateView(j: 0, height: list[0])
            self.udpateView(j: endIndex, height: list[endIndex])
            
            endIndex -= 1
            heapAdjast(items: &list, startIndex: 0, endIndex: endIndex + 1)
        }
    }
    
    func heapCreate(items: inout Array<Int>)
    {
        var i = items.count
        while i > 0
        {
            heapAdjast(items: &items, startIndex: i - 1, endIndex: items.count - 1)
            i -= 1
        }
    }
    
    func heapAdjast(items: inout Array<Int>, startIndex: Int, endIndex: Int)
    {
        let temp = items[startIndex]
        var fatherIndex = startIndex + 1
        var maxChildIndex = 2 * fatherIndex
        while maxChildIndex <= endIndex
        {
            if maxChildIndex < endIndex && items[maxChildIndex - 1] <
                items[maxChildIndex]
            {
                maxChildIndex = maxChildIndex + 1
            }
            
            if temp < items[maxChildIndex - 1]
            {
                items[fatherIndex - 1] = items[maxChildIndex - 1]
                self.udpateView(j: fatherIndex - 1, height: items[fatherIndex - 1])
            }
            else
            {
                break
            }
            
            fatherIndex = maxChildIndex
            maxChildIndex = 2 * fatherIndex
        }
        items[fatherIndex - 1] = temp
        self.udpateView(j: fatherIndex - 1, height: items[fatherIndex - 1])
    }

}

