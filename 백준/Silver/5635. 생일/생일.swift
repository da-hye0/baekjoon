import Foundation

let N = Int(readLine()!)!
var array: [[String]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    array.append(input)
}

array.sort { a, b in
    let yearA = Int(a[3])!
    let monthA = Int(a[2])!
    let dayA = Int(a[1])!

    let yearB = Int(b[3])!
    let monthB = Int(b[2])!
    let dayB = Int(b[1])!

    if yearA != yearB {
        return yearA < yearB
    }
    if monthA != monthB {
        return monthA < monthB
    }
    return dayA < dayB
}

print(array[N-1][0])
print(array[0][0])