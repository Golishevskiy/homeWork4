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
        countOfCharacter()
        catchSuffix()
        checkFullName()
        print(reversString(text: "Hello"))
        print(commaInNumber(number: 2949477789))
        print(sortArray(array: [10,7,11,11, 1,2,3,4,5]))
        print(translite(str: "abcfD"))
    }
    
    //homework 1
    func countOfCharacter() {
        let name = "Petro"
        print("Count characters in name = \(name.count)")
    }
    
    //homework 2
    func catchSuffix() {
        let lastName = "Голішевський"
        if lastName.hasSuffix("ий") {
            print("lastName \(lastName) has \"ий\"")
        }
    }
    
    //homework 4 revers the string
    func reversString(text: String) -> String {
        var reversText = ""
        for i in text {
            reversText.insert(i, at: reversText.startIndex)
        }
        return reversText
    }
    
    // homework 5 comma in number each 3 symbol
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
    
    // homework 7
    func sortArray(array: [Int]) -> [Int] {
        var arrayForSorted = array
        var resultArray = [Int].init()
        while !arrayForSorted.isEmpty {
            let minValue = arrayForSorted.min()!
            if !resultArray.contains(minValue) {
                resultArray.append(minValue)
            }
            arrayForSorted.remove(at: arrayForSorted.index(of: minValue)!)
        }
        return resultArray
    }
    
    //homework 8
    func translite(str: String) -> String {
        let alphabet = ["a": "a", "b": "б", "c": "ц", "d": "д"]
        var transliteString = String.init()
        for i in str {
            if String(i) == String(i).lowercased() {
                transliteString.append(contentsOf: alphabet[String(i)] ?? "")
            } else {
                let lowString = String(i).lowercased()
                transliteString.append(contentsOf: alphabet[lowString]?.uppercased() ?? "")
            }
        }
        return transliteString
    }
    
    //homework 10
    func antimat(str: String) -> String {
        
    }
    
    
    //put a space between the firstname and secondname
    func checkFullName() {
//        var firstName = ""
//        var lostname = ""
        let fullName = "GolishevskiyPetro"
        for i in fullName {
            var stringSymbol = String(i)
            if stringSymbol.uppercased() == stringSymbol {
                print(stringSymbol)
            }
        }
        print(fullName)
    }
}

