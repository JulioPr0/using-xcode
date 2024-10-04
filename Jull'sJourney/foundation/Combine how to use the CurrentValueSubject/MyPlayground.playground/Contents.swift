import Combine

enum ScoreError: Error
{
    case negativeNumber
}

//let subject = PassthroughSubject<Int, ScoreError>()
let subject = CurrentValueSubject<Int, ScoreError>(10)
//subject.send(1)

let subscriber2 = subject
    .sink(receiveCompletion: { _ in }, receiveValue: { value in
        print("\(value)")
    })

subject.send(2)
subject.send(3)
