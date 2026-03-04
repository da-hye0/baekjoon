let size = Int(readLine()!)!
var room: [[Character]] = []

for _ in 0..<size {
    let input = Array(readLine()!)
    room.append(input)
}

var xLine = 0
var yLine = 0

for i in 0..<size {
    var count = 0
    for j in 0..<size {
        if room[i][j] == "." {
            count += 1
        } else {
            if count >= 2 {
                xLine += 1
            }
            count = 0
        }
    }
    if count >= 2 {
        xLine += 1
    }
}

for j in 0..<size {
    var count = 0
    for i in 0..<size {
        if room[i][j] == "." {
            count += 1
        } else {
            if count >= 2 {
                yLine += 1
            }
            count = 0
        }
    }
    if count >= 2 {
        yLine += 1
    }
}

print("\(xLine) \(yLine)")
