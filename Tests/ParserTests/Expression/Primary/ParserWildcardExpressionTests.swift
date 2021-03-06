/*
   Copyright 2016 Ryuichi Laboratories and the Yanagiba project contributors

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import XCTest

@testable import AST

class ParserWildcardExpressionTests: XCTestCase {
  func testParseWildcardExpression() {
    parseExpressionAndTest("_", "_", testClosure: { expr in
      XCTAssertTrue(expr is WildcardExpression)
    })
  }

  func testSourceRange() {
    parseExpressionAndTest("_", "_", testClosure: { expr in
      XCTAssertEqual(expr.sourceRange, getRange(1, 1, 1, 2))
    })
  }

  static var allTests = [
    ("testParseWildcardExpression", testParseWildcardExpression),
    ("testSourceRange", testSourceRange),
  ]
}
