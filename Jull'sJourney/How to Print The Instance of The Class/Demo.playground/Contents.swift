import Foundation

class MyClass
{
    var level = 1
    var age = 23
    func description()
    {
        print("I am \(age) years old.")
    }
}
let mcObject = MyClass()
print(mcObject)
dump(mcObject)
dump(mcObject.age)
dump(mcObject.description)
