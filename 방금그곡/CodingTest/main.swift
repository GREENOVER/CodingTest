import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    let melody: String = replace(m)
    var answer: [(String, Int)] = []
    
    for i in musicinfos {
        let music = i.components(separatedBy: ",")
        let melodyInfo = replace(music[3])
        let time = timeCaculate(music[0], music[1])
        var fullMelody = ""
        
        for j in 0...time {
            let musicPattern = melodyInfo.map { String($0) }
            fullMelody += musicPattern[j % musicPattern.count]
        }
        
        if fullMelody.contains(melody) {
            answer.append((music[2], time))
        }
    }
    
    let result = answer.enumerated().sorted {
        if $0.element.1 == $1.element.1 {
            return $0.offset < $1.offset
        }
        return $0.element.1 > $1.element.1
    }
    return result.first?.element.0 ?? "(None)"
}

func replace(_ input: String) -> String {
    input.replacingOccurrences(of: "C#", with: "H")
        .replacingOccurrences(of: "D#", with: "I")
        .replacingOccurrences(of: "F#", with: "J")
        .replacingOccurrences(of: "G#", with: "K")
        .replacingOccurrences(of: "A#", with: "L")
}

func timeCaculate(_ startTime: String, _ endTime: String) -> Int {
    let start = startTime.components(separatedBy: ":").compactMap{ Int($0)! }
    let end = endTime.components(separatedBy: ":").compactMap{ Int($0)! }
    
    return (end[0] - start[0]) * 60 + (end[1] - start[1])
}
