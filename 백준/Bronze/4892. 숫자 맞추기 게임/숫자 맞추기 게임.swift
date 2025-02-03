import Foundation

var cycle = 1
while(true) {
   
    let num = Int(readLine()!)!
    if num == 0 {
        break
    }
    let n1 = num*3
    let n2 = (n1 % 2 == 0) ? n1/2 : (n1+1)/2
    let n3 = 3*n2
    let n4 = n3/9
    
    print("\(cycle). \(n1%2==0 ? "even" : "odd") \(n4)")
    
    cycle+=1
}