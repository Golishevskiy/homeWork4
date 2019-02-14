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
//        print(reversString(text: "Hello"))
//        print(commaInNumber(number: 2949477789))
//        print(sortArray(array: [10,7,11,11, 1,2,3,4,5]))
//        let array = ["lada", "sedan", "baklazhan", "chemodan"]
//        checkWords(words: array, searchWords: "da")
//        print(toDivideName(fullname: "GolishevskiyPetro"))
        passwordStrength(str: "Hs@#dgjk1")
        
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
    
    //homework 3
    func toDivideName(fullname: String) -> [String] {
        var nameArray = [String]()
        var iteration = -1
        for value in fullname {
            if String(value) == String(value).uppercased() {
                nameArray.append(String(value))
                iteration += 1
            }
            else {
                nameArray[iteration].append(String(value))
            }
        }
        return nameArray
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
    
    //homework 6
    func passwordStrength(str: String) {
        var level = 0  //can have 4 levels of reliability
        level += checkToNumber(password: str)
        level += checkToUpperCase(password: str)
        level += checkToSpecialChar(password: str)
        switch level {
        case 0:
            print("bad password")
        case 1:
            print("the level of protection 1")
        case 2:
            print("the level of protection 2")
        case 3:
            print("the level of protection 3")
        default:
            break
        }
    }
    
    func checkToNumber(password: String) -> Int {
        let allNumber = "1234567890"
        for i in password {
            if allNumber.contains(i) {
                return 1
            }
        }
        return 0
    }
    
    func checkToUpperCase(password: String) -> Int {
        for i in password {
            if String(i) == String(i).uppercased() {
                return 1
            }
        }
        return 0
    }
    
    func checkToSpecialChar(password: String) -> Int {
        let specialChar = "@#$%^&*()?><:,._-"
        for i in password {
            if specialChar.contains(i) {
                return 1
            }
        }
        return 0
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
        let alphabet = ["а": "a", "б": "b", "в": "v",
                        "г": "g", "д": "d", "е": "e",
                        "ё": "yo", "ж": "g", "з": "z",
                        "и": "i", "й": "y", "к": "k",
                        "л": "l", "м": "m", "н": "n",
                        "о": "o", "п": "p", "р": "r",
                        "с": "s", "т": "t", "у": "u",
                        "ф": "f", "х": "h", "ц": "c",
                        "ч": "ch", "ш": "sh", "щ": "ch'",
                        "ы": "i", "э": "e", "ю": "yu",
                        "я": "ya",]
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
    
    //homework 9 used NSPredicate
    func checkWords(words: [String], searchWords: String) {
        var filteredWords = [String].init()
        let containPredicate = NSPredicate(format: "SELF CONTAINS %@", searchWords)
        filteredWords = words.filter({ name in
            containPredicate.evaluate(with: name)
        })
        print("\(filteredWords)")
    }
}

