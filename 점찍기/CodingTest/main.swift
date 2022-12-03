import Foundation

func solution(_ k:Int, _ d:Int) -> Int64 {
  var count: Int64 = 0
  var dPow = d * d
  
  for i in 0...d {
    if i * k > d {
      break
    }
    let xPow = (i * k) * (i * k)
    let powMargin = Int64(sqrt(Double(dPow - xPow))) / Int64(k) + 1
    count += powMargin
  }
  
  return count
}
