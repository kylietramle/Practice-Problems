// Reverse Every Other Word

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
            newSentence += reverseWord
        } else {
            newSentence += word
        }
        
        
        
    }
    
    return newSentence
    
}

print(reverseWordsInSentence(sentence: sampleSentence))
