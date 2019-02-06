//
//  ViewController.swift
//  homeWork4
//
//  Created by Per Pert on 2/5/19.
//  Copyright © 2019 Petro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countOfCharacter()
        catchPrefix()
    }
    
    func countOfCharacter() {
        let name = "Petro"
        print(name.count)
    }
    
    func catchPrefix() {
        let lastName = "Голішевський"
        if lastName.hasSuffix("ий") {
            print("закінчується на ий")
        }
    }
    func newFunc() {
        
    }
}

