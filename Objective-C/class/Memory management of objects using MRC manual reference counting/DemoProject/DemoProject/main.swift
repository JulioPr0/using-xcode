//
//  main.swift
//  DemoProject
//
//  Created by Julio Pramaitama on 09/10/26.
//

class GreetingClass {
    func sayHello() {
        print("Hello, Swift!")
    }

    deinit {
        print(">>>>> The greeting object is being deallocated.")
    }
}

enum GreetingError: Error {
    case objectUnavailable
}

func greet(_ greeting: GreetingClass?) throws {
    guard let object = greeting else {
        throw GreetingError.objectUnavailable
    }

    object.sayHello()
}

func runDemo() {
    defer {
        print("The demonstration has finished.")
    }

    var greeting: GreetingClass? = GreetingClass()

    do {
        try greet(greeting)

        var anotherReference: GreetingClass? = greeting
        print("Added another strong reference to the same object.")

        greeting = nil
        print("Cleared greeting. The other reference keeps the object alive.")
        try greet(anotherReference)

        print("Clearing the last strong reference...")
        anotherReference = nil

        try greet(greeting)
    } catch GreetingError.objectUnavailable {
        print("Handled error: The greeting object is unavailable.")
    } catch {
        print("Unexpected error: \(error)")
    }
}

runDemo()
