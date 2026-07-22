public enum ClimbingStairs {
    public static func solve(_ stepCount: Int) -> Int {
        guard stepCount > 0 else {
            return 0
        }
        guard stepCount > 1 else {
            return 1
        }

        var twoStepsBack = 1
        var oneStepBack = 2

        guard stepCount > 2 else {
            return oneStepBack
        }

        for _ in 3...stepCount {
            let current = oneStepBack + twoStepsBack
            twoStepsBack = oneStepBack
            oneStepBack = current
        }

        return oneStepBack
    }
}
