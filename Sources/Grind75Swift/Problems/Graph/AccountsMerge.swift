public enum AccountsMerge {
    /// Merges accounts connected by at least one shared email address.
    ///
    /// - Complexity:
    ///   - Time: O(e * α(n) + e log e), dominated by sorting grouped emails
    ///   - Space: O(n + e)
    public static func solve(_ accounts: [[String]]) -> [[String]] {
        guard !accounts.isEmpty else {
            return []
        }

        var disjointSet = DisjointSet(count: accounts.count)
        var ownerByEmail: [String: Int] = [:]

        for (accountIndex, account) in accounts.enumerated() {
            for email in account.dropFirst() {
                if let owner = ownerByEmail[email] {
                    disjointSet.union(accountIndex, owner)
                } else {
                    ownerByEmail[email] = accountIndex
                }
            }
        }

        var emailsByRoot: [Int: [String]] = [:]

        for (email, accountIndex) in ownerByEmail {
            let root = disjointSet.find(accountIndex)
            emailsByRoot[root, default: []].append(email)
        }

        return emailsByRoot.keys.sorted().map { root in
            [accounts[root][0]] + emailsByRoot[root]!.sorted()
        }
    }

    private struct DisjointSet {
        private var parent: [Int]
        private var size: [Int]

        init(count: Int) {
            parent = Array(0..<count)
            size = Array(repeating: 1, count: count)
        }

        mutating func find(_ value: Int) -> Int {
            if parent[value] != value {
                parent[value] = find(parent[value])
            }
            return parent[value]
        }

        mutating func union(_ first: Int, _ second: Int) {
            var firstRoot = find(first)
            var secondRoot = find(second)

            guard firstRoot != secondRoot else {
                return
            }

            if size[firstRoot] < size[secondRoot] {
                swap(&firstRoot, &secondRoot)
            }

            parent[secondRoot] = firstRoot
            size[firstRoot] += size[secondRoot]
        }
    }
}
