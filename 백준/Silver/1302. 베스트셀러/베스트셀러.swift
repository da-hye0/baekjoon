import Foundation

func solve() {
    let num = Int(readLine() ?? "") ?? 0
    var input: [String] = []
    var max: (Int, String) = (0, "")
    
    for _ in 0..<num {
        input.append(readLine() ?? "")
    }

    let target = Set(input).sorted(by: <)
    
    for ch in target {
        let saved = input.filter { $0.contains(ch)}.count
        if max.0 < saved {
            max.0 = saved
            max.1 = ch
        }
    }
   
    print(max.1)
}

solve()
