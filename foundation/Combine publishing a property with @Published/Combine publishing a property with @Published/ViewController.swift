//
//  ViewController.swift
//  Combine publishing a property with @Published
//
//  Created by Julio Pramaitama on 03/10/24.
//

import UIKit
import Combine

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var uiSwitch: UISwitch!
    @IBOutlet weak var button: UIButton!
    
    @Published var isButtonEnabled: Bool = false
    @Published var labelText: String = ""
    
    private var buttonSubscriber: AnyCancellable?
    private var labelSubscriber: AnyCancellable?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonSubscriber = $isButtonEnabled
            .receive(on: DispatchQueue.main)
            .assign(to: \.isEnabled, on: button)
        
        labelSubscriber = $labelText
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newText in
                self?.label.text = newText
            }
    }
    
    @IBAction func enableButton(_ sender: UISwitch) {
        isButtonEnabled = sender.isOn
    }
    
    @IBAction func changeLabel(_ sender: Any) {
        labelText = "UIKit & Combine"
    }
}
