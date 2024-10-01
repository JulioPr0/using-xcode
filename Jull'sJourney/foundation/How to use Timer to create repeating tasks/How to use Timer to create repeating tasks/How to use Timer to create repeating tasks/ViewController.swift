//
//  ViewController.swift
//  How to use Timer to create repeating tasks
//
//  Created by Julio Pramaitama on 15/09/24.
//

import UIKit

class ViewController: UIViewController {

    var appleCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let time = Timer(timeInterval: 1.0, repeats: false) { (timer) in
//            print("Timer in a block.")
//        }
//        time.fire()
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
//            print("scheduledTimer in a block.")
//        }
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerAction(_:)), userInfo: "an apple", repeats: true)
    }
    
    @objc func timerAction(_ timer: Timer)
    {
        if self.appleCount == 3
        {
            timer.invalidate()
            return
        }
        
        let parameter = timer.userInfo
        print("I'm eating \(parameter!).")
        
        self.appleCount += 1
    }
}
