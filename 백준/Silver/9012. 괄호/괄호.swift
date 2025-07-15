import Foundation

let wordNum = Int(readLine() ?? "") ?? 0
var count = 0

for _ in 0..<wordNum {
    let input = readLine() ?? ""

    for char in input {
        if count < 0 { break }
        
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
        }
    }
    
    print(count == 0 ? "YES" : "NO")
    count = 0
}
