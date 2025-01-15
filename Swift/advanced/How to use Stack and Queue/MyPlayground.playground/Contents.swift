import UIKit

class Stack<T> {
    private var stack = [T]()
    
    func isEmpty() -> Bool {
        return stack.isEmpty
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func push(_ element: T) {
        stack.append(element)
    }
    
    func pop() -> T? {
        return isEmpty() ? nil : stack.removeLast()
    }
}

var colorStack = Stack<UIColor>()
print(colorStack.isEmpty())
colorStack.push(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
colorStack.push(UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0))
print(colorStack.pop())

class Queue<T> {
    private var queue = [T]()
    
    func isEmpty() -> Bool {
        return queue.isEmpty
    }
    
    func size() -> Int {
        return queue.count
    }
    
    func enqueue(_ element: T) {
        queue.append(element)
    }
    
    func dequeue() -> T? {
        return isEmpty() ? nil : queue.removeFirst()
    }
}

var colorQueue = Queue<UIColor>()
print(colorQueue.isEmpty())
colorQueue.enqueue(UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0))
colorQueue.enqueue(UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0))
print(colorQueue.dequeue())
