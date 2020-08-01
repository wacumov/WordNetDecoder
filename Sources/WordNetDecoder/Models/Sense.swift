/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Sense: Codable {
    
    public typealias ID = String
    
    public let id: ID
    public let synset: Synset.ID
    public let senseRelations: OneOrMany<SenseRelation>?
    public let examples: OneOrMany<Example>?
    public let counts: OneOrMany<Count>?
    public let confidenceScore: String?
    public let status: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case synset = "@synset"
        case senseRelations = "SenseRelation"
        case examples = "Example"
        case counts = "Count"
        case confidenceScore = "@confidenceScore"
        case status = "@status"
    }
}
