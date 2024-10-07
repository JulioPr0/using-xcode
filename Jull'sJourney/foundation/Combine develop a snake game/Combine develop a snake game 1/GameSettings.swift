//
//  GameSettings.swift
//  Combine develop a snake game 1
//
//  Created by Julio Pramaitama on 06/10/24.
//

import UIKit

let snakeSize : CGFloat = 20
let minX : CGFloat = 25
let maxX = UIScreen.main.bounds.width - 25
let minY : CGFloat = 80
let maxY = UIScreen.main.bounds.width + 30
let rows = Int((maxX - minX)/snakeSize)
let cols = Int((maxY - minY)/snakeSize)

let timerEvery = 0.3
