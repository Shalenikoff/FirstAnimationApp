//
//  ViewController.swift
//  FirstAnimationApp
//
//  Created by Кирилл Шалеников on 24.08.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationButton: SpringButton!
    
    var chosedAnimation = Animation.getRandomAnimation()
    
    // MARK: LyfeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        animatedView.backgroundColor = .black
        animatedView.layer.cornerRadius = 10
        changeLabelTextColor()
        
        animationButton.backgroundColor = .black
        animationButton.tintColor = .white
        animationButton.layer.cornerRadius = 10
        animationButton.setTitle("Play animation", for: .normal)
        
        presetLabel.text = "Preset name"
        curveLabel.text = "Curve name"
        forceLabel.text = "Force number"
        durationLabel.text = "Duration time"
        delayLabel.text = "Delay time"
    }

    // MARK: Actions
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        sender.pulsate()
        
        updateAnimationInfo()
        animatedView.animate()
        
        contstructNextAnimation()
    }
    
}

extension ViewController {
    
    private func changeLabelTextColor() {
        presetLabel.textColor = .white
        curveLabel.textColor = .white
        forceLabel.textColor = .white
        durationLabel.textColor = .white
        delayLabel.textColor = .white
    }
    
    private func contstructNextAnimation() {
        chosedAnimation = Animation.getRandomAnimation()
        animationButton.setTitle("Play \(chosedAnimation.preset)", for: .normal)
    }
    
    private func updateAnimationInfo() {
        animatedView.animation = chosedAnimation.preset
        animatedView.curve = chosedAnimation.curve
        animatedView.force = chosedAnimation.force
        animatedView.duration = chosedAnimation.duration
        animatedView.delay = chosedAnimation.delay
        
        presetLabel.text = "Preset: \(chosedAnimation.preset)"
        curveLabel.text = "Curve: \(chosedAnimation.curve)"
        forceLabel.text = "Force: \(String(format: "%.3f", chosedAnimation.force))"
        durationLabel.text = "Force: \(String(format: "%.3f", chosedAnimation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.3f", chosedAnimation.delay))"
    }
    

}

