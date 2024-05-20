
import Foundation


func solution() {
    var money = Int(readLine()!)!
    var result = 0
    
    money = 1000-money
    
    result += money / 500
    money = money % 500
    
    result += money / 100
    money = money % 100
    
    result += money / 50
    money = money % 50
    
    result += money / 10
    money = money % 10
    
    result += money / 5
    money = money % 5
    
    
    print(result+money)
}

solution()
