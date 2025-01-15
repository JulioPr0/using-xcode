//
//  Utils.swift
//  Combine develop a snake game 1
//
//  Created by Julio Pramaitama on 07/10/24.
//

import UIKit

struct Util
{
    static func getRandomPosition() -> CGPoint
    {
        let randomX = Int(minX) + Int.random(in: 1..<rows) * Int(snakeSize)
        let randomY = Int(minY) + Int.random(in: 1..<cols) * Int(snakeSize)
        return CGPoint(x: randomX, y: randomY)
    }
    
    static func updateSnakePositionArray(snakeDirection : Direction, snakePosArray : inout [CGPoint])
    {
        var previousPosition = snakePosArray[0]
        if snakeDirection == .down
        {
            snakePosArray[0].y += CGFloat(snakeSize)
        }
        else if snakeDirection == .up
        {
            snakePosArray[0].y -= CGFloat(snakeSize)
        }
        else if snakeDirection == .left
        {
            snakePosArray[0].x -= CGFloat(snakeSize)
        }
        else
        {
            snakePosArray[0].x += CGFloat(snakeSize)
        }
        
        for index in 1..<snakePosArray.count
        {
            let current = snakePosArray[index]
            snakePosArray[index] = previousPosition
            previousPosition = current
        }
    }
}
