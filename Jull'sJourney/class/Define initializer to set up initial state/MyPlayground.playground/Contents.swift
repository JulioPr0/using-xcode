class Person
{
    var name: String
    var age: Int
    
    init()
    {
        self.name = ""
        self.age = 0
    }
    
    convenience init(name: String, age: Int!)
    {
        self.init()
        self.name = name
        self.age = age
    }
    
    func say()
    {
        print("Hi, I am \(name), and \(age) years old.")
    }
}

let person = Person()
person.name = "Julio"
person.age = 23
person.say()

let secondPerson = Person(name: "Yulia", age: 25)
secondPerson.say()
