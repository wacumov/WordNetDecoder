/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Synset: Codable {
    
    public typealias ID = String
    
    public let id: ID
    public let ili: String
    
    public let iliDefinition: ILIDefinition?
    public let definitions: OneOrMany<Definition>?
    public let synsetRelations: OneOrMany<SynsetRelation>?
    public let examples: OneOrMany<Example>?
    public let confidenceScore: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case ili = "@ili"
        case iliDefinition = "ILIDefinition"
        case definitions = "Definition"
        case synsetRelations = "SynsetRelation"
        case examples = "Example"
        case confidenceScore = "@confidenceScore"
    }
}
