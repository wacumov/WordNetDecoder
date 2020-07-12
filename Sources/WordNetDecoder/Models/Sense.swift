/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Sense: Codable {
    
    public typealias ID = String
    
    public let id: ID
    public let synset: Synset.ID
    public let senseRelations: [SenseRelation]
    public let examples: [Example]
    public let counts: [Count]
    
    enum CodingKeys: String, CodingKey {
        case id, synset
        case senseRelations = "SenseRelation"
        case examples = "Example"
        case counts = "Count"
    }
}
