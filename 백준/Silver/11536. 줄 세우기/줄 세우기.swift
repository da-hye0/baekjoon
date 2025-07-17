import Foundation

func solve() {
    let num = Int(readLine() ?? "") ?? 0
    var arr: [String] = []
    for _ in 0..<num {
        arr.append(readLine() ?? "")
    }

    if arr == arr.sorted(by: >) {
        print("DECREASING")
    } else if arr == arr.sorted(by: <){
        print("INCREASING")
    } else {
        print("NEITHER")
    }
}

solve()