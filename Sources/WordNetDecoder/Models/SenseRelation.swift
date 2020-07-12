/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct SenseRelation: Codable {
    public let target: Sense.ID
    public let relType: RelationType
    
    public enum RelationType: String, Codable {
        case antonym
        case also
        case verbGroup = "verb_group"
        case participle
        case pertainym
        case derivation
        case domainCategory = "domain_category"
        case domainMemberCategory = "domain_member_category"
        case domainTopic = "domain_topic"
        case hasDomainTopic = "has_domain_topic"
        case domainRegion = "domain_region"
        case domainMemberRegion = "domain_member_region"
        case exemplifies
        case isExemplifiedBy = "is_exemplified_by"
        case similar
        case other
    }
}
