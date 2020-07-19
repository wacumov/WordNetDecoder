/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct WordNet: Codable {
    
    public let lexicalResource: LexicalResource
    
    enum CodingKeys: String, CodingKey {
        case lexicalResource = "LexicalResource"
    }
}
