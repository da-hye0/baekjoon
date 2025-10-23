import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let bookNum = input[0]
let carryBook = input[1]
var books = readLine()!.split(separator: " ").map {Int($0)!}

var negativeBooks: [Int] = []
var positiveBooks: [Int] = []

for book in books {
    if book < 0 {
        negativeBooks.append(-book)
    } else {
        positiveBooks.append(book)
    }
}

negativeBooks.sort(by: >)
positiveBooks.sort(by: >)

var totalWalk = 0

for i in stride(from: 0, to: negativeBooks.count, by: carryBook) {
    totalWalk += negativeBooks[i] * 2
}

for i in stride(from: 0, to: positiveBooks.count, by: carryBook) {
    totalWalk += positiveBooks[i] * 2
}

let maxNeg = negativeBooks.first ?? 0
let maxPos = positiveBooks.first ?? 0
let maxDist = max(maxNeg, maxPos)

print(totalWalk - maxDist)
