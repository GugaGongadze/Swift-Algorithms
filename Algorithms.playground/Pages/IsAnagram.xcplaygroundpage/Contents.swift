func isAnagram(_ s: String, _ t: String) -> Bool {
    if s == t { return true }
    if s.count != t.count { return false }
    if s.count == 0 || t.count == 0 { return false }
    
    
    var characterMap = [Character: Int]()
    
    for character in s {
        if let characterCount = characterMap[character] {
            characterMap[character] = characterCount + 1
        } else {
            characterMap[character] = 1
        }
    }
    
    for character in t {
        if let characterCount = characterMap[character], characterCount != 0 {
            characterMap[character] = characterCount - 1
        } else {
            return false
        }
    }
    
    return true
}

isAnagram("anagram", "nagaram")
