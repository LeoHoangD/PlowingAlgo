func furthestDistanceFromOrigin(_ moves: String) -> Int {
    var countL = 0
    var countR = 0
    var countUnderScore = 0

    for ch in moves {
        if ch == "L" { countL += 1 }
        if ch == "R" { countR += 1 }
        if ch == "_" { countUnderScore += 1 }
    }

    return abs(countL - countR) + countUnderScore
}

func solve2833() {
    let moves = [
        "L_RL__R",
        "_R__LL_",
        "_______",
        "LRR_",
        "LRR"
    ]
    

    for tc in moves {
        print(furthestDistanceFromOrigin(tc))
    }
    
}
