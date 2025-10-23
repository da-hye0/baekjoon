import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let basketWidth = input[1]

var tail = 1
var head = basketWidth
var totalMove = 0

let J = Int(readLine()!)!

for _ in 0..<J {
    let apple = Int(readLine()!)!
    
    if apple >= tail && apple <= head {
        continue
        
    } else if apple > head {
        let distance = apple - head
        totalMove += distance
        
        head = apple
        tail = head - basketWidth + 1
        
    } else if apple < tail {
        let distance = tail - apple
        totalMove += distance
        
        tail = apple
        head = tail + basketWidth - 1
    }
}

print(totalMove)
