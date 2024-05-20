
import Foundation


func solution() {
    let N = Int(readLine()!)!
    var array = readLine()!.split(separator: " ").compactMap{Int($0)}
    array.sort()
        
    var score: [Int] = []
    
    for i in 0..<(array.count/2){
        score.append(array[i]+array[array.count-i-1])
    }

    print(Int(score.min() ?? 0))
}

solution()