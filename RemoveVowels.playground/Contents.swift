// Problem Add-on to Reverse Every Other Word

import Foundation

var sampleSentence = "Lets start today by completing a very interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sampleSentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 1 {
            let reverseWord = String(word.characters.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word.stringByRemovingVowels()
        }
        
        
        
    }
    
    return newSentence
    
}

print(reverseWordsInSentence(sentence: sampleSentence))

// extension to remove vowels

extension String {
    
    func stringByRemovingVowels() -> String {
        var newWord = self
        
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        
        return newWord
    }
}
