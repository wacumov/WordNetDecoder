/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Lemma: Codable {
    public let writtenForm: String
    public let partOfSpeech: PartOfSpeech
    public let tags: [Tag]
    
    enum CodingKeys: String, CodingKey {
        case writtenForm, partOfSpeech
        case tags = "Tag"
    }
}
