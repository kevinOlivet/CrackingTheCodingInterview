/*:
 1.2 Determine if a string is a permutation of another
 */

// case and punctuation sensitive
extension String {
  func isPermutation(s: String) -> Bool {
    return characterCounts() == s.characterCounts()
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

let s1 = "elvis"
let s2 = "lives"

print(s2.isPermutation(s: s1))

// My way
// case insensitive.  To make case sensitive remove .lowercased()

func isPalindrome(first: String, second: String) -> Bool {
  let firstArray = Array(first.lowercased()).sorted()
  let secondArray = Array(second.lowercased()).sorted()
  
  return firstArray == secondArray
}

print(isPalindrome(first: s1, second: s2))




