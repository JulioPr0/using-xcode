func loginSystem(isUserValid: @autoclosure () -> Bool)
{
    if isUserValid()
    {
        print("User is valid, logining...")
    }
}

let userName = "Julio"
//loginSystem(isUserValid: { () -> Bool in
//    return userName == "Julio"
//})
loginSystem(isUserValid: userName == "Julio")

func functionWithTwoAutoclosure(firstClosure: @autoclosure () -> Bool,
                                secondClosure: @autoclosure () -> Bool)
{
    firstClosure()
    secondClosure()
}

functionWithTwoAutoclosure(firstClosure: 1 > 2, secondClosure: true)
