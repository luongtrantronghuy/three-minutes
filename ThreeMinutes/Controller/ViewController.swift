//
//  ViewController.swift
//  ThreeMinutes
//
//  Created by Jack Luong on 4/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var actionDisplay: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var startButton: UIButton!
    
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    let action = defaultAction()
    
    @IBAction func startButtonPressed(_ sender: Any) {
        timer.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        
        actionDisplay.text = action.randomAction()
        
        totalTime = action.time
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        updateTimer()
    }
    
    @objc func updateTimer(){
        if totalTime > secondsPassed{
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            secondsPassed += 1
        }else{
            progressBar.progress = 1.0
            actionDisplay.text = "3 Minutes are up. Well-done!"
            timer.invalidate()
        }
    }
}
