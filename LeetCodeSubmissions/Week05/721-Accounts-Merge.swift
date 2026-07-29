class Solution {
    func accountsMerge(_ accounts: [[String]]) -> [[String]] {
        var parent = Array(0..<accounts.count)
        var size = Array(repeating: 1, count: accounts.count)

        func find(_ value: Int) -> Int {
            if parent[value] != value {
                parent[value] = find(parent[value])
            }
            return parent[value]
        }

        func union(_ first: Int, _ second: Int) {
            var firstRoot = find(first)
            var secondRoot = find(second)
            guard firstRoot != secondRoot else { return }

            if size[firstRoot] < size[secondRoot] {
                swap(&firstRoot, &secondRoot)
            }
            parent[secondRoot] = firstRoot
            size[firstRoot] += size[secondRoot]
        }

        var ownerByEmail: [String: Int] = [:]

        for (index, account) in accounts.enumerated() {
            for email in account.dropFirst() {
                if let owner = ownerByEmail[email] {
                    union(index, owner)
                } else {
                    ownerByEmail[email] = index
                }
            }
        }

        var emailsByRoot: [Int: [String]] = [:]
        for (email, index) in ownerByEmail {
            emailsByRoot[find(index), default: []].append(email)
        }

        return emailsByRoot.keys.map { root in
            [accounts[root][0]] + emailsByRoot[root]!.sorted()
        }
    }
}
