// Example 1:

// Input: queries = ["word","note","ants","wood"], dictionary = ["wood","joke","moat"]
// Output: ["word","note","wood"]
// Explanation:
// - Changing the 'r' in "word" to 'o' allows it to equal the dictionary word "wood".
// - Changing the 'n' to 'j' and the 't' to 'k' in "note" changes it to "joke".
// - It would take more than 2 edits for "ants" to equal a dictionary word.
// - "wood" can remain unchanged (0 edits) and match the corresponding dictionary word.
// Thus, we return ["word","note","wood"].


func twoEditWords(_ queries: [String], _ dictionary: [String]) -> [String] {
    var result: [String] = []
    var diff = 0
    for query in queries {
        for dict in dictionary {
            diff = 0
            for i in 0 ..< query.count {
                let index = query.index(query.startIndex, offsetBy: i)
                if query[index] != dict[index] {
                    diff += 1
                }
            }

            if diff <= 2 {
                result.append(query)
                break
            }
        }
    }
    return result
}



func solve2452() {
    let queries = ["word","note","ants","wood"]
    let dictionary = ["wood","joke","moat"]
    let res = twoEditWords(queries, dictionary)
    print(res)
}
