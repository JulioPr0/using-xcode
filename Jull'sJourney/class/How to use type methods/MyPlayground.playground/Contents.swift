class MathTool {
    func alert() {
        print("Calculating...")
    }
    
    func sum(num1: Int, num2: Int) -> Int {
        alert()
        return num1 + num2
    }
    
    class func multiply(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
    
    class var result: Int {
        return 0
    }
    
    class func subtract(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}

let tool = MathTool()
tool.sum(num1: 1, num2: 1)
MathTool.multiply(num1: 2, num2: 3)
MathTool.subtract(num1: 3, num2: 2)

class SubMathTool: MathTool {
    override class var result: Int {
        return 10
    }
    
    override class func multiply(num1: Int, num2: Int) -> Int {
        return 10 + num1 * num2
    }
    
    override class func subtract(num1: Int, num2: Int) -> Int {
        return 10 + num1 - num2
    }
}
