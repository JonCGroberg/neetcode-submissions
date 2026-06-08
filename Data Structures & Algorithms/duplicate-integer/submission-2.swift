class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
      // we want to find the first duplicate
      // if we find it true else default case is false   

        // n^2: double for loop, compare all possible pairs
        // max of n, n storage: we use a set/hashmap to store seen,
        
        var seen = Set<Int>()

        for num in nums {
            if seen.contains(num){
                return true
            }else{
                seen.insert(num)
            }
        }

        return false  
    }
}
