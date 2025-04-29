class Animal
{
    var name: String
    var age: Int
    
    init(name: String, age: Int)
    {
        self.name = name
        self.age = 0
    }
    
    func say()
    {
        print("I am \(name).")
    }
    
    deinit
    {
        print("I'm deinited")
    }
}

var animal: Animal? = Animal(name: "Julio", age: 23)
animal?.say()
animal = nil
