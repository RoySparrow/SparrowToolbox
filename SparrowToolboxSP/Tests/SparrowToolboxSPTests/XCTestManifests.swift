import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SparrowToolboxSPTests.allTests),
    ]
}
#endif
