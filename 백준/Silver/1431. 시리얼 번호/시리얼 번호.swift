import Foundation

let N = Int(readLine()!)!
var serials: [String] = []
for _ in 0..<N {
    serials.append(readLine()!)
}

func getSum(of serial: String) -> Int {
    var sum = 0
    for char in serial {
        if let digit = char.wholeNumberValue {
            sum += digit
        }
    }
    return sum
}

serials.sort { a, b in
    if a.count != b.count {
        return a.count < b.count
    }
    let sumA = getSum(of: a)
    let sumB = getSum(of: b)
    
    if sumA != sumB {
        return sumA < sumB
    }
    return a < b
}

for serial in serials {
    print(serial)
}