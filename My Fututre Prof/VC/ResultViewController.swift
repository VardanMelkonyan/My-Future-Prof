//
//  ResultViewController.swift
//  My Fututre Prof
//
//  Created by Vardan on 2/13/20.
//  Copyright © 2020 Poseidon. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    var profManager = ProfManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let result = profManager.profName(){
            resultLabel.text = result
            resultImage.image = UIImage(named: result)
        }
        print(profManager.counter)
    }
    
}
