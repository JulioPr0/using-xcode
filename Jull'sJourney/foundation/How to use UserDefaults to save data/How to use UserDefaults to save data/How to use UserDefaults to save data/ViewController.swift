//
//  ViewController.swift
//  How to use UserDefaults to save data
//
//  Created by Julio Pramaitama on 15/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let userDefault = UserDefaults.standard
        
        userDefault.set(35, forKey: "MyAge")
        print(userDefault.integer(forKey: "MyAge"))
        
        userDefault.set(78.5, forKey: "Percentage")
        print(userDefault.float(forKey: "Percentage"))
        
        userDefault.set(3.14159265, forKey: "PI")
        print(userDefault.double(forKey: "PI"))
        
        userDefault.set(true, forKey: "IsPassed")
        print(userDefault.bool(forKey: "IsPassed"))
        
        userDefault.set(URL(string:"https//www.websitejulio.com")!, forKey: "URL")
        print(userDefault.url(forKey: "URL")!)
        
        userDefault.set("CoolKeTang", forKey: "Company")
        print(userDefault.string(forKey: "Company")!)
        
        userDefault.set(["Xcode", "Swift"], forKey: "Languages")
        print(userDefault.array(forKey: "Languages") as! [String])
        
        userDefault.set(["Name": "Julio"], forKey: "User")
        print(userDefault.dictionary(forKey: "User") as! [String: String])
        
        userDefault.removeObject(forKey: "User")
        print(userDefault.dictionary(forKey: "User") ?? "")
        
        do {
            let person = UserPerson()
            person.name = "Hoiluj"
            let personData = try NSKeyedArchiver.archivedData(withRootObject: person, requiringSecureCoding: true)
            userDefault.set(personData, forKey: "Teacher")

            if let data = userDefault.data(forKey: "Teacher") {
                let teacher = try NSKeyedUnarchiver.unarchivedObject(ofClass: UserPerson.self, from: data)
                print(teacher?.name ?? "")
            }
        } catch {
            print("Archive error.")
        }
    }
}

class UserPerson: NSObject, NSSecureCoding {
    static var supportsSecureCoding: Bool = true
    var name: String?

    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
    }

    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String
    }

    override init() {
        super.init()
    }
}
