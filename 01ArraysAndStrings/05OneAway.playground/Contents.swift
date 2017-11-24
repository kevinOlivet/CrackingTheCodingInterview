/*:
 1.5 There are three types of characeter edits on strings: insert, replace, or delete.
 Write a function to return if one string is 0 or 1 edit away from the other
 */

// My way
func myOneEditAway(first: String, second: String) -> Bool {
  let shorter = first.count < second.count ? first : second
  var longer = first.count < second.count ? second : first
  
  longer = longer.filter({ !shorter.contains($0)})
  if longer.count > 1 {
    return false
  }
  return true
}

var s1 = "pale"
var s2 = "ple"
print(myOneEditAway(first: s1, second: s2))

s1 = "pale"
s2 = "ple"
print(myOneEditAway(first: s1, second: s2))

s1 = "pale"
s2 = "pale"
print(myOneEditAway(first: s1, second: s2))

s1 = "pale"
s2 = "pales"
print(myOneEditAway(first: s1, second: s2))

//Should be false because 2 away
s1 = "pale"
s2 = "bake"
print(myOneEditAway(first: s1, second: s2))

