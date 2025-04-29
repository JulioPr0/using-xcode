@dynamicCallable
struct DynamicCallableStruct
{
    func dynamicallyCall(withArguments args: [Int]) -> Int
    {
        return args.randomElement() ?? 0
    }
    
    func dynamicallyCall(withKeywordArguments args: KeyValuePairs<String, Int>) -> Int
    {
        let maximum = Int(args.first?.value ?? 0)
        return Int.random(in: 0...maximum)
    }
}

let dynamicCallableStruct = DynamicCallableStruct()
dynamicCallableStruct.dynamicallyCall(withArguments: [1,2,3,4])
dynamicCallableStruct(1,2,3,4)

dynamicCallableStruct.dynamicallyCall(withKeywordArguments: ["maxNumber": 10])
dynamicCallableStruct(maxNumber: 10)
