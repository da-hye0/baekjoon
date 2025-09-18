import Foundation

let s = readLine()!
var t = readLine()!

while t.count > s.count {
    if t.last == "A" {
        t.removeLast()
    }
    else if t.last == "B" {
        t.removeLast()
        t = String(t.reversed())
    }
    else {
      break
    }
}

print(t == s ? 1 : 0)
