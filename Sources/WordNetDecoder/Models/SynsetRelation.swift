/**
 *  WordNetDecoder
 *  Copyright (c) Mikhail Akopov 2020
 *  MIT license, see LICENSE file for details
 */

public struct SynsetRelation: Codable {
    public let target: Synset.ID
    public let relType: RelationType
    public let confidenceScore: String?
    
    enum CodingKeys: String, CodingKey {
        case target = "@target"
        case relType = "@relType"
        case confidenceScore = "@confidenceScore"
    }
    
    public enum RelationType: String, Codable {
        case agent
        case antonym
        case also
        case attribute
        case beInState = "be_in_state"
        case causes
        case classifiedBy = "classified_by"
        case classifies
        case coAgentInstrument = "co_agent_instrument"
        case coAgentPatient = "co_agent_patient"
        case coAgentResult = "co_agent_result"
        case coInstrumentAgent = "co_instrument_agent"
        case coInstrumentPatient = "co_instrument_patient"
        case coInstrumentResult = "co_instrument_result"
        case coPatientAgent = "co_patient_agent"
        case coPatientInstrument = "co_patient_instrument"
        case coResultAgent = "co_result_agent"
        case coResultInstrument = "co_result_instrument"
        case coRole = "co_role"
        case direction
        case domainRegion = "domain_region"
        case domainTopic = "domain_topic"
        case exemplifies
        case entails
        case eqSynonym = "eq_synonym"
        case hasDomainRegion = "has_domain_region"
        case hasDomainTopic = "has_domain_topic"
        case holoLocation = "holo_location"
        case holoMember = "holo_member"
        case holoPart = "holo_part"
        case holoPortion = "holo_portion"
        case holoSubstance = "holo_substance"
        case holonym
        case hypernym
        case hyponym
        case inManner = "in_manner"
        case instanceHypernym = "instance_hypernym"
        case instanceHyponym = "instance_hyponym"
        case instrument
        case involved
        case involvedAgent = "involved_agent"
        case involvedDirection = "involved_direction"
        case involvedInstrument = "involved_instrument"
        case involvedLocation = "involved_location"
        case involvedPatient = "involved_patient"
        case involvedResult = "involved_result"
        case involvedSourceDirection = "involved_source_direction"
        case involvedTargetDirection = "involved_target_direction"
        case isCausedBy = "is_caused_by"
        case isEntailedBy = "is_entailed_by"
        case isExemplifiedBy = "is_exemplified_by"
        case isSubeventOf = "is_subevent_of"
        case location
        case mannerOf = "manner_of"
        case meroLocation = "mero_location"
        case meroMember = "mero_member"
        case meroPart = "mero_part"
        case meroPortion = "mero_portion"
        case meroSubstance = "mero_substance"
        case meronym
        case other
        case patient
        case restrictedBy = "restricted_by"
        case restricts
        case result
        case role
        case similar
        case sourceDirection = "source_direction"
        case stateOf = "state_of"
        case subevent
        case targetDirection = "target_direction"
    }
}
