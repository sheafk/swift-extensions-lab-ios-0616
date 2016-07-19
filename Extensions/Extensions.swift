//
//  Extensions.swift
//  Extensions
//
//  Created by Shea Furey-King on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    func pigLatinFunc() -> String {
        
        let words = self.componentsSeparatedByString(" ")
        
        var pigWords = [String]()
        for word in words {
            let lowercaseWord = word.lowercaseString
            let firstChar = lowercaseWord[lowercaseWord.startIndex]
            let wordWithoutFirst = String(word.characters.dropFirst())
            let pigWord = wordWithoutFirst + String(firstChar) + "ay"
            pigWords.append(pigWord)
        }
        return pigWords.joinWithSeparator(" ") //
    }
    
    func calculatePoints() -> Int {
        
        let words = self.componentsSeparatedByString(" ")
        var totalPoints = 0
        for word in words {
            
            word.lowercaseString
            let characters = word.characters
            
            for character in characters {
                
                if "aeiouy".characters.contains(character) {
                    totalPoints += 2
                }
                else {
                    totalPoints += 1
                }
            }
            
        }
        
        return totalPoints
    }
    
    func turnToUnicorn() -> String {
        
        var unicornString = ""
        
        for _ in self.characters {
            unicornString += "🦄"
        }
        return unicornString
    }
    
    var pigLatin: String { return pigLatinFunc() }
    
    var points: Int { return calculatePoints() }
    
    var unicornLevel : String { return turnToUnicorn() }

}

extension Int {
    
    func half() -> Int {
        return self/2
    }
    
    func isDivisibleBy(num: Int) -> Bool {
        return self % num == 0
    }
    
    var squared: Int { return self * self }

    var halved: Int { return half() }

}

