func getTotal(number1: Int, number2: Int) -> Int
{
    return number1 + number2
}
getTotal(number1: 1, number2: 1)

let bewFunction: (Int, Int) -> Int = getTotal
newFunction(1, 1)

let anotherFunction = getTotal
