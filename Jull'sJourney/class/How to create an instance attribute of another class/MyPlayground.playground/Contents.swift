class Animal
{
    var name: String = "Lovely Dog"
    var age: Int = 1
}

class Person
{
    var name: String = "Jull"
    var age: Int = 23
    lazy var pet: Animal = Animal()
}

var person = Person()
person.age = 11
person.pet = Animal()
person.pet.name = "Sweet Cat"
person
