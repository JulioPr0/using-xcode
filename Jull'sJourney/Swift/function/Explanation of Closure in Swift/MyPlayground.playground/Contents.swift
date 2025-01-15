var sum: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}
print(sum(1, 1))

func sum(a: Int, b: Int) -> Int {
    return a + b
}
print(sum(1, 1))

var anotherSum = { (a: Int, b: Int) -> Int in
    return a + b
}
print(anotherSum(1, 1))

var thirdSum: (Int, Int) -> Int = { return $0 + $1 }
print(thirdSum(1, 1))

var fourthSum: (Int, Int) -> Int = { $0 + $1 }
print(fourthSum(1, 1))

let array = [4, 2, 3].sorted { $0 < $1 }
print(array)

func subTwoNumbers(number1: Int, number2: Int, method: (Int, Int) -> Int) -> Int {
    return method(number1, number2)
}

print(subTwoNumbers(number1: 1, number2: 1, method: { (a: Int, b: Int) -> Int in
    return a + b
}))

print(subTwoNumbers(number1: 1, number2: 1, method: sum))

print(subTwoNumbers(number1: 1, number2: 1, method: +))

print(subTwoNumbers(number1: 2, number2: 3, method: *))

print(subTwoNumbers(number1: 2, number2: 3) { $0 * $1 })
