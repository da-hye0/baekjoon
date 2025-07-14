import Foundation


func solve() {
    let t = Int(readLine() ?? "0") ?? 0
    var strings: [String] = []

    for _ in 0..<t {
        strings.append(readLine() ?? "")
    }

    for str in strings {
        print(isPalindrome(left: 0, right: str.count - 1, deletions: 0, str: str))
    }
}


func isPalindrome(left: Int, right: Int, deletions: Int, str: String) -> Int {
    let chars = Array(str)
    var l = left
    var r = right

    while l < r {
        if chars[l] != chars[r] {
            if deletions == 0 {
                let result1 = isPalindrome(left: l + 1, right: r, deletions: 1, str: str)
                let result2 = isPalindrome(left: l, right: r - 1, deletions: 1, str: str)
                
                if result1 == 0 || result2 == 0 {
                    return 1
                }
                return 2
            } else {
                return 2
            }
        } else {
            l += 1
            r -= 1
        }
    }
    return 0
}


solve()