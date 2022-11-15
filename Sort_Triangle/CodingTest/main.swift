import Foundation

public func solution(_ A : inout [Int]) -> Int {
  let input = A.sorted(by: >)
  let count = input.count
  
  for i in 0..<count - 2 {
    if input[i] < input[i+1] + input[i+2] {
      return 1
    }
  }
  return 0
}
