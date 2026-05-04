func rotate(_ matrix: inout [[Int]]) {
    var temp = 0

    let n = matrix.count
    for i in 0 ..< n / 2 {
        for j in i ..< n - i - 1 {
            temp = matrix[i][j]

            matrix[i][j] = matrix[n-1-j][i]
            matrix[n-1-j][i] = matrix[n-1-i][n-1-j]
            matrix[n-1-i][n-1-j] = matrix[j][n-1-i]
            matrix[j][n-1-i] = temp
        }
    }
}

func solve48() {
    // var tc = [[1,2,3],[4,5,6],[7,8,9]]
    var tc = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
    rotate(&tc)
    print(tc)
}