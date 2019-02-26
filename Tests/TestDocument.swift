import XCTest
@testable import TCR

class TestDocument: XCTestCase {
    func testMakeDirectory() {
        XCTAssertTrue(Document.make([URL(fileURLWithPath: NSHomeDirectory())]).first is Directory)
        XCTAssertFalse(Document.make([URL(fileURLWithPath: "hello.world")]).first is Directory)
    }
    
    func testMd() {
        XCTAssertTrue(Document.make([URL(fileURLWithPath: "hello.md")]).first is Md)
    }
    
    func testName() {
        XCTAssertEqual("hello.md", Document.make([URL(fileURLWithPath: "is/fake/hello.md")]).first?.name)
    }
}
