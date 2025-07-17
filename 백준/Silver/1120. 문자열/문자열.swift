import Foundation

if let line = readLine() {
    let inputs = line.split(separator: " ").map(String.init)
    
    if inputs.count == 2 {
        let a = inputs[0]
        let b = inputs[1]

        let arrayA = Array(a)
        let arrayB = Array(b)

        var answer: [Int] = []

        for i in 0...(arrayB.count - arrayA.count) {
            var count = 0
            for j in 0..<arrayA.count {
                if arrayA[j] != arrayB[i + j] {
                    count += 1
                }
            }
            answer.append(count)
        }

        print(answer.min() ?? 0)
    }
}