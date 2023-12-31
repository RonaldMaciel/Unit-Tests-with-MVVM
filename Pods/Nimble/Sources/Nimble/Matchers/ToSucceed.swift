/**
 Used by the `succeed` matcher.

 This is the return type for the closure.
 */
public enum ToSucceedResult {
    case succeeded
    case failed(reason: String)
}

/**
 A Nimble matcher that takes in a closure for validation.

 Return `.succeeded` when the validation succeeds.
 Return `.failed` with a failure reason when the validation fails.
 */
public func succeed() -> Matcher<ToSucceedResult> {
    return Matcher.define { actualExpression in
        let optActual = try actualExpression.evaluate()
        guard let actual = optActual else {
            return MatcherResult(status: .fail, message: .fail("expected a ToSucceedResult, got <nil>"))
        }

        switch actual {
        case .succeeded:
            return MatcherResult(
                bool: true,
                message: .expectedCustomValueTo("succeed", actual: "<succeeded>")
            )
        case .failed(let reason):
            return MatcherResult(
                bool: false,
                message: .expectedCustomValueTo("succeed", actual: "<failed> because <\(reason)>")
            )
        }
    }
}
