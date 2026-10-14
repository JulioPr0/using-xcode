//
//  main.swift
//  DemoProject
//
//  Created by Julio Pramaitama on 03/10/26.
//
import Foundation

protocol KeyboardInspectorDelegate: AnyObject {
    func doWhenKeyboardWillHide()
}

class FormChecker {
    weak var delegate: KeyboardInspectorDelegate?

    func validateForm() {
        print("validating form...")
        delegate?.doWhenKeyboardWillHide()
    }
}

class ControllerClass: KeyboardInspectorDelegate {
    func enterForm() {
        let checker = FormChecker()
        checker.delegate = self
        checker.validateForm()
    }

    func doWhenKeyboardWillHide() {
        print("Enter next page.")
    }
}

let controller = ControllerClass()
controller.enterForm()
