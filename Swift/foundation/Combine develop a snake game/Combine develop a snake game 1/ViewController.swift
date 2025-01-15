//
//  ViewController.swift
//  Combine develop a snake game 1
//
//  Created by Julio Pramaitama on 06/10/24.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    var snakeDirection = Direction.right
    var snakePosArray : [CGPoint] = []
    var snakeArray : [UIView] = []
    var foodView : UIView?
    var playAgainbutton : UIButton!
    
    @Published var foodPosition = CGPoint(x: 0, y: 0)
    @Published var isPlaying = true
    private var cancelList : Set<AnyCancellable> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .black
        let background = UIView(frame: CGRect(x: minX, y: minY, width: maxX - minX, height: maxY - minY))
        background.backgroundColor = .lightGray
        self.view.addSubview(background)
        
        initOrResetScene()
        
        Timer.publish(every: timerEvery, on: .main, in: .common) .autoconnect()
            .sink {[weak self] (_) in
                guard let self else { return }
            
                self.getSnakeNewPosition()
                
                for snake in self.snakeArray
                {
                    snake.removeFromSuperview()
                }
                self.snakeArray.removeAll()
                
                for position in self.snakePosArray
                {
                    let snake = UIView(frame: CGRect(x: position.x, y: position.y, width: snakeSize, height: snakeSize))
                    snake.backgroundColor = .blue
                    
                    self.snakeArray.append(snake)
                    self.view.addSubview(snake)
                }
                
                let snakePos = self.snakePosArray.first
                if snakePos == self.foodPosition
                {
                    self.snakePosArray.append(snakePos!)
                    self.buildRandomFood()
                }
            }
            .store(in: &cancelList)
    }
    
    func getSnakeNewPosition()
    {
        isPlaying = !(self.snakePosArray[0].x < minX || self.snakePosArray[0].x >= maxX || self.snakePosArray[0].y < minY || self.snakePosArray[0].y >= maxY)
        
        if isPlaying
        {
            Util.updateSnakePositionArray(snakeDirection: self.snakeDirection, snakePosArray: &self.snakePosArray)
        }
    }
    
    func initOrResetScene()
    {
        isPlaying = true
        snakeDirection = .right
        
        snakeArray.forEach { view in
            view.removeFromSuperview()
        }
        
        snakePosArray.removeAll()
        snakeArray.removeAll()
        
        let startPos = CGPoint(x: minX, y: 240)
        snakePosArray.append(startPos)
        
        let snake = UIView(frame: CGRect(x: startPos.x, y: startPos.y, width: snakeSize, height: snakeSize))
        snake.backgroundColor = .blue
        
        self.snakeArray.append(snake)
        self.view.addSubview(snake)
        
        if playAgainbutton == nil
        {
            playAgainbutton = UIButton(frame: CGRect(x: 150, y: 450, width: 100, height: 40))
            playAgainbutton.setTitle("Play Again", for: .normal)
            playAgainbutton.publisher(for: . touchUpInside)
                .sink {
                    self.initOrResetScene()
                }
                .store(in: &cancelList)
            self.view.addSubview(playAgainbutton)
            
            $isPlaying
                .receive(on: DispatchQueue.main)
                .assign(to: \.isHidden, on: playAgainbutton)
                .store(in: &cancelList)
        }
        
        buildRandomFood()
    }
    
    func buildRandomFood()
    {
        foodPosition = Util.getRandomPosition()
        
        if foodView == nil
        {
            foodView = UIView(frame: CGRect(x: 0, y: 0, width: Int(snakeSize), height: Int(snakeSize)))
            foodView?.backgroundColor = .orange
            self.view.addSubview(foodView!)
            
            $foodPosition
                .receive(on: DispatchQueue.main)
                .assign(to: \.frame.origin, on: foodView!)
                .store(in: &cancelList)
                }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.snakeDirection = Direction.next(direction: self.snakeDirection)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        cancelList.forEach { subscriber in
            subscriber.cancel()
        }
    }
    
}
