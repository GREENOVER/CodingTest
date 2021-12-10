import Foundation

class Solution {
  func minPatches(_ nums: [Int], _ n: Int) -> Int {
    var sum = 0
    var indexOfNums = 0
    var emptyNumsCount = 0
        
    while sum < n {
      if indexOfNums < nums.count
      && nums[indexOfNums] <= sum + 1 {
        sum += nums[indexOfNums]
        indexOfNums += 1
      } else {
        sum += sum + 1
        emptyNumsCount += 1
      }
    }
    return emptyNumsCount
  }
}
