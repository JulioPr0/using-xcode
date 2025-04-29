//
//  ViewController.swift
//  Use of closures in timed tasks, animations and threads
//
//  Created by Julio Pramaitama on 12/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var animationVeiw: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer:Timer) in
//            print("Timer action...")
//        }
        
        animationVeiw = UIView(frame: CGRect(x: 0, y: 40, width: 50, height: 50))
        animationVeiw.backgroundColor = .orange
        self.view.addSubview(animationVeiw)
        
//        UIView.animate(withDuration: 1.0, animations: {
//            self.animationVeiw.frame = CGRect(x: 200, y: 40, width: 50, height: 50)
//            
//        }) { (end:Bool) in
//            print("Animation done.")
//        }
//        Thread.detachNewThread {
//            print("Do something on a new thread.")
//        }
        
//        DispatchQueue.main.async {
//            print("DispatchQueue.main.async")
//        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            print("DispatchQueue.main.asyncAfter")
        }
    }

}
