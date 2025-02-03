import Foundation

var cycle = Int(readLine()!)!
for _ in 0..<cycle {
    let num = Int(readLine()!)!
    print("Pairs for \(num): ", terminator: "")
    for i in 1..<num/2+1{
        if i == num-i {
            break
        }
        if i != 1 {
            print(", ", terminator: "")
        }
        print("\(i) \(num-i)", terminator: "")
    }
    print("")
}