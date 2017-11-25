/*:
 1.6 String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 `aabcccccaaa -> a2b1c5a3`
 */

extension String {
  
  func compressedString() -> String {
    guard !isEmpty else { return self }
    var s = "\(self[startIndex])"
    var count = 1
    for c in self.dropFirst() {
      let p = s.last
      if c == p {
        count += 1
        continue
      }
      s += "\(count)" + "\(c)"
      count = 1
    }
    if count > 1 {
      s += "\(count)"
    }
    return s.count < self.count ? s : self
  }
}

var s = "aabcccccaaa"
assert(s.compressedString() == "a2b1c5a3")
"aaabb".compressedString()
