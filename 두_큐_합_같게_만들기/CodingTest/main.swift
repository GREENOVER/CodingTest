import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
  var totalQueue = queue1 + queue2
  var queue1Sum = queue1.reduce(0) { $0 + $1 }
  var middleSum = totalQueue.reduce(0) { $0 + $1 } / 2
  var leftOffset: Int = 0
  var rightOffset: Int = queue1.count
  var count: Int = 0
  
  if !(middleSum is Int) {
    return -1
  }
  
  while (leftOffset <= rightOffset && rightOffset < totalQueue.count) {
    if queue1Sum == middleSum {
      return count
    }
    if queue1Sum > middleSum {
      queue1Sum -= totalQueue[leftOffset]
      leftOffset += 1
    } else {
      queue1Sum += totalQueue[rightOffset]
      rightOffset += 1
    }
    count += 1
  }
  
  return -1
}
