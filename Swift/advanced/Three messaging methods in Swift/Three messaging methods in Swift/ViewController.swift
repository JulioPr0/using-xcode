//
//  ViewController.swift
//  Three messaging methods in Swift
//
//  Created by Julio Pramaitama on 10/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = Int(self.view.frame.size.width - 40)
        let greetingButton = UIButton(frame: CGRect(x: 20, y: 100, width: width, height: 40))
        greetingButton.setTitle("Greeting", for: .normal)
        greetingButton.backgroundColor = .orange
//        greetingButton.addTarget(self, action:
//            #selector(ViewController.buttonTapped), for: .touchUpInside)
//        greetingButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        greetingButton.tag = 1
        greetingButton.addTarget(self, action: #selector(buttonTappedFor(_:)), for: .touchUpInside)
        
//        let anotherMethod : Selector = #selector(buttonTappedFor(_:))
//        
//        greetingButton.addTarget(self, action: anotherMethod, for: .touchUpInside)
        
        self.view.addSubview(greetingButton)
        
//        let timerSelector = #selector(ViewController.timerAction(_:))
//        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: timerSelector, userInfo: "parameter", repeats: true)
        
        let newSelector = #selector(calledByController)
//        self.perform(newSelector)
//        self.perform(newSelector, with: nil, afterDelay: 2.0)
//        self.perform(newSelector, on: .main, with: nil, waitUntilDone: true)
        self.performSelector(inBackground: newSelector, with: nil)
    }
    
    @objc func calledByController()
    {
        print("called ByController")
    }
    
    @objc func timerAction(_ timer:Timer)
    {
        let parameter = timer.userInfo
        print(parameter ?? "")
    }
    
    @objc func buttonTapped() {
        print("button Tapped.")
    }
    
    @objc func buttonTappedFor(_ sender: UIButton) {
        let tag = sender.tag
        print("button tag: \(tag)")
    }


}

