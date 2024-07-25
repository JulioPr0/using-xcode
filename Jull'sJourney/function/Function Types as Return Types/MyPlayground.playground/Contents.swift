func stepForward(input : Int) -> Int
{
    return input + 1
}

func stepBackward(input : Int) -> Int
{
    return input - 1
}

func chooseStepFunction(isToIncrease : Bool) -> (Int) -> Int
{
    return isToIncrease ? stepForward : stepBackward
}

var currentValue = 1
let move = chooseStepFunction(isToIncrease: currentValue > 0)
move(1)
