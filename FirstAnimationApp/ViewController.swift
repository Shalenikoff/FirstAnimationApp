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
    
    // MARK: LyfeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        animatedView.backgroundColor = .black
        animatedView.layer.cornerRadius = 10
        changedLabelTextColor()
        
        animationButton.backgroundColor = .black
        animationButton.tintColor = .white
        animationButton.layer.cornerRadius = 10
    }

    // MARK: Actions
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        sender.pulsate()
        
        pop()
        
    }
    
    // MARK: Private methods
    private func slideLeft() {
        animatedView.animation = "slideLeft"
        animatedView.curve = "easeInOut"
        
        animatedView.force = 2.2
        animatedView.duration = 0.5
        animatedView.delay = 0.9
        
        animatedView.animate()
    }
    
    private func pop() {
        animatedView.animation = "pop"
        animatedView.curve = "easeOutCubic"
        
        animatedView.force = 1
        animatedView.duration = 1.5
        animatedView.delay = 0.6
        
        animatedView.animate()
    }
    
    

}



extension ViewController {
    
    func changedLabelTextColor() {
        presetLabel.textColor = .white
        curveLabel.textColor = .white
        forceLabel.textColor = .white
        durationLabel.textColor = .white
        delayLabel.textColor = .white
    }
    
    
}

