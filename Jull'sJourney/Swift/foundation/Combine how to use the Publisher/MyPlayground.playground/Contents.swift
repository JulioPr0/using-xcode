import Combine

//let sourcePublisher = [true, false, 1, 0, "publishedValue"].publisher
//_ = sourcePublisher.sink { value in
//    print(value)
//}

let sourcePublisher2 = [true, false, 1, 0, "publishedValue"].publisher
let subscriber = sourcePublisher2.sink(receiveCompletion: { completion in
    switch completion
    {
    case .finished:
        print("receiveCompletion: finished")
    case .failure(let never):
        print("receiveCompletion: \(never)")
    }
}, receiveValue: { value in
    print(value)
})
subscriber.cancel()
