
# Challenge 1: Are the letters unique? 

** Difficulty: Easy ** 

- Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account. 

Sample input and output 
•    The string “No duplicates” should return true.  
•    The string “abcdefghijklmnopqrstuvwxyz” should return true.  
•    The string “AaBbCc” should return true because the challenge is case-sensitive.  
•    The string “Hello, world” should return false because of the double Ls and double Os.  

- For this initial challenge I’ll write some test cases for you, so that you have something to use 

challenge1(input: "No duplicates") //should return true
challenge1(input: "abcdefghijklmnopqrstuvwkyz") //should return true
challenge1(input: "AaBbCc") // should return true
challenge1(input: "Hello, world") //should return false

## Hints 

- Remember, read as few hints as you can to help you solve the challenge, and only read them if you’ve tried and failed. (This reminder won’t be repeated again.) 

** Hint #1: You should work with the characters property of the input string. This is an array-like object that contains Character elements. 
** Hint #2: You could use a temporary array to store characters that have been checked, but it’s not necessary. 
** Hint #3: Sets are like arrays, except they can’t contain duplicate elements.
** Hint #4: You can create sets from arrays and arrays from sets. Both have a count property. 

# Solution 

- There are two ways to solve this, both of which are perfectly fine given our test cases. First, the brute force approach: create an array of checked characters, then loop through every letter in the input string and append the latter to the list of checked characters, returning false as soon as a call to contains() fails. 

- Here’s how that code would look: 

```swift

    func challenge1a(input: String) -> Bool {
        var usedLetters = [Character]()
        for letter in input.characters {
            if usedLetters.contains(letter) {
                return false
            }
            usedLetters.append(letter)
        }
        return true
    }
    
```

- That solution is correct with the example input and output I provided, but you should be prepared to discuss that it doesn’t scale well: calling contains() on an array is an O(n) operation, which means it gets slower as more items are added to the array. If our text were in a language with very few duplicate characters, such as Chinese, this might cause performance issues. 

- The smart solution is to use Set, which can be created directly from the characters property of the input string. Sets cannot contain duplicate items, so if we create a set from the input string then the count of the set will equal the count of the input’s characters property if there are no duplicates. 

- In code you would write this: 

```swift

    func challenge1b(input: String) -> Bool {
        return Set(input.characters).count == input.characters.count
    } 

```
