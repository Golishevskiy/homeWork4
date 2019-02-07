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
//        countOfCharacter()
//        catchSuffix()
//        checkFullName()
//        print(reversString(text: "Hello"))
        
        print(commaInNumber(number: 2949477789))
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
    // comma in number each 3 symbol
    func commaInNumber(number: Int) -> String {
        let numberInString = String(number)
        var charArray = [Character]()
        var iteration = 0
        for i in numberInString {
            iteration += 1
            charArray.insert(i, at: charArray.startIndex)
            if iteration%3 == 0 && iteration != 0 {
                charArray.insert(",", at: charArray.startIndex)
            }
        }
        let noComma = checkFirstCharComma(array: charArray)
        let stringDone = charToString(array: noComma)
        return stringDone
    }
    // if first char is comma - remove comma and return array
    func checkFirstCharComma(array: [Character]) -> [Character] {
        var checkArray = array
        if checkArray[0] == "," {
            checkArray.remove(at: 0)
        }
        return checkArray
    }
    // conver [char] to String
    func charToString(array: [Character]) -> String {
        var inString = ""
        for i in array {
            inString.append(contentsOf: String(i))
        }
        return inString
    }
    
//    func commaInNumber(number: Int) -> String {
//        var numberString = String(number)
//
//        return " "
//    }
    
}

