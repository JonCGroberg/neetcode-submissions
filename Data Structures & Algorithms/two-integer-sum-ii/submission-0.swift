class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // target = a + b
        // target - a = b

        var l = 0
        var r = numbers.count-1

        while l<r {
            let sum = numbers[l] + numbers[r]

            if sum == target {
                //equal
                return [l+1,r+1]
            }else if sum < target{
                //smaller
                l+=1
            }else{
                //larger
                r-=1
            }
        }

        return [0,0]
    }
}
