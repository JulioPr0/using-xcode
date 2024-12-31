//
//  BaseViewController.swift
//  The Bubble sorting algorithm
//
//  Created by Julio Pramaitama on 18/11/24.
//

import UIKit
 
extension Array
{
    mutating func swap(i:Int, j:Int)
    {
        let temp = self[i]
        self[i] = self[j]
        self[j] = temp
        
    }
}

class BaseViewController: UIViewController {
    var arrayToBeSorted : Array<Int> = Array<Int>()
    var processingDate : Date!
    var sortButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for i in 1...100
        {
            arrayToBeSorted.append(i)
        }
        arrayToBeSorted.shuffle()
        
        let screenWidth = UIScreen.main.bounds.width
        let distance = 3.6
        for i in 1...100
        {
            let num = arrayToBeSorted[i - 1]
            let hue = CGFloat(num) / 100.0
            let view = UIView(frame: CGRect(
                x: (screenWidth - 360) / 2 + CGFloat(Double(i) * distance),
                y: 200.0,
                width: 2.0,
                height: CGFloat(Double(num) * 2.0)
            ))
            view.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            view.tag = i
            self.view.addSubview(view)
        }
        
        sortButton = UIButton(frame: CGRect(x: (screenWidth - 360)/2, y: 340, width: 360, height: 40))
        sortButton.backgroundColor = .orange
        sortButton.setTitle("Sort", for: .normal)
        sortButton.addTarget(self, action: #selector(reOrderView), for: .touchUpInside)
        self.view.addSubview(sortButton)
    }
                              
    @objc func reOrderView(){
        processingDate = Date()
        
        DispatchQueue.global().async{
            self.sort()
            
            let endDate = Date()
            print(endDate.timeIntervalSince(self.processingDate))
        }
    }
                              
    @objc func sort(){ }
    
    func swapTwoViews(first:Int, second:Int)
    {
        weak var weak_self = self
        DispatchQueue.main.async
        {
            let view1 = weak_self?.view.viewWithTag(first + 1)
            let view2 = weak_self?.view.viewWithTag(second + 1)
            
            let posX1 = view1?.frame.origin.x
            let posX2 = view2?.frame.origin.x
            
            view1?.frame.origin.x = posX2!
            view2?.frame.origin.x = posX1!
            
            view1?.tag = second + 1
            view2?.tag = first + 1
            
            self.arrayToBeSorted.swap(i: first, j: second)
        }
            Thread.sleep(forTimeInterval: 0.01)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func udpateView(j: Int, height: Int)
    {
        weak var weak_self = self
        DispatchQueue.main.async
        {
            let view = weak_self?.view.viewWithTag(j + 1)
            view?.frame.size.height = CGFloat(height * 2)
        }
        Thread.sleep(forTimeInterval: 0.01)
    }

}

