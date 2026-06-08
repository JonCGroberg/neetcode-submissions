class Solution {
    /**
     * @param {number[]} nums
     * @return {boolean}
     */
    // O(n) : checks each element once
    hasDuplicate(nums) {
        let set = {};
        for (const num of nums){
            // if already exists in our set(hashtable) 
            if (set[num]) return true;      
            // else add to hashtable
            else set[num] = true;
        }
        // checked each element n and found no duplicate 
        return false 
    }
}
