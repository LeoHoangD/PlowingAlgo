func minOperations(_ grid: [[Int]], _ x: Int) -> Int {

    let flatGrid = Array(grid.joined())
    if flatGrid.count == 1 { return 0 }

    let modulo = (flatGrid[1] - flatGrid[0]) % x

    for i in 1 ..< flatGrid.count {
        if abs(flatGrid[i] - flatGrid[0]) % x != 0 {
            return -1
        }
    }

    let sorted = flatGrid.sorted()

    let medianIndex = flatGrid.count / 2
    var minOperation = 0
    for i in 0 ..< flatGrid.count {
        minOperation += abs(sorted[medianIndex] - sorted[i]) / x
    }

    return minOperation
}