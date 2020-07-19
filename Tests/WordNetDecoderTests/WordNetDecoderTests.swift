/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

import XCTest
import WordNetDecoder

final class WordNetDecoderTests: XCTestCase {

    func testXMLDecoding() throws {
        // Given
        guard let data = exampleXMLString.data(using: .utf8) else { return XCTFail() }
        
        // When
        let wordnet = try WordNetXMLDecoder().decode(data)

        // Then
        guard case .array(let lexicons) = wordnet.lexicalResource.lexicons else { return XCTFail() }
        XCTAssertEqual(lexicons.count, 2)
    }

    static var allTests = [
        ("testXMLDecoding", testXMLDecoding),
    ]
}
