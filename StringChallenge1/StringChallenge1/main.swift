//
//  main.swift
//  StringChallenge1
//
//  Created by Emre Kocak on 2.08.2024.
//

import Foundation

func challenge1a(input: String) -> Bool {
    var usedLetters = [Character]()
    
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}

func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}

print("Bir string girin: ", terminator: "")

if let input = readLine() {
    let result = challenge1b(input: input)
    print("Output: \(result)")
} else {
    print("Geçersiz giriş")
}
