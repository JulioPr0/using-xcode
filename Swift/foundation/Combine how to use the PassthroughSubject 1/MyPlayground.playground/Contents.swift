import Combine

let passthroughSubject = PassthroughSubject<Int, Error>()

let subscriber = passthroughSubject
    .filter {$0 > 0}
    .map {$0 * 10}
    .scan(0) { seed, value in
        return seed + value
    }
    .sink(receiveCompletion: { _ in }, receiveValue: { value in
        print("\(value)")
    })

passthroughSubject.send(10)
passthroughSubject.send(-10)
passthroughSubject.send(10)
passthroughSubject.send(10)
