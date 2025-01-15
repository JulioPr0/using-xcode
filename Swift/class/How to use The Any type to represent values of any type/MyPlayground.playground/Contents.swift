import UIKit

var anythings = [Any]()

var array1 : [Any] = ["", "", "", "", ""]
var array2 : [Any] = [NSNull.self, NSNull.self, NSNull.self, NSNull.self, 
                      NSNull.self]

anythings.append(NSNull.self)
anythings.append(8)
anythings.append(3.14156)
anythings.append("hello")
anythings.append((3.0, 5.0))
anythings

for item in anythings
{
    switch item
    {
        case let someInt as Int:
            print("An integer value of \(someInt)")
        case let someDouble as Double:
            print("A double value of \(someDouble)")
        case let someString as String:
            print("A string value of \(someString)")
        case let (x, y) as (Double, Double):
            print("An (x, y) pint at \(x), \(y)")
        default:
            print("Something else")
    }
}
