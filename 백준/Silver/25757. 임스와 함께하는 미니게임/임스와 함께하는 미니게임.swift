import Foundation

let input = readLine()!.split(separator: " ")
var array = Set<String>()
for i in 0..<Int(input[0])! {
    let name = readLine()!
    array.insert(name)
}

if input[1] == "Y" {
    print(Int(array.count/1))
} else if input[1] == "F" {
    print(Int(array.count/2))
} else if input[1] == "O" {
    print(Int(array.count/3))
}