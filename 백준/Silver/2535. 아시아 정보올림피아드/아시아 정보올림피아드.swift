import Foundation

struct Info {
    let country: Int 
    let num: Int
    let score: Int
}

let N = Int(readLine()!)!
var students: [Info] = []

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    students.append(Info(country: line[0], num: line[1], score: line[2]))
}

students.sort { $0.score > $1.score }

var medalCount = 0
var countryMedalCounts: [Int: Int] = [:]

for student in students {
    if medalCount == 3 {
        break
    }
    
    let currentCount = countryMedalCounts[student.country] ?? 0
    
    if currentCount < 2 {
        print("\(student.country) \(student.num)")
        countryMedalCounts[student.country] = currentCount + 1
        medalCount += 1
    }
}
