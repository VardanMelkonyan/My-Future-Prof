//
//  ViewController.swift
//  My Fututre Prof
//
//  Created by Vardan on 2/10/20.
//  Copyright © 2020 Poseidon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var longOutlet: UIButton!
    
    var timer = Timer()
    var profManager = ProfManager()
    var totalTime = 5
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Will Appear")
        navigationController?.setNavigationBarHidden(true, animated: true)
        progressLabel.text = "Scan Your Fingerprint"
        progressView.progress = 0.0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        
        switch sender.state {
        case .began:
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        case .ended:
            timer.invalidate()
        default:
            break
        }
        
        
    }
    
    @objc func updateCounter(){
        if profManager.counter > 0 {
            profManager.counter -= 0.01
            progressLabel.text = "Scaning"
        }else{
            timer.invalidate()
            progressLabel.text = "Loading..."
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                self.performSegue(withIdentifier: "toResult", sender: self)
                self.profManager.counter = 5.0
            })
        }
        
        progressView.progress = 1 - Float(profManager.counter)/5.0
    }
}

