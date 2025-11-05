let N = Int(readLine()!)!
var nums = Set(readLine()!.split(separator: " ")).map{Int($0)!}
nums.sort()

for i in 0..<nums.count {
    print(nums[i], terminator: " ")
}