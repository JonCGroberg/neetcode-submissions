class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s, t) {
        let setS = {};
        let setT = {};
        
        if (s.length != t.length) return false; //edge case

        // build set for s and t (a frequency map)
        for(let i = 0; i<s.length; i++){
            if (setS[s[i]]) setS[s[i]] += 1;
            else setS[s[i]] = 1;
            if (setT[t[i]]) setT[t[i]] += 1;
            else setT[t[i]] = 1;
        }
        console.log(setS,setT)

        //check if the sets are equal
        for (const property in setS){
            if (setT[property] != setS[property]) return false;
        }
        return true;

        
    }
}
