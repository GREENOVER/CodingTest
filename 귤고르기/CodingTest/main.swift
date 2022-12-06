import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
  var fruits: [Int: Int] = [:]
  var count: Int = 0

  for i in tangerine {
    if let fruit = fruits[i] {
      fruits[i] = fruit + 1
    } else {
      fruits[i] = 1
    }
  }
  
  let sortedFruit = fruits.values.sorted { $0 > $1 }
  
  for i in 0..<sortedFruit.count {
    count += sortedFruit[i]
    if count >= k {
      return i + 1
    }
  }
  
  return k
}
