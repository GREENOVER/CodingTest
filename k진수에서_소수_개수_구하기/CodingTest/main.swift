import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
  var input = String(n, radix: k)
  var fixInputs = input.components(separatedBy: "0")
    .filter { $0 != "" }
    .map { (value: String) -> Int in return Int(value)! }
    .filter { isPrime($0) == true }
  
  return fixInputs.count
}

private func isPrime(_ num: Int) -> Bool {
  if num == 1 { return false }
  var i = 2
  while i * i <= num {
    if num % i == 0 {
      return false
    }
    i += 1
  }
  return true
}
