func getTotal(number1: Int, number2: Int) -> Int 
{
    return number1 + number2
}
getTotal(number1: 1, number2: 1)

let newFunction: (Int, Int) -> Int = getTotal
newFunction(1, 1)

let anotherFunction = getTotal
anotherFunction(1, 1)

func printHelloSwift() 
{
    print("Hello, Swift!")
}

let anotherGreeting: ()->() = printHelloSwift
anotherGreeting()
