import XCTest
import CCLISO8601DateFormatter


typealias ISO8601DateFormatter = CCLISO8601DateFormatter.ISO8601DateFormatter


class ISO8601DateFormatterTests: XCTestCase {
  var formatter: ISO8601DateFormatter?

  override func setUp() {
    formatter = ISO8601DateFormatter()
  }

  func testParse() {
    let date = "2011-10-19T16:40:51.620Z"
    let parsed = formatter?.date(from: date)

    XCTAssertEqual(parsed?.description, "2011-10-19 16:40:51 +0000")
  }
}
