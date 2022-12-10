import Foundation

func solution(_ topping:[Int]) -> Int {
  var count: Int = 0
  var toppingDict: [Int: Int] = [:]
  var broSet: Set = Set<Int>()
  
  topping.forEach {
    toppingDict[$0, default: 0] += 1
  }
    
  topping.forEach {
    toppingDict[$0]! -= 1
    broSet.insert($0)
      
    if toppingDict[$0]! <= 0 {
      toppingDict.removeValue(forKey: $0)
    }
      
    if toppingDict.count == broSet.count {
      count += 1
    }
  }

  return count
}
