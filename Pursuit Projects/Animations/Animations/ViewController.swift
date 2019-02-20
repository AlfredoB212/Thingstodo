//
//  ViewController.swift
//  Animations
//
//  Created by Alfredo Barragan on 1/28/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ball: UIButton!
    @IBOutlet weak var cat: UIButton!
    @IBOutlet weak var explosion: UIButton!
    @IBOutlet weak var ballons: UIImageView!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.ballons.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
        
    }

    @IBAction func ballDrop(_ sender: UIButton) {
        self.ball.alpha = 1.0
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
           self.ball.frame.origin.y += self.view.bounds.height
            self.ball.alpha = 0.0 
        }) { (done) in
            // cleanup or reseting values after animation is complete
            self.ball.frame.origin.y -= self.view.bounds.height
            self.ball.alpha = 1.0
    }
}
    @IBAction func imageTransition(_ sender: UIButton) {
        if cat.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
            self.cat.setImage(UIImage(named: "dog"), for: .normal)
            })
            } else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
            self.cat.setImage(UIImage(named: "cat"), for: .normal)
            })
        }
            
    
}
    @IBAction func blowUp(_ sender: UIButton) {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: { 
            self.explosion.transform = CGAffineTransform(scaleX: 6.0, y: 6.0)
            }) {(done) in
                // run after animation block is complete
                // resumes to origin location
                self.explosion.transform = CGAffineTransform.identity
                self.explosion.alpha = 1.0 
            
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}
