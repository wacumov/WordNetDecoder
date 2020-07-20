/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct LexicalResource: Codable {
    public let lexicons: OneOrMany<Lexicon>
    
    enum CodingKeys: String, CodingKey {
        case lexicons = "Lexicon"
    }
}
