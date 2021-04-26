//
//  defaultAction.swift
//  ThreeMinutes
//
//  Created by Jack Luong on 4/17/21.
//

import Foundation

struct defaultAction{
    var actionName:[String] = [
        "Plank", "Read A Book", "Play An Instrument",
        "Do Jumping Jacks", "Organize Work Space", "Start A Quick Meditation",
    ]
    var time = 180 // 3 minutes = 180 seconds
    
    func randomAction() -> String{
        return actionName.randomElement()!
    }
    
}
