class Animal
{
    var name: String
    var age: Int
    
    init(animalName: String, age: Int)
    {
        self.name = animalName
        self.age = 0
    }
    
    func say()
    {
        print("Hi, I am \(name).")
    }
}

let animal = Animal(animalName: "Stone", age: 20)
let animal2 = animal
animal2.name = "Charlie"
animal.say()
animal2.say()
