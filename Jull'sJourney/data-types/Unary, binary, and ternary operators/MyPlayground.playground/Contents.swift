import Foundation

var a = 1
let b = -a
let c = +a

let x = false
let y = !x

//a ++
a += 1
a -= 1
a *= 2
a /= 1

1 + 1
2 - 1
2 * 3
8 / 2
9 % 4
//8 % 2.5
8.truncatingRemainder(dividingBy: 2.5)

"Hello, " + "world!"
[1, 2] + [3, 4]

let number1 = 1
let number2 = 2
var bigger = 0

if number1 > number2
{
    bigger = number1
}
else
{
    bigger = number2
}

bigger = number1 > number2 ? number1 : number2
