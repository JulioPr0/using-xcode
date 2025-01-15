class Person
{
    var name: String = "Julio"
    var age: Int = 20
    var height: Double = 130
    
    subscript(index: Int) -> AnyObject
    {
        switch index
        {
        case 0:
            return name as AnyObject
        case 1:
            return age as AnyObject
        case 2:
            return height as AnyObject
        default:
            return name as AnyObject
        }
    }
}

let person = Person()
person[0]
person[1]
person[2]
