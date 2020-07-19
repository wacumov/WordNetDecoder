/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public enum ArrayOrObject<T: Codable>: Codable {

    case array([T])
    case object(T)
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let array = try? container.decode([T].self) {
            self = .array(array)
            return
        }
        let object = try container.decode(T.self)
        self = .object(object)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .array(let array):
            try container.encode(array)
        case .object(let object):
            try container.encode(object)
        }
    }
}
