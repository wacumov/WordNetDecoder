/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public enum PartOfSpeech: String, Codable {
    case noun = "n"
    case verb = "v"
    case adjective = "a"
    case adverb = "r"
    case adjectiveSatellite = "s"
    case conjunction = "c"
    case adposition = "p"
    case other = "x"
    case unknown = "u"
}
