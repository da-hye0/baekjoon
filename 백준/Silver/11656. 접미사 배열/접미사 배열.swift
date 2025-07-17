import Foundation

func solve() {
    
    var input = readLine() ?? ""
    var res: [String] = []
    
    for i in 0..<input.count {
        let startIndex = input.index(input.startIndex, offsetBy: i)
        let suffix = input[startIndex...]
        res.append(String(suffix))
    }
     
    res.sort()
    
    for i in res {
        print(i)
    }
}
solve()