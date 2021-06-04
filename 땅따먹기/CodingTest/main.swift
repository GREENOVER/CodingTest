import Foundation

func solution(_ land:[[Int]]) -> Int{
    var answer = land
    var result = 0

    for i in 1..<land.count {
        answer[i][0] += max(answer[i-1][1], answer[i-1][2], answer[i-1][3])
        answer[i][1] += max(answer[i-1][0], answer[i-1][2], answer[i-1][3])
        answer[i][2] += max(answer[i-1][0], answer[i-1][1], answer[i-1][3])
        answer[i][3] += max(answer[i-1][0], answer[i-1][1], answer[i-1][2])
    }
    result = answer.last!.max()!

    return result
}
