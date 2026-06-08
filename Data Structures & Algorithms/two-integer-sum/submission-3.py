class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashMap = {}

        # Create hashMap O(n)
        for i in range(len(nums)):
            hashMap[nums[i]] = i;

        # Check each element and see if its complement exists O(2n)
        for i in range(len(nums)):
            complement = target - nums[i] # b+a=y therefore  b=y-a
            if complement in hashMap and i is not hashMap[complement]:
                return [i, hashMap[complement]]

        return []


        