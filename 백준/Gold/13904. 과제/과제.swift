import Foundation

let n = Int(readLine()!)!
var tasks: [[Int]] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    tasks.append(input)
}

tasks.sort { $0[1] > $1[1] }
var schedule = Array(repeating: 0, count: 1001)

for task in tasks {
    let deadline = task[0]
    let score = task[1]

    for day in (1...deadline).reversed() {
        if schedule[day] == 0 {
            schedule[day] = score
            break
        }
    }
}

let totalScore = schedule.reduce(0, +)
print(totalScore)