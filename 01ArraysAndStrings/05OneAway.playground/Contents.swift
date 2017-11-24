/*:
 1.5 One Away: There are three types of edits that can be performed on strings: insert a character,
 remove a character, or replace a character. Given two strings, write a function to check if they are
 one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true
 pales, pale -> true
 pale, bale -> true
 pale, bake -> false
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

s1 = "pales"
s2 = "pale"
print(myOneEditAway(first: s1, second: s2))

s1 = "pale"
s2 = "bale"
print(myOneEditAway(first: s1, second: s2))

//Should be false because 2 away
s1 = "pale"
s2 = "bake"
print(myOneEditAway(first: s1, second: s2))

