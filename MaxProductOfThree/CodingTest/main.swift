import Foundation

public func solution(_ A : inout [Int]) -> Int {
  let sortedA = A.sorted()
  let count = sortedA.count
  
  let sumOfPositiveMaxA = sortedA[count - 1] * sortedA[count - 2] * sortedA[count - 3]
  let sumOfNegativeMaxA = sortedA[0] * sortedA[1]
  let sumOfCombinatedMaxA = sumOfNegativeMaxA * sortedA[count - 1]
  
  if sumOfNegativeMaxA > 0 {
    return max(sumOfCombinatedMaxA, sumOfPositiveMaxA)
  }
  
  return sumOfPositiveMaxA
}
