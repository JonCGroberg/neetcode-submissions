class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // we can create a hashmap for both strings that store the frequency distribution onf alphabet chars
        // becuase we are using lowercase english letters we cna just use an array sized to fit the alpabet
        // otherwise we could just use a set, this would work with any alphabethhhhhhhhhhhhhhhh
        // becuase of our english conttacint it i smost optimal memory usage to jsut ado an ayyary
        // I wonder if we could do a cool trick and just use a single array
        // 1 string is + and the other is -
        // we expect that each element is 0 else not anagram?

        // check if they are even the same size first
        guard s.count == t.count else {return false}

        var freq = Array(repeating:0, count:26)

        let a: UInt8 = Character("a").asciiValue!

        for (sChar,tChar) in zip(s,t){
            freq[Int(sChar.asciiValue! - a)] += 1
            freq[Int(tChar.asciiValue! - a)] -= 1
        }

        return freq.allSatisfy {$0 == 0}
    }
}
