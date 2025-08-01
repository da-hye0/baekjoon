import Foundation

struct Point: Comparable {
    let x, y: Int

    static func < (lhs: Point, rhs: Point) -> Bool {
        if lhs.x != rhs.x {
            return lhs.x < rhs.x
        }
        return lhs.y < rhs.y
    }
}

func ccw(p1: Point, p2: Point, p3: Point) -> Int {
    let val = (p2.x - p1.x) * (p3.y - p1.y) - (p2.y - p1.y) * (p3.x - p1.x)
    if val > 0 { return 1 }
    if val < 0 { return -1 }
    return 0
}

func distSq(p1: Point, p2: Point) -> Int {
    let dx = p1.x - p2.x
    let dy = p1.y - p2.y
    return dx * dx + dy * dy
}

func solve() {
    let n = Int(readLine()!)!
    var points = [Point]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        points.append(Point(x: input[0], y: input[1]))
    }

    points.sort()

    var lowerHull = [Point]()
    for p in points {
        while lowerHull.count >= 2 && ccw(p1: lowerHull[lowerHull.count - 2], p2: lowerHull.last!, p3: p) <= 0 {
            lowerHull.removeLast()
        }
        lowerHull.append(p)
    }

    var upperHull = [Point]()
    for p in points.reversed() {
        while upperHull.count >= 2 && ccw(p1: upperHull[upperHull.count - 2], p2: upperHull.last!, p3: p) <= 0 {
            upperHull.removeLast()
        }
        upperHull.append(p)
    }

    let convexHull = lowerHull.dropLast() + upperHull.dropLast()
    let h = convexHull.count

    if h <= 2 {
        print(distSq(p1: convexHull.first!, p2: convexHull.last!))
        return
    }

    var maxDistSq = 0
    var j = 1

    for i in 0..<h {
        let next_i = (i + 1) % h
        
        while true {
            let next_j = (j + 1) % h
            
            let p1 = convexHull[i]
            let p2 = convexHull[next_i]
            let p3 = convexHull[j]
            let p4 = convexHull[next_j]

            let v1 = Point(x: p2.x - p1.x, y: p2.y - p1.y)
            let v2 = Point(x: p4.x - p3.x, y: p4.y - p3.y)

            if ccw(p1: Point(x: 0, y: 0), p2: v1, p3: v2) > 0 {
                j = next_j
            } else {
                break
            }
        }

        let currentDistSq = distSq(p1: convexHull[i], p2: convexHull[j])
        if currentDistSq > maxDistSq {
            maxDistSq = currentDistSq
        }
    }

    print(maxDistSq)
}

solve()