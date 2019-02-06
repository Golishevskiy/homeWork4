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
        //        countOfCharacter()
        //        catchSuffix()
        //        checkFullName()
        print(reversString(text: "Hello"))
    }
    
    func countOfCharacter() {
        let name = "Petro"
        print("Count characters in name = \(name.count)")
    }
    
    func catchSuffix() {
        let lastName = "Голішевський"
        if lastName.hasSuffix("ий") {
            print("lastName \(lastName) has \"ий\"")
        }
    }
    
    //    func checkFullName() {
    //        var firstName = ""
    //        var lostname = ""
    //        var fullName = "GolishevskiyPetro"
    //
    //
    //        print(fullName.uppercased())
    //    }
    
    func reversString(text: String) -> String {
        var reversText = ""
        for i in text {
            reversText.insert(i, at: reversText.startIndex)
        }
        return reversText
    }
}

