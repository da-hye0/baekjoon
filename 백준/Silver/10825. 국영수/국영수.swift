struct Input {
    let name: String
    let korean: Int
    let english: Int
    let math: Int
}

let num = Int(readLine()!)!
var input: [Input] = []

for i in 0..<num {
    let line = readLine()!.split(separator: " ")
    input.append(Input(name: String(line[0]), korean: Int(line[1])!, english: Int(line[2])!, math: Int(line[3])!))
}

input.sort {
    if $0.korean == $1.korean {
        if $0.english == $1.english {
            if $0.math == $1.math {
                return $0.name < $1.name
            } else {
                return $0.math > $1.math
            }
        } else  {
            return $0.english < $1.english
        }
    }
    return $0.korean > $1.korean
}

for i in 0..<num {
    print(input[i].name)
}
