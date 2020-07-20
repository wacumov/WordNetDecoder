/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct LexicalEntry: Codable {
    public let id: String
    public let lemma: Lemma
    public let forms: OneOrMany<Form>?
    public let senses: OneOrMany<Sense>?
    public let syntacticBehaviours: OneOrMany<SyntacticBehaviour>?
    
    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case lemma = "Lemma"
        case forms = "Form"
        case senses = "Sense"
        case syntacticBehaviours = "SyntacticBehaviour"
    }
}
