let N = Int(readLine()!)!
var array: [Int] = []
var cost = 0
for _ in 0..<N {
    let input  = Int(readLine()!)!
    array.append(input)
}
array.sort(by: >)

for i in 1..<array.count+1 {
    if i % 3 == 0 {
        continue
    }
    cost += array[i-1]
}
print(cost)