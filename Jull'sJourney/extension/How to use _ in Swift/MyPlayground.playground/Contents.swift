let underscoreNumber = 1_066_088.001_002

let http400Error = (400, "Bad Request")
let (errorCode, _) = http400Error

let baseNumber = 2
var result = 1
for _ in 1 ... 10
{
    result *= baseNumber
}

//func addBy(leftNumber: Int, second rightNumber: Int) -> Int
func addBy(leftNumber: Int, _ rightNumber: Int) -> Int
{
    return leftNumber + rightNumber
}
