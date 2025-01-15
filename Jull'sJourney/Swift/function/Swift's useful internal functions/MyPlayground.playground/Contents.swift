//2/2
//abs(-2)
//assert(true)
//
//max(2, 1)
//max(1, 2, 3, 4, 5)
//min(2, 1)
//min(1, 2, 3, 4, 5)
//print("Hello, ", "world!")
//debugPrint("Hello, ", "world!")
//print("I", "have", 5, "stars", separator: " ... ")
//print("I", "have", 5, "stars", separator: " ... ", terminator: "!")

//let zereos = repeatElement("Star", count: 5)
//for x in zereos
//{
//    print(x)
//}

//var a = "swift"
//var b = "xcode"
//swap(&a, &b)
//a
//b
//
//type(of: "aa")
//type(of: 1)
//type(of: 1.5)
//
//for i in (1...10).filter({$0 % 3 == 0})
//{
//    print(i)
//}

//for i in (1...4).map({$0 * 3})
//{
//    print(i)
//}

let result = (1...4).reduce(0, {$0 + $1})
result

let result2 = (1...4).reduce(0, +)
result2

//let result3 = (1...4).reduce(0, *)
let result3 = (1...4).reduce(1, *)
result3
