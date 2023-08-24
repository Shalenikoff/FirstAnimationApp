//
//  Extention + UIButton.swift
//  FirstAnimationApp
//
//  Created by Кирилл Шалеников on 25.08.2023.
//

import UIKit
import SpringAnimation

extension SpringButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.fromValue = 0.7
        pulse.toValue = 1
        pulse.duration = 0.3
        pulse.repeatCount = 1
        
        layer.add(pulse, forKey: nil)
    }
}
