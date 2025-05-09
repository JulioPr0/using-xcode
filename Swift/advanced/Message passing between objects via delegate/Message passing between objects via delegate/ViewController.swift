//
//  ViewController.swift
//  Message passing between objects via delegate
//
//  Created by Julio Pramaitama on 13/10/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var nameField : CustomView!
    var passwordField : CustomView!
    var submitButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = Int(self.view.frame.size.width) - 40
        let height = 40
        
        nameField = CustomView(frame: CGRect(x: 20, y: 80, width: width, height: height))
        nameField.setController(controller: self)
        self.view.addSubview(nameField)
        
        passwordField = CustomView(frame: CGRect(x: 20, y: 140, width: width, height: height))
        passwordField.setController(controller: self)
        self.view.addSubview(passwordField)
        
        submitButton = UIButton(frame: CGRect(x: 20, y: 240, width: width, height: height))
        submitButton.setTitle("Submit", for: .normal)
        submitButton.addTarget(self, action:
            #selector(ViewController.submitForm(_:)), for: .touchUpInside)
        submitButton.backgroundColor = .gray
        submitButton.isEnabled = false
        self.view.addSubview(submitButton)
    }
    
    @objc func submitForm(_ sender:UIButton)
    {
        print("submitForm....")
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool
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
        return true
    }
}
