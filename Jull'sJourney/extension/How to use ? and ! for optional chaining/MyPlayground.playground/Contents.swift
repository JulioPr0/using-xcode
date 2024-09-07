//var password: Optional<Any>
//var password: String?

//var password: String
//print(password.count)

//var password: String?
//print(password?.count)

//var password: String?
//print(password?.count ?? 0)

//var password: String?
//print(password!.count)

//var password: String?
//password = "123456"
////print(password!.count)
//print(password?.count ?? 0)

class Pet
{
    var name : String?
}

class Person
{
    var name : String?
    var pet : Pet?
}

let person = Person()
person.pet
person.pet?.name

person.pet = Pet()
person.pet
person.pet?.name

person.pet?.name = "Bird"
person.pet?.name
