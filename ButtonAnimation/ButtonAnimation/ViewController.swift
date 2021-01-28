//
//  ViewController.swift
//  ButtonAnimation
//
//  Created by Gökberk on 29.01.2021.
//
import TransitionButton
import UIKit

class ViewController: UIViewController {

    let button = TransitionButton(frame: CGRect(x: 0, y: 0, width: 150, height: 80))
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
               
        button.center = view.center
        button.backgroundColor = .systemOrange
        button.setTitle("Button", for: .normal)
        button.cornerRadius = 15
        button.spinnerColor = .white
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
    }

    @IBAction func buttonAction(_ button: TransitionButton) {
        button.startAnimation()
    
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            button.stopAnimation(animationStyle: .expand, revertAfterDelay: 0.5)
        }
    }
    
}

