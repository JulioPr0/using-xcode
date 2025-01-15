func chooseStepFunction(isToIncrease: Bool) -> (Int) -> (Int) {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    return isToIncrease ? stepForward : stepBackward
}

var currentValue = 1
let move = chooseStepFunction(isToIncrease: currentValue > 0)
print(move(1)) 
