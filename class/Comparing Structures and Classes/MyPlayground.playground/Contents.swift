struct Animal
{
    var name: String
    var age: Int
}

let tiger = Animal(name: "Tiger", age: 2)
var lion = tiger
lion.name = "Lion"
tiger.name
lion.name

class Person
{
    var name: String
    var age: Int
    
    init()
    {
        self.name = ""
        self.age = 0
    }
}
let person = Person()
let person2 = person
person2.name = "Maradona"
person.name
person2.name
person2 === person
