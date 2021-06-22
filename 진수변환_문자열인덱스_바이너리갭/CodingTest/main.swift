import Foundation

public func solution(_ N : Int) -> Int {
    let binaryStr = String(N, radix: 2)
    var cnt: Int = 0
    var maxCnt: Int = 0
    
    for i in 0..<binaryStr.count {
        let index = binaryStr.index(binaryStr.startIndex, offsetBy: i)
        if(binaryStr[index] == "1") {
            if(cnt > maxCnt) {
                maxCnt = cnt
            }
            cnt = 0
        } else {
            cnt += 1
        }
    }
    return maxCnt
}
