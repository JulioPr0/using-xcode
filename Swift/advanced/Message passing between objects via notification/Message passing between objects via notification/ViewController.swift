//
//  ViewController.swift
//  Message passing between objects via notification
//
//  Created by Julio Pramaitama on 17/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var nameField: CustomView!
    var passwordField: CustomView!
    var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = Int(self.view.frame.size.width) - 40
        let height = 40
        
        nameField = CustomView(frame: CGRect(x: 20, y: 80, width: width, height: height))
        nameField.controller = self
        self.view.addSubview(nameField)
        
        passwordField = CustomView(frame: CGRect(x: 20, y: 140, width: width, height: height))
        passwordField.controller = self
        self.view.addSubview(passwordField)
        
        submitButton = UIButton(frame: CGRect(x: 20, y: 240, width: width, height: height))
        submitButton.setTitle("Submit", for: .normal)
        
        submitButton.addTarget(self, action:
            #selector(ViewController.submitForm(_:)), for: .touchUpInside)
        submitButton.backgroundColor = .gray
        submitButton.isEnabled = false
        self.view.addSubview(submitButton)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.checkForm(_:)), name: NSNotification.Name(rawValue: "checkFormatNotification"), object: nil)
    }
    
    @objc func checkForm(_ notification: Notification?)
    {
        if self.nameField.textField.text != "" &&
            self.passwordField.textField.text != ""
        {
            self.submitButton.isEnabled = true
            submitButton.backgroundColor = .orange
        }
        else
        {
            self.submitButton.isEnabled = false
            submitButton.backgroundColor = .gray
        }
    }
    
    @objc func submitForm(_ sender:UIButton)
    {
        print("submitForm....")
    }

    deinit
    {
        NotificationCenter.default.removeObserver(self)
    }

}
