import Foundation
//
//func deferDemo()
//{
//    print("Breakfast")
//    
//    defer { print("~ First defer") }
//    
//    print("Lunch")
//    
//    defer { print("~ Second defer") }
//    
//    print("Dinner")
//}
//deferDemo()

func write(hugeData: Data) throws
{
    let documentsPath = NSSearchPathForDirectoriesInDomains(
        .documentDirectory,
        .userDomainMask,
        true
    )[0]
    
    let filePath = "\(documentsPath)/localData.txt"
        
    guard let file = FileHandle(forUpdatingAtPath: filePath) else {
        print("Unable to open file at path: \(filePath)")
        return
    }
    defer { try? file.close() }
    
    file.write(hugeData)
}

do {
    let data = "This is some large data".data(using: .utf8)!
    try write(hugeData: data)
    print("Data written successfully.")
} catch {
    print("Failed to write data: \(error)")
}
