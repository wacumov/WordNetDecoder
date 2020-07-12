/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

import Foundation
import XMLCoder

public struct WordNetXMLDecoder {
    
    public init() {}
    
    public func decode(_ xmlData: Data) throws -> LexicalResource {
        let decoder = XMLDecoder()
        return try decoder.decode(LexicalResource.self, from: xmlData)
    }
}
