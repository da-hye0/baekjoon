import Foundation

func solve() {
    let l = Int(readLine()!)!
    let s = readLine()!
    
    let chars = Array(s.unicodeScalars)
    
    var pi = Array(repeating: 0, count: l)
    var j = 0
    
    for i in 1..<l {
        while j > 0 && chars[i] != chars[j] {
            j = pi[j - 1]
        }
        
        if chars[i] == chars[j] {
            j += 1
            pi[i] = j
        }
    }
    print(l - pi[l - 1])
}

solve()