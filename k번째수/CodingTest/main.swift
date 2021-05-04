import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []

    for element in commands {
        let startIndex = element[0] - 1
        let endIndex = element[1] - 1
        let pickIndex = element[2] - 1
        
        let stack = array[(startIndex)...(endIndex)].sorted(by: <)
        result.append(stack[pickIndex])
    }
    print(result)
    return result
}
solution([1, 5, 2, 6, 3, 7, 4],
         [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
