import Foundation

class Solution {
  var inputArray = [Int]()
  
  init(_ nums: [Int]) {
    self.inputArray = nums
  }
  
  /** Resets the array to its original configuration and return it. */
  func reset() -> [Int] {
    return inputArray
  }
  
  /** Returns a random shuffling of the array. */
  func shuffle() -> [Int] {
    var shuffledArray = inputArray
    shuffledArray.shuffle()
    
    return shuffledArray
  }
}
