class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // do some algabra, we alreay have target so we cna flip eqution to
        // - num1 + target = + num2
        // this means we can iterate through the array with numx-target
        // and hten we check if we have already seen this candidate number
        // if so then thats the num 2, else keep searching
        // to do this we need to store the seen with its index

        // num:index
        var seen: [Int: Int] = [:]

        for (indexA,numA) in nums.enumerated() {
            let canidate = target - numA

            if let indexB = seen[canidate]{
                return [indexB,indexA]
            }

            seen[numA] = indexA
        }

        fatalError("No solution exists")
    }
}
