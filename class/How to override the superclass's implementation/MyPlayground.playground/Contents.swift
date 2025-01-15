class Animal
{
    func say()
    {
        print("I'm animal.")
    }
}

class Dog: Animal
{
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    override func say()
    {
        super.say()
        print("I'm a dog, my name is \(name).")
    }
}

var dog = Dog(name:"Nono")
dog.say()
