public final class TimeMap {
    private typealias Entry = (timestamp: Int, value: String)
    private var entriesByKey: [String: [Entry]] = [:]

    public init() {}

    /// Stores a value for a key at a strictly increasing timestamp.
    ///
    /// - Complexity: O(1) amortized time
    public func set(_ key: String, _ value: String, _ timestamp: Int) {
        entriesByKey[key, default: []].append((timestamp, value))
    }

    /// Returns the value with the greatest timestamp not exceeding the query.
    ///
    /// - Complexity: O(log n) time for n values stored under the key
    public func get(_ key: String, _ timestamp: Int) -> String {
        guard let entries = entriesByKey[key] else {
            return ""
        }

        var left = 0
        var right = entries.count

        while left < right {
            let middle = left + (right - left) / 2

            if entries[middle].timestamp <= timestamp {
                left = middle + 1
            } else {
                right = middle
            }
        }

        return left == 0 ? "" : entries[left - 1].value
    }
}
