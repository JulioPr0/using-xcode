protocol Walking {
    func walk()
}

protocol Eating {
    func eat()
}

protocol Fighting: Walking {
    func fight()
}

class Animal: Fighting, Eating {
    var name = "Bird"
    var age = 1
    var damage = 10

    func fight() {
        print("Fighting very hard!")
    }

    func eat() {
        print("Happily eating!")
    }

    func walk() {
        print("Walking gracefully")
    }

    func say() {
        print("I'm a dove of peace!")
    }
}

var animal = Animal()
animal.damage
animal.fight()
animal.eat()
animal.walk()
animal.say()

extension Animal {
    var weight: Double {
        return 15.0
    }

    func getWeight() -> Double {
        return 45.6
    }
}

var secondAnimal = Animal()
secondAnimal.say()
secondAnimal.getWeight()
