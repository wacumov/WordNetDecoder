/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public enum StringOrObject<T: Codable>: Codable {
    
    case string(String)
    case object(T)
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let object = try? container.decode(T.self) {
            self = .object(object)
            return
        }
        let string = try container.decode(String.self)
        self = .string(string)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let string):
            try container.encode(string)
        case .object(let object):
            try container.encode(object)
        }
    }
}
