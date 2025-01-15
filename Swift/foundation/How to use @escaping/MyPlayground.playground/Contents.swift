import UIKit

func functionsWithClosure(closure: () -> ()) -> Void
{
    closure()
}

class MyClass
{
    var myClosure: (() -> ())?
    
    func doSomething(finishBlock: @escaping () -> ())
    {
        myClosure = finishBlock
    }
}

func handCallBack(_ closure: () -> Void)
{
    closure()
}

func requestUserInfo(_ getTransactionRecords: @escaping @Sendable () -> Void) 
{
    DispatchQueue.global(qos: .background).async
    {
        handCallBack
        {
            getTransactionRecords()
        }
    }
}
