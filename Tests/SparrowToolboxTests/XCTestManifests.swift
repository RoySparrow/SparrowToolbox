import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(OSStatusExtensionsTests.allTests),
        testCase(ReusableViewTests.allTests),
    ]
}
#endif
