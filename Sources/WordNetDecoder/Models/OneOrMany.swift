/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct OneOrMany<T: Codable>: Codable {

    public let array: [T]

    enum CodingKeys: String, CodingKey {
        case array = "array"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let array = try? container.decode([T].self) {
            self.array = array
            return
        }
        let object = try container.decode(T.self)
        self.array = [object]
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(array, forKey: .array)
    }
}
