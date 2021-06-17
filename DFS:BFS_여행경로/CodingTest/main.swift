import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var count = Array(repeating: false, count: tickets.count)
    var answer: [String] = []
    
    func trip(start: String) {
        if answer.count == tickets.count {
            answer.append(start)
            return
        }
        
        for i in 0..<tickets.count {
            if start == tickets[i][0] && !count[i] {
                answer.append(start)
                count[i] = true
                
                trip(start: tickets[i][1])
                
                if answer.count == tickets.count + 1 {
                    break
                } else {
                    answer.removeLast()
                    count[i] = false
                }
            }
        }
    }
    
    trip(start: "ICN")
    
    return answer
}
