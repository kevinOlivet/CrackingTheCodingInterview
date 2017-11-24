// 1.3 Replace all spaces in a string with %20 given the length of the string
import Foundation

extension String {
  
  func urlIfy() -> String {
    var s = ""
    for c in self {
      s += c == " " ? "%20" : String(c)
    }
    return s
  }
  
  mutating func urlIfyInPlace() {
    var replacements = 0
    withMutableCharacters { cv in
      for i in cv.indices where cv[i] == " " {
        cv.replaceSubrange(i...i, with: "%".self)
        let next = cv.index(after: i)
        cv.insert(contentsOf: "20".self, at: next)
        replacements += 1
      }
      cv = cv.dropLast(replacements * 2)
    }
  }
}

let verify = "mr%20john%20smith"
var string = "mr john smith"
print(string.urlIfy() == verify)

string = "mr john smith    "
var copy = string
copy.urlIfyInPlace()
print("\"\(copy)\"")
print(copy == verify)

// My way
func myURLify(word: String) -> String {
  return word.prefix(13).replacingOccurrences(of: " ", with: "%20")
}

let urlifiedString = myURLify(word: string)
print(urlifiedString)
print(urlifiedString == verify)

