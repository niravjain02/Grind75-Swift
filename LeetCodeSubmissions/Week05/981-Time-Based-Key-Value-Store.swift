class TimeMap {
    private typealias Entry = (timestamp: Int, value: String)
    private var entriesByKey: [String: [Entry]] = [:]

    init() {}

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        entriesByKey[key, default: []].append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
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
