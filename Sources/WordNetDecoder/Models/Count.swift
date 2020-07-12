/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct Count: Codable {
    public let value: String
    
    enum CodingKeys: String, CodingKey {
        case value = ""
    }
}
