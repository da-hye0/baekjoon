
import Foundation

func solution() {
    let count = Int(readLine()!)!

    for _ in 0..<count {
        let day = Int(readLine()!)!
        var stock = readLine()!.split(separator: " ").map{ Int($0)! }
        var revenue = 0

        var maxNum = stock[stock.count-1]

        for i in stride(from: stock.count-1, through: 0, by: -1) {
            if maxNum < stock[i] {
                maxNum = stock[i]
            } else if stock[i] < maxNum {
                revenue += maxNum - stock[i]
            }
        }
        print(revenue)
    }
}

solution()
