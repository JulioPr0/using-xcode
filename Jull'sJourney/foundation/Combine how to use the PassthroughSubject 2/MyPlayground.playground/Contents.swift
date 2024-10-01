import Combine

enum ScoreError: Error
{
    case negativeNumber
}

let passthroughSubject = PassthroughSubject<Int, ScoreError>()

let subscriber = passthroughSubject
    .sink(receiveCompletion: { (completion) in
        switch completion
        {
        case .finished:
            print("receiveCompletion: finished")
        case .failure(let never):
            print("receiveCompletion: \(never)")
        }
    }, receiveValue: { value in
        print("\(value)")
    })

passthroughSubject.send(1)
passthroughSubject.send(2)
//passthroughSubject.send(completion: .failure(.negativeNumber))
passthroughSubject.send(3)
passthroughSubject.send(completion: .finished)
