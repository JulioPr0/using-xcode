//
//  SortView.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit

class SortView: UIView {

    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.frame = frame
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        let y: CGFloat = 300 - frame.height
        self.frame = frame
        self.frame.origin.y = y
        
        let hue = frame.height / 200
        let color = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
        self.backgroundColor = color
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
