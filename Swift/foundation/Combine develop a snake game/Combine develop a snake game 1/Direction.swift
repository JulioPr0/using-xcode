//
//  Direction.swift
//  Combine develop a snake game 1
//
//  Created by Julio Pramaitama on 06/10/24.
//

import Foundation

enum Direction
{
    case up, down, left, right
    
    static func next(direction : Direction) -> Direction
    {
        if direction == .up
        {
            return .right
        }
        
        let directions : [Direction] = [.right, .down, .left, .up]
        let nextIndex = directions.firstIndex(of: direction)?.advanced(by: 1)
        return directions[nextIndex ?? 0]
    }
}
