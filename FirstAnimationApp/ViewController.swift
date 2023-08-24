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
        
        slideLeft()
        
    }
    
    // MARK: Private methods
    private func slideLeft() {
        
        animatedView.animation = "slideLeft"
        animatedView.curve = "easeInOut"
        
        animatedView.force = 2.2
        animatedView.duration = 0.5
        animatedView.delay = 0.9
        animatedView.damping = 0.1
        animatedView.velocity = 0.1
        animatedView.rotate = -0.1
        
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

