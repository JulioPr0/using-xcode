class Person
{
    var name : String
    
    init(name: String)
    {
        self.name = name
    }
    deinit
    {
        print("-------- deinit")
    }
}

var person :Person? = Person(name: "Bill")
var person2 = person
var person3 = person

person = nil
person2 = nil
person3 = nil
