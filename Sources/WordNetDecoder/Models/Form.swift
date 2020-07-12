/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Form: Codable {
    public let writtenForm: String
    public let tags: [Tag]
    
    enum CodingKeys: String, CodingKey {
        case writtenForm
        case tags = "Tag"
    }
}
