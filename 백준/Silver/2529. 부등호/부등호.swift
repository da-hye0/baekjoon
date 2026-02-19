let k = Int(readLine()!)!
let signs = readLine()!.split(separator: " ").map(String.init)

func solve(_ isMax: Bool) -> String {
    var result = [Int]()
    var used = [Bool](repeating: false, count: 10)
    
    for i in 0...k {
        var count = 0
        let target = isMax ? "<" : ">"
        
        for j in i..<k {
            if signs[j] == target {
                count += 1
            } else {
                break
            }
        }

        let needed = count + 1
        let available = (0...9).filter { !used[$0] }
        let sorted = isMax ? available.sorted(by: >) : available.sorted()
        let pick = isMax ? sorted[needed - 1] : sorted[needed - 1]
        
        result.append(pick)
        used[pick] = true
    }
    
    return result.map(String.init).joined()
}

print(solve(true))
print(solve(false))