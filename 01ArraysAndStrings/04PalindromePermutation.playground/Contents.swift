//: 1.4 Check if a string is a permutation of a palindrome

extension String {
  
  func isPalindromePermutation(of: String) -> Bool {
    let counts1 = self.characterCounts()
    let isPalindrome = counts1.filter { e in
      e.value % 2 != 0
    }
    let counts2 = of.characterCounts()
    return isPalindrome.count <= 1 && counts2 == counts1
  }
}

extension String {
  
  func characterCounts() -> [Character: Int] {
    var characterCounts = [Character: Int]()
    self.forEach { c in
      characterCounts[c] = (characterCounts[c] ?? 0) + 1
    }
    return characterCounts
  }
}

var s1 = "abccba"
var s2 = "abcabc"
print(s2.isPalindromePermutation(of: s1))

// My way
// case insensitive
// This is the same way I used for 1.2

func isPalindrome(first: String, second: String) -> Bool {
  let firstArray = Array(first.lowercased()).sorted()
  let secondArray = Array(second.lowercased()).sorted()
  
  return firstArray == secondArray
}

print(isPalindrome(first: s1, second: s2))

