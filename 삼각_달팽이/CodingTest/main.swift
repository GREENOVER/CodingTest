import Foundation

enum Move {
    case down
    case right
    case up
}

func solution(_ n:Int) -> [Int] {
    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var max = n
    var move: Move = Move.down
    var num = 1
    var row = -1
    var column = 0
    
    while 0 < max {
        switch move {
        case .down:
            for _ in 0..<max {
                row += 1
                result[row][column] = num
                num += 1
            }
            max -= 1
            move = .right
            
        case .up:
            for _ in 0..<max {
                row -= 1
                result[row][column] = num
                num += 1
            }
            column -= max
            max -= 1
            move = .down
            
        case .right:
            for _ in 0..<max {
                column += 1
                result[row][column] = num
                num += 1
            }
            max -= 1
            move = .up
            
        default:
            break
        }
    }
    return result.flatMap{ $0 }.filter { $0 != 0 }
}
