/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Synset: Codable {
    
    public typealias ID = String
    
    public let id: ID
    public let ili: String
    
    public let iliDefinition: StringOrObject<ILIDefinition>?
    public let definitions: ArrayOrObject<StringOrObject<Definition>>?
    public let synsetRelations: ArrayOrObject<SynsetRelation>?
    public let examples: ArrayOrObject<Example>?
    
    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case ili = "@ili"
        case iliDefinition = "ILIDefinition"
        case definitions = "Definition"
        case synsetRelations = "SynsetRelation"
        case examples = "Example"
    }
}
