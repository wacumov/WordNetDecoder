/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Tag: Codable {
    
    public let category: String
    public let value: String
    
    enum CodingKeys: String, CodingKey {
        case category
        case value = ""
    }
}
