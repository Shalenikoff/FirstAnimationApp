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
    
    var chosedAnimation: Animation!
    
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
    }

    // MARK: Actions
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        sender.pulsate()
        
        animatedView.animation = chosedAnimation.preset
        animatedView.curve = chosedAnimation.curve
        animatedView.force = chosedAnimation.force
        animatedView.duration = chosedAnimation.duration
        animatedView.delay = chosedAnimation.delay
        
        animatedView.animate()
        
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
    
    
}

