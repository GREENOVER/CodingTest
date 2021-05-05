import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let numberCount: Int = number.count
    let numbers = number.map{ String($0) }
    var stack = [String]()
    var count = 0
    
    for i in 0..<numberCount{
        while count < k && !stack.isEmpty && stack.last! < numbers[i] {
            stack.removeLast()
            count += 1
        }
        
        if count >= k {
            stack.append(contentsOf: numbers[i...])
            break
        } else {
            stack.append(numbers[i])
        }
    }
    return String(stack.joined().prefix(numberCount-k))
}

