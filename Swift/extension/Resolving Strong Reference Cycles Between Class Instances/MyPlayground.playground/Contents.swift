class People
{
    var name : String
    var pet : Pet?
    
    init(name:String)
    {
        self.name = name
        print("People is initialized.")
    }
    
    deinit
    {
        print("People is deinitialized.")
    }
}

class Pet
{
    var name : String
    weak var master : People?
    
    init(name:String)
    {
        self.name = name
        print("Pet is initialized.")
    }
    
    deinit
    {
        print("Pet is deinitialized.")
    }
}

var master:People?
var dog:Pet?

master = People(name: "Jerry")
dog = Pet(name: "Dog")

master!.pet = dog
dog!.master = master

master = nil
dog = nil
