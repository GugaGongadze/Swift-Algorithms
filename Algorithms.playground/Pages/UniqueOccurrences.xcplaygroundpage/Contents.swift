func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var occuranceTable = [Int: Int]()

    for element in arr {
        if let occurances = occuranceTable[element] {
            occuranceTable[element] = occurances + 1
        } else {
            occuranceTable[element] = 1
        }
    }

    let numberOfUniqueOccurances = Array(Set(occuranceTable.values)).count

    return occuranceTable.values.count == numberOfUniqueOccurances
}
