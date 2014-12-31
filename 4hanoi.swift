#!/usr/bin/swift

var three_solution = [Int](count: 101, repeatedValue: 0)
three_solution[1] = 1

var four_solution = [Int](count: 101, repeatedValue: 0)
four_solution[1] = 1

var useOfSecondTower = [Int](count: 1001, repeatedValue: 0)

for i in 2...63
{
    three_solution[i] = 2 * three_solution[i - 1] + 1
    four_solution[i] = three_solution[i]
    for j in 1...i-1
    {
        var now = 1 + 2 * four_solution[j] + three_solution[i-j]
        if now < four_solution[i]
        {
            four_solution[i] = now
            useOfSecondTower[i] = j
        }
    }
    println("\(i), \(four_solution[i]), \(useOfSecondTower[i])")
}