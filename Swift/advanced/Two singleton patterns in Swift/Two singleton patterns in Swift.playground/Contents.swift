import UIKit

final class SingleClass: NSObject {
    static let shared = SingleClass()
    private override init() {}
    
    func say() {
        print("Hello, Julls")
    }
}
SingleClass.shared.say()

final class SecondSingletonClass: NSObject {
    static var shared: SecondSingletonClass {
        struct Static {
            static let instance = SecondSingletonClass()
        }
        return Static.instance
    }
    private override init() {}
    
    func say() {
        print("Hello, Julls")
    }
    
}

SecondSingletonClass.shared.say()
