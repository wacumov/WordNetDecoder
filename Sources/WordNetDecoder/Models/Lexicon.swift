/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Lexicon: Codable {
    public let id: String
    public let label: String
    public let language: String
    public let email: String
    public let license: String
    public let version: String
    
    public let lexicalEntries: [LexicalEntry]
    public let synsets: [Synset]
    
    enum CodingKeys: String, CodingKey {
        case id, label, language, email, license, version
        case lexicalEntries = "LexicalEntry"
        case synsets = "Synset"
    }
}
