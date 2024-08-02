import Foundation

enum AllDirections: String, CaseIterable {
    case east = "EAST"
    case west = "WEST"
    case south = "SOUTH"
    case north = "NORTH"
    
    var description: String {
        switch self {
        case .east:
            return "East direction, typically associated with sunrise."
        case .west:
            return "West direction, typically associated with sunset."
        case .south:
            return "South direction, usually considered as warmer region."
        case .north:
            return "North direction, usually considered as colder region."
        }
    }
    
    func nextDirection() -> AllDirections {
        switch self {
        case .east:
            return .south
        case .south:
            return .west
        case .west:
            return .north
        case .north:
            return .east
        }
    }
}

print(type(of: AllDirections.allCases))

let caseList = AllDirections.allCases
    .map { "\($0.rawValue): \($0.description)" }
    .joined(separator: ", ")

print(caseList)

let currentDirection = AllDirections.east
print("The next direction after \(currentDirection.rawValue) is \(currentDirection.nextDirection().rawValue).")
