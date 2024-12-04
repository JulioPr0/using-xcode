//
//  ViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit

class ViewController: BaseViewController {

    var tempArray: Array<Array<Int>> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func sort() {
        tempArray.removeAll()
        for item in self.arrayToBeSorted {
            var subArray: Array<Int> = []
            subArray.append(item)
            tempArray.append(subArray)
        }
        
        while tempArray.count != 1 {
            var i = 0
            while i < tempArray.count - 1 {
                tempArray[i] = mergeArray(firstList: tempArray[i], secondList: tempArray[i + 1])
                tempArray.remove(at: i + 1)
                for subIndex in 0..<tempArray[i].count {
                    let index = self.countSubItemIndex(endIndex: i, subItemIndex: subIndex)
                    self.udpateView(j: index, height: tempArray[i][subIndex])
                }
                i = i + 1
            }
        }
    }
    
    func mergeArray(firstList: Array<Int>, secondList: Array<Int>) -> Array<Int> {
        var resultList: Array<Int> = []
        var firstIndex = 0
        var secondIndex = 0
        
        while firstIndex < firstList.count && secondIndex < secondList.count {
            if firstList[firstIndex] < secondList[secondIndex] {
                resultList.append(firstList[firstIndex])
                firstIndex += 1
            }
            else {
                resultList.append(secondList[secondIndex])
                secondIndex += 1
            }
        }
        while firstIndex < firstList.count {
            resultList.append(firstList[firstIndex])
            firstIndex += 1
        }
        
        while secondIndex < secondList.count {
            resultList.append(secondList[secondIndex])
            secondIndex += 1
        }
        
        return resultList
    }
    
    func countSubItemIndex(endIndex: Int, subItemIndex: Int) -> Int {
        var sum = 0
        for i in 0..<endIndex {
            sum += tempArray[i].count
        }
        return sum + subItemIndex
    }
}
