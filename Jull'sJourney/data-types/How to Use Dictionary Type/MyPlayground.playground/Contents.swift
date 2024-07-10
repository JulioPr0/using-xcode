import Foundation

var airports : Dictionary<String, String> = ["DUB": "Dublin", "TYO":
"Tokyo"]
print(airports)

//var firstStudent = ["Name": "Peter", "Age": "12"]
//print(firstStudent)

var firstStudent = ["Name": "Peter", "Age": 12] as [String : Any]
print(firstStudent)

var secondStudent : Dictionary<String, Any> = ["Name": "Peter", "Age": 25]
print(secondStudent)

secondStudent["Name"]
secondStudent["Age"]
secondStudent["Name"] = "John"
secondStudent["Age"] = 18
secondStudent["Gender"] = "Male"

secondStudent.count
secondStudent.description
secondStudent.isEmpty
secondStudent.updateValue("Jerry", forKey: "Name")
secondStudent.popFirst()
print(secondStudent)
secondStudent.removeAll()

firstStudent.first?.key
firstStudent.first?.value
firstStudent.reversed()
print(firstStudent)

for key in firstStudent.keys
{
    print(">>>>>\(key)")
}

for value in firstStudent.values
{
    print(">>>>>\(value)")
}

var dicpts : Dictionary<String, String> = ["i:":"yi", "i,r":"x",
                                           "e":"x", "æ":"x"]
print(dicpts)

let keys = Array(dicpts.keys).sorted()
print(keys[0])
