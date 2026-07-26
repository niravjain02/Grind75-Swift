public enum CourseSchedule {
    /// Returns whether every course can be completed without a prerequisite cycle.
    ///
    /// - Complexity:
    ///   - Time: O(V + E)
    ///   - Space: O(V + E)
    public static func solve(_ numberOfCourses: Int, prerequisites: [[Int]]) -> Bool {
        guard numberOfCourses > 0 else {
            return true
        }

        var dependents = Array(repeating: [Int](), count: numberOfCourses)
        var indegrees = Array(repeating: 0, count: numberOfCourses)

        for prerequisite in prerequisites {
            let course = prerequisite[0]
            let requiredCourse = prerequisite[1]
            dependents[requiredCourse].append(course)
            indegrees[course] += 1
        }

        var queue: [Int] = []

        for course in 0..<numberOfCourses where indegrees[course] == 0 {
            queue.append(course)
        }

        var head = 0

        while head < queue.count {
            let completedCourse = queue[head]
            head += 1

            for course in dependents[completedCourse] {
                indegrees[course] -= 1

                if indegrees[course] == 0 {
                    queue.append(course)
                }
            }
        }

        return queue.count == numberOfCourses
    }
}
