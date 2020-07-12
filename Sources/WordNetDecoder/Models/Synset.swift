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
    public let definitions: [Definition]
    public let synsetRelations: [SynsetRelation]
    public let examples: [Example]
    
    enum CodingKeys: String, CodingKey {
        case id, ili
        case iliDefinition = "ILIDefinition"
        case definitions = "Definition"
        case synsetRelations = "SynsetRelation"
        case examples = "Example"
    }
}
