MATCH
// Required QuestionDefinition nodes:
(qstnOrganisation:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
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

(ansLocNational:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003'}),
(ansLocRegional:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003'}),

(ansSecPhysTech:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003'}),
(ansSecPhys:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003'}),
(ansSecTech:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003'}),

(resultGMEndRouteToFM:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003'}),
(resultCCSSupport:Lot:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
(jrnyFM2:Journey {uuid: 'b879de86-654e-11ea-bc55-0242ac130003', name: 'FM Marketplace Phase 2', searchTerms: ['security', 'workplace', 'facilities', 'housing', 'water cooler']}),

// Outcomes (Agreement Lots)
(lotFM2Lot2bFC:Lot:Outcome {uuid: 'b879e03e-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2b', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Defence Housing Maintenance Services (Regional)', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),

(lotFM2Lot2aFC:Lot:Outcome {uuid: 'b879e106-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2a', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Defence Housing Management Services (National)', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),

(lotFM2Lot3FC:Lot:Outcome {uuid: 'b879e250-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 3', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'MOD Facilities Management Marketplace', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),

(lotFM2Lot2cFC:Lot:Outcome {uuid: 'b879e386-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2c', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Housing Maintenance and Management Services', agreementId: 'RM6089', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

// Security specific
(lotFM2Lot1aFC:Lot:Outcome {uuid: 'b879e476-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 1a', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Security Services', agreementId: 'RM6089', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

(lotFM2Lot1bFC:Lot:Outcome {uuid: 'b879e566-654e-11ea-bc55-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 1b', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Technical Security', agreementId: 'RM6089', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

(jrnyFM2)-[:FIRST_QUESTION {name: jrnyFM2.name + '-> qiOrganisation' }]->(qiOrganisation:QuestionInstance:Outcome {uuid: 'b879d774-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnOrganisation),

// Organisation / Sector
(ansGrpOrgMod:AnswerGroup {name: 'ansGrpOrgMod'}),
(qiOrganisation)-[:HAS_ANSWER_GROUP]->(ansGrpOrgMod),
(ansGrpOrgMod)-[:HAS_ANSWER {order: 1}]->(ansOrgMoD),
(ansGrpOrgMod)-[:HAS_OUTCOME]->(qiServicesMOD:QuestionInstance:Outcome {uuid: 'b879d86e-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

(ansGrpOrgNonMod:AnswerGroup {name: 'ansGrpOrgNonMod'}),
(qiOrganisation)-[:HAS_ANSWER_GROUP]->(ansGrpOrgNonMod),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 2}]->(ansOrgCG),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 3}]->(ansOrgDevolved),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 4}]->(ansOrgEdu),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 5}]->(ansOrgHealth),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 6}]->(ansOrgLG),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 7}]->(ansOrgBlueLight),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 8}]->(ansOrgHousing),
(ansGrpOrgNonMod)-[:HAS_ANSWER {order: 9}]->(ansOrgCharities),
(ansGrpOrgNonMod)-[:HAS_OUTCOME]->(qiServicesNonMOD:QuestionInstance:Outcome {uuid: 'b879d9cc-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// MOD branch - Select service(s) (Dynamic look up)
(ansGrpModSvcsDynamic:AnswerGroup {name: 'ansGrpModSvcsDynamic'}),
(qiServicesMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModSvcsDynamic),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(qiLocationMOD:QuestionInstance:Outcome {uuid: 'b879dae4-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnLocation),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(lotFM2Lot3FC),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(resultCCSSupport),

// MOD branch - Select Location(s)
(ansGrpModLocNational:AnswerGroup {name: 'ansGrpModLocNational'}),
(qiLocationMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModLocNational),
(ansGrpModLocNational)-[:HAS_ANSWER {order: 1}]->(ansLocNational),
(ansGrpModLocNational)-[:HAS_OUTCOME]->(lotFM2Lot2bFC),

(ansGrpModLocRegional:AnswerGroup {name: 'ansGrpModLocRegional'}),
(qiLocationMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModLocRegional),
(ansGrpModLocRegional)-[:HAS_ANSWER {order: 2}]->(ansLocRegional),
(ansGrpModLocRegional)-[:HAS_OUTCOME]->(lotFM2Lot2aFC),

// Non-MOD branch (Dynamic)
(ansGrpNonModSvcsDynamic:AnswerGroup {name: 'ansGrpNonModSvcsDynamic'}),
(qiServicesNonMOD)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsDynamic),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(lotFM2Lot2cFC),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(qiSecuritySubtype:QuestionInstance:Outcome {uuid: 'b879dbf2-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSubService),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Multi-select (+1 services = route resultGMEndRouteToFM)
(ansGrpNonModSvcsDynamic)-[:MULTI_SELECT]->(resultGMEndRouteToFM),

// Non-MoD Security sub-branch
(ansGrpNonModSvcsSecurityTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_ANSWER {order: 2}]->(ansSecTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_OUTCOME]->(lotFM2Lot1bFC),

(ansGrpNonModSvcsSecurityPhysTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityPhysTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER {order: 1}]->(ansSecPhys),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER {order: 3}]->(ansSecPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_OUTCOME]->(lotFM2Lot1aFC);
