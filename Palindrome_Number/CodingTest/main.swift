import Foundation

public func isPalindrome(_ x: Int) -> Bool {
  if x < 0 {
    return false
  }
  
  let inputStr = String(x)
  let reversedStr = String(inputStr.reversed())
  
  return inputStr == reversedStr
}
