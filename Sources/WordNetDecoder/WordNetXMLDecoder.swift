/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

import Foundation
import xml2json

public struct WordNetXMLDecoder {
    
    public init() {}
    
    public func decode(_ xmlData: Data) throws -> WordNet {
        guard let xmlString = String(data: xmlData, encoding: .utf8) else {
            throw Error.couldNotCreateXMLString
        }
        guard let jsonString = XMLToJSON.convert(xmlString) else {
            throw Error.xmlToJsonConversionFailed
        }
        guard let jsonData = jsonString.data(using: .utf8) else {
            throw Error.couldNotCreateJSONData
        }
        let decoder = JSONDecoder()
        return try decoder.decode(WordNet.self, from: jsonData)
    }
    
    public enum Error: Swift.Error {
        case couldNotCreateXMLString
        case xmlToJsonConversionFailed
        case couldNotCreateJSONData
    }
}
