let input = readLine() ?? ""

var stack: [Character] = []

for char in input {
  if char == ")" {
    if stack.last == "(" {
        _ = stack.popLast()
    } else {
      stack.append(char)
    }
  } else {
    stack.append(char)
  }
}
print(stack.count)