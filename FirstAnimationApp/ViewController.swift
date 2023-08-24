//
//  ViewController.swift
//  FirstAnimationApp
//
//  Created by Кирилл Шалеников on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animatedView: UIView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        animatedView.backgroundColor = .black
        changedLabelTextColor()
        
        
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

