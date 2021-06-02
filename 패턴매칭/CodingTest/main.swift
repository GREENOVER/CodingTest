import Foundation

func solution1(_ pattern:String, _ target: String) -> Bool {
    // 패턴과 데이터를 문자열로 변환
    let patternChar = pattern.map{$0}
    let input = target.split(separator: " ")

    // 패턴과 데이터 딕셔너리 생성
    var patternDic: [Int: String] = [:]
    var dataDic: [Int: String] = [:]


    var patternResult: [String] = []
    var dataResult: [String] = []

    var patternCount: Int = 1
    var dataCount: Int = 1

    // 패턴 배열 비교하여 딕셔너리 생성
    for i in patternChar {
        if patternDic.isEmpty {
            patternDic.updateValue(String(i), forKey: patternCount)
            patternCount += 1
        } else {
            if !(patternDic.values.contains(String(i))) {
                patternDic.updateValue(String(i), forKey: patternCount)
            }
        }
    }

    // 데이타 배열 비교하여 딕셔너리 생성
    for i in input {
        if dataDic.isEmpty {
            dataDic.updateValue(String(i), forKey: dataCount)
            dataCount += 1
        } else {
            if !(dataDic.values.contains(String(i))) {
                dataDic.updateValue(String(i), forKey: dataCount)
            }
        }
    }

    // 패턴 딕셔너리 치환
    for i in patternChar {
        for j in patternDic {
            if String(i) == j.value {
                patternResult.append(String(j.key))
            }
        }
    }

    // 데이터 딕셔너리 치환
    for i in input {
        for j in dataDic {
            if String(i) == j.value {
                dataResult.append(String(j.key))
            }
        }
    }

    return patternResult == dataResult
}


func solution2(_ pattern: String, _ target: String) -> Bool {
    // 패턴 파라미터의 값 중복 제거 (패턴 종류 파악)
    let uniquePattern: String = Array(pattern).reduce("", { (result, next) -> String in
        if result.contains(next) {
            return result
        }
        return result + String(next)
    })
    
    // 타겟 파라미터 공백 문자열 기준 분리
    let targets = target.components(separatedBy: " ")
    
    // 패턴과 값을 담을 딕셔너리 생성
    var targetDic: [String: String] = [:]
    
    // 패턴의 초기 위치 값
    var patternIndex = 0
    
    // 최종 치환된 문자열 변수
    var finalTarget: String = ""
    
    // 타겟 돌면서 치환
    for i in targets {
        // 딕셔너리에 해당 키 값이 있는지 판별
        if let value = targetDic[i] {
            finalTarget.append(value)
            continue
        }
        
        guard patternIndex < uniquePattern.count else {
            return false
        }
        
        // 치환
        let patternValue = uniquePattern[uniquePattern.index(uniquePattern.startIndex, offsetBy: patternIndex)]
        targetDic[i] = String(patternValue)
        finalTarget.append(patternValue)
        
        patternIndex += 1
    }
    
    // 최종 패턴과 치환된 타겟 비교
    return pattern == finalTarget
}
