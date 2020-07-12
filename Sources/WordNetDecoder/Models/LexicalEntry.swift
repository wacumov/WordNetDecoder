/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct LexicalEntry: Codable {
    public let id: String
    public let lemma: Lemma
    public let forms: [Form]
    public let senses: [Sense]
    public let syntacticBehaviours: [SyntacticBehaviour]
    
    enum CodingKeys: String, CodingKey {
        case id
        case lemma = "Lemma"
        case forms = "Form"
        case senses = "Sense"
        case syntacticBehaviours = "SyntacticBehaviour"
    }
}
