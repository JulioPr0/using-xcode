func getTotal(num1 : Int, num2 : Int) -> Int
{
    return num1 + num2
}

func getBigger(num1: Int, num2: Int) -> Int
{
    return num1 > num2 ? num1 : num2
}

func getMathResult(function: (Int, Int) -> Int, a: Int, b:Int)
{
    print("Result: \(function(a, b))")
    
}

getMathResult(function: getTotal, a: 2, b: 3)
getMathResult(function: getBigger, a: 2, b: 3)
