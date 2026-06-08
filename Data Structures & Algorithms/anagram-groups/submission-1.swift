class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // we get a bunch of strings and we want to group anagrams
        // words are anagrams if they have the same set
        // the set inteslf can function as the grouping identifier
        
        // idea 1: we have a hashmap, the key is the set and the value is an array of the string
        // we loop through, add this new item to the set by eaither making a new kv pair or
        // inserting it into the existing entry, this should work in o(n)*setCreation, 
        // memory here will be an additional worst case N for the result set

        var groupings : Dictionary<String,[String]> = [:]
        
        for str in strs {
            let key = String(str.sorted())
            groupings[key, default:[]].append(str)
        }
        
        return Array(groupings.values)
    }
}
