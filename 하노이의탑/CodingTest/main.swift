import Foundation

var result: [[Int]] = []

func solution(_ n:Int) -> [[Int]] {
    hanoi(n: n, from: 1, to: 3, by: 2)
    
    return result
}

private func hanoi(n: Int, from: Int, to: Int, by: Int){
    let tmp: [Int] = [from, to]
    
    if n == 1 {
        result.append(tmp)
        print("최상단 원판을 \(from)에서 \(to)로 이동")
    } else {
        hanoi(n: n-1, from: from, to: by, by: to)
        print("원판\(n) 을 \(from)에서 \(to)로 이동")
        result.append(tmp)
        hanoi(n: n-1, from: by, to: to, by: from)
    }
}
