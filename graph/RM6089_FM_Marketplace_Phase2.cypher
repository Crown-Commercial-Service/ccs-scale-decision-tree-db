MATCH
// Required QuestionDefinition nodes:
(qstnOrganisation:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnServices:QuestionDefinition {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnLocation:QuestionDefinition {uuid: 'b879c662-654e-11ea-bc55-0242ac130003'}),
(qstnSubService:QuestionDefinition {uuid: 'b879c784-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansOrgMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansOrgCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansOrgDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansOrgEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansOrgHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansOrgLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansOrgBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansOrgHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansOrgCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),
(ansOrgWPS:Answer {uuid: 'b879ab14-654e-11ea-bc55-0242ac130003'}),

(ansLocNational:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003'}),
(ansLocWales:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003'}),
(ansLocScotland:Answer {uuid: 'b879c98c-654e-11ea-bc55-0242ac130003'}),
(ansLocNorthernIreland:Answer {uuid: 'b879cac2-654e-11ea-bc55-0242ac130003'}),
(ansLocNorthEast:Answer {uuid: 'b879cb8a-654e-11ea-bc55-0242ac130003'}),
(ansLocNorthWest:Answer {uuid: 'b879cc98-654e-11ea-bc55-0242ac130003'}),
(ansLocYorks:Answer {uuid: 'b879cdba-654e-11ea-bc55-0242ac130003'}),
(ansLocEastMid:Answer {uuid: 'b879ce82-654e-11ea-bc55-0242ac130003'}),
(ansLocWestMid:Answer {uuid: 'b879cfcc-654e-11ea-bc55-0242ac130003'}),
(ansLocEastEng:Answer {uuid: 'b879d094-654e-11ea-bc55-0242ac130003'}),
(ansLocLondon:Answer {uuid: 'b879d1b6-654e-11ea-bc55-0242ac130003'}),
(ansLocSouthEast:Answer {uuid: 'b879d27e-654e-11ea-bc55-0242ac130003'}),
(ansLocSouthWest:Answer {uuid: 'b879d3c8-654e-11ea-bc55-0242ac130003'}),

(ansSecPhysTech:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003'}),
(ansSecPhys:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003'}),
(ansSecTech:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003'}),

(resultGMEndRouteToFM:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003'})

CREATE
(jrnyFM2:Journey {uuid: 'b879de86-654e-11ea-bc55-0242ac130003', name: 'FM Marketplace Phase 2', searchTerms: ['security', 'workplace', 'facilities', 'housing']}),

// Outcomes (Agreement Lots)
(lotFM2Lot2bFC:Lot:Outcome {uuid: 'b879e03e-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(lotFM2Lot2aFC:Lot:Outcome {uuid: 'b879e106-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(lotFM2Lot3FC:Lot:Outcome {uuid: 'b879e250-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 3)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(lotFM2Lot2cFC:Lot:Outcome {uuid: 'b879e386-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2c)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

// Security specific
(lotFM2Lot1aFC:Lot:Outcome {uuid: 'b879e476-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(lotFM2Lot1bFC:Lot:Outcome {uuid: 'b879e566-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

(jrnyFM2)-[:FIRST_QUESTION {name: jrnyFM2.name + '-> qiOrganisation' }]->(qiOrganisation:QuestionInstance:Outcome {uuid: 'b879d774-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnOrganisation),

// Organisation / Sector
(ansGrpOrgMod:AnswerGroup {name: 'ansGrpOrgMod'}),
(qiOrganisation)-[:HAS_ANSWER_GROUP]->(ansGrpOrgMod),
(ansGrpOrgMod)-[:HAS_ANSWER]->(ansOrgMoD),
(ansGrpOrgMod)-[:HAS_OUTCOME]->(qiServicesMOD:QuestionInstance:Outcome {uuid: 'b879d86e-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

(ansGrpOrgNonMod:AnswerGroup {name: 'ansGrpOrgNonMod'}),
(qiOrganisation)-[:HAS_ANSWER_GROUP]->(ansGrpOrgNonMod),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgCG),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgDevolved),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgEdu),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgHealth),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgLG),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgBlueLight),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgHousing),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgCharities),
(ansGrpOrgNonMod)-[:HAS_ANSWER]->(ansOrgWPS),
(ansGrpOrgNonMod)-[:HAS_OUTCOME]->(qiServicesNonMOD:QuestionInstance:Outcome {uuid: 'b879d9cc-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServices),

// MOD branch - Select service(s) (Dynamic look up)
(ansGrpModSvcsDynamic:AnswerGroup {name: 'ansGrpModSvcsDynamic'}),
(qiServicesMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModSvcsDynamic),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(qiLocationMOD:QuestionInstance:Outcome {uuid: 'b879dae4-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnLocation),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(lotFM2Lot3FC),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// MOD branch - Select Location(s)
(ansGrpModLocNational:AnswerGroup {name: 'ansGrpModLocNational'}),
(qiLocationMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModLocNational),
(ansGrpModLocNational)-[:HAS_ANSWER]->(ansLocNational),
(ansGrpModLocNational)-[:HAS_OUTCOME]->(lotFM2Lot2bFC),

(ansGrpModLocRegional:AnswerGroup {name: 'ansGrpModLocRegional'}),
(qiLocationMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModLocRegional),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocWales),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocScotland),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocNorthernIreland),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocNorthEast),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocNorthWest),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocYorks),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocEastMid),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocWestMid),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocEastEng),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocLondon),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocSouthEast),
(ansGrpModLocRegional)-[:HAS_ANSWER]->(ansLocSouthWest),
(ansGrpModLocRegional)-[:HAS_OUTCOME]->(lotFM2Lot2aFC),

// Multi-select (+1 region = route National)
(ansGrpModLocRegional)-[:MULTI_SELECT]->(ansGrpModLocNational),

// Non-MOD branch (Dynamic)
// Special cases - Housing or Security
(ansGrpNonModSvcsDynamic:AnswerGroup {name: 'ansGrpNonModSvcsDynamic'}),
(qiServicesNonMOD)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsDynamic),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(lotFM2Lot2cFC),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(qiSecuritySubtype:QuestionInstance:Outcome {uuid: 'b879dbf2-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSubService),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Multi-select (+1 services = route resultGMEndRouteToFM)
(ansGrpNonModSvcsDynamic)-[:MULTI_SELECT]->(resultGMEndRouteToFM),

// Non-MoD Security sub-branch
(ansGrpNonModSvcsSecurityPhysTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityPhysTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER]->(ansSecPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER]->(ansSecPhys),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_OUTCOME]->(lotFM2Lot1aFC),

(ansGrpNonModSvcsSecurityTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_ANSWER]->(ansSecTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_OUTCOME]->(lotFM2Lot1bFC);
