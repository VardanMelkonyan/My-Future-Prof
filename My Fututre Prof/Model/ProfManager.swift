//
//  ProfManager.swift
//  My Fututre Prof
//
//  Created by Vardan on 2/13/20.
//  Copyright © 2020 Poseidon. All rights reserved.
//

import Foundation

struct ProfManager {
    let profs = ["artist", "baker", "broker", "cardiologist", "chef", "civil engineer", "deleviry guy", "detective", "doctor", "factory worker", "farmer", "firefighter", "fisher", "hair stylist", "judge", "manager", "nurse", "office worker", "police", "pylot", "regby player", "driver", "salior", "seleswomen", "soldier", "tennis player", "waiter", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""
    ]
    
    var counter = 5.0
    
    func profName() -> String? {
        let result = profs.randomElement()!
        
        if result == ""{
            return nil
        }else{
            return result
        }
    }
    
}
