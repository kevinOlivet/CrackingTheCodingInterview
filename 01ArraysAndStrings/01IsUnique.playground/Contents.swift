/*:
 1.1 Determine if a string has all unique characters. What if you can't use additional data structures?
 */
extension String {
  
  func hasUniqueCharacters() -> Bool {
    var uniqueCharacters = Set<Character>()
    for c in self {
      guard !uniqueCharacters.contains(c) else { return false }
      uniqueCharacters.insert(c)
    }
    return true
  }
}

let unique = "abc"
print(unique.hasUniqueCharacters())

let dup = "abca"
print(dup.hasUniqueCharacters())

// My way
func myHasUnique(string: String) -> Bool {
  var stringArray = [Character]()
  for c in string {
    if stringArray.contains(c) {
      return false
    } else {
      stringArray.append(c)
    }
  }
  return true
}

print(myHasUnique(string: unique))
print(myHasUnique(string: dup))

