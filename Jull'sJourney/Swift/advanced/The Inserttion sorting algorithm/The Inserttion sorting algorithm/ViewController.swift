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
        var list = self.arrayToBeSorted
        var step: Int = list.count / 2
        while step >= 1
        {
            for i in 0..<list.count
            {
                var j = i + step
                while j >= step && j < list.count
                {
                    if list[j] < list [j - step]
                    {
                        weak var weak_self = self
                        DispatchQueue.main.async {
                            let view1 = weak_self?.view.viewWithTag(j+1)
                            let view2 = weak_self?.view.viewWithTag(j-step+1)
                            
                            let posX1 = view1?.frame.origin.x
                            let posX2 = view2?.frame.origin.x
                            
                            view1?.frame.origin.x = posX2!
                            view2?.frame.origin.x = posX1!
                            
                            view1?.tag = j-step+1
                            view2?.tag = j+1
                            
                            let temp = list[j]
                            list[j] = list[j-step]
                            list[j-step] = temp
                            
                            j = j - step
                        }
                        Thread.sleep(forTimeInterval: 0.01)
                    }
                    else
                    {
                        break
                    }
                }
            }
            step = step / 2
        }
    }


}
