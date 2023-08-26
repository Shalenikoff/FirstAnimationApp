//
//  File.swift
//  FirstAnimationApp
//
//  Created by Кирилл Шалеников on 25.08.2023.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        
        let presets = DataManager.shared.presets.randomElement()
        let curves = DataManager.shared.curve.randomElement()
        let forces = Double.random(in: DataManager.shared.force)
        let durations = Double.random(in: DataManager.shared.duration)
        let delays = Double.random(in: DataManager.shared.delay)
        
        let chosenAnimation = Animation(
            preset: presets,
            curve: curves,
            force: forces,
            duration: durations,
            delay: delays)
        
        return chosenAnimation
        }

    }
