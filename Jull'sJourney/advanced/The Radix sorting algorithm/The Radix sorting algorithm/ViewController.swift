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
        var bucket: Array<Array<Int>> = []
        for _ in 0..<10 {
            bucket.append([])
        }
        
        var maxNumber = list[0]
        for item in list {
            if maxNumber < item {
                maxNumber = item
            }
        }
        
        let maxLength = "\(maxNumber)".count
        
        for digit in 1...maxLength {
            for item in list {
                let baseNumber = fetchBaseNumber(number: item, digit: digit)
                bucket[baseNumber].append(item)
            }
            
            var index = 0
            for i in 0..<bucket.count {
                while !bucket[i].isEmpty {
                    list[index] = bucket[i].remove(at: 0)
                    udpateView(j: index, height: list[index])
                    index += 1
                }
            }
        }
        
    }
    func fetchBaseNumber(number: Int, digit: Int) -> Int {
        if digit > 0 && digit <= "\(number)".count {
            var numbersArray: Array<Int> = []
            for char in "\(number)"
            {
                numbersArray.append(Int("\(char)")!)
            }
            return numbersArray[numbersArray.count - digit]
        }
        return 0
    }

}

