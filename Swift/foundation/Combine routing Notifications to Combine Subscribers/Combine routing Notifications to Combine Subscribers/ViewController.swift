//
//  ViewController.swift
//  Combine routing Notifications to Combine Subscribers
//
//  Created by Julio Pramaitama on 03/10/24.
//

import UIKit
import Combine

extension UITextField {
    var textPublisher: AnyPublisher<String?, Never> {
        NotificationCenter.default
            .publisher(for: UITextField.textDidChangeNotification, object: self)
            .compactMap { $0.object as? UITextField }
            .filter { $0 == self }
            .map { $0.text }
            .eraseToAnyPublisher()
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    private var cancelList: Set<AnyCancellable> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.textPublisher
            .sink { text in
                if let text = text {
                    print(text)
                }
            }
            .store(in: &cancelList)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        cancelList.forEach { subscriber in
            subscriber.cancel()
        }
    }
}
