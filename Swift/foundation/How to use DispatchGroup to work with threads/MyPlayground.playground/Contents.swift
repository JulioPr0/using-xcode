import Foundation

print("Start the task and display the loading animation.")

let group = DispatchGroup()
let globalQueue = DispatchQueue.global()

globalQueue.async(group: group, execute: DispatchWorkItem(block: {
    print("Load a user picture from the remote server.")
}))

globalQueue.async(group: group, execute: DispatchWorkItem(block: {
    print("Get the annual record of all transactions by user id.")
}))

group.notify(queue: globalQueue, execute: {
    print("Complete all tasks and hide the Loading animation.")
})

globalQueue.async(group: group, execute: DispatchWorkItem(block: {
    print("Get the collection of goods by user id.")
}))
