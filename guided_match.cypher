// SCALE GM DB
// Guided match: Facilities Management (FM Marketplace Phase 2)

// Label Constraints
// Answer
CREATE CONSTRAINT unique_answer_uuid ON (a:Answer) ASSERT a.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_uuid ON (qd:QuestionDefinition) ASSERT qd.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_instance_uuid ON (qi:QuestionInstance) ASSERT qi.uuid IS UNIQUE;
CREATE CONSTRAINT unique_journey_uuid ON (j:Journey) ASSERT j.uuid IS UNIQUE;
CREATE CONSTRAINT unique_journey_result_uuid ON (jr:JourneyResult) ASSERT jr.uuid IS UNIQUE;

CREATE
// Question definitions
(qstnProductOrService:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003', text: 'Are you looking for a product or service?', type: 'LIST'}),
(qstnBudget:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003', text: 'What is your estimated spend / budget?', type: 'BOOLEAN'}),
(qstnContractLength:QuestionDefinition {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003', text: 'What is the estimated length of Contract / SoW?', type: 'BOOLEAN'}),
(qstnAdditionalServices:QuestionDefinition {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Are additional services required?', type: 'BOOLEAN'}),
(qstnOrganisation:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'What organisation do you belong to?', type: 'LIST'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Select which service is required', type: 'LIST'}),
(qstnServices:QuestionDefinition {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Select which services are required', type: 'MULTI_SELECT_LIST'}),
(qstnLocation:QuestionDefinition {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Select the locations where the service is required', type: 'MULTI_SELECT_LIST'}),
(qstnSubService:QuestionDefinition {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What type of sub-service is required?', type: 'LIST'}),

// Answer definitions
// Product / Service
(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: 'A product is an item you can buy, such as a kettle.  It requires no ongoing contract.'}),
(ansService:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. It may involve leasing a product as part of the service, for example supplying mobile phones with a network and data.'}),
(ansProductAndService:Answer {uuid: 'b879ff24-654e-11ea-bc55-0242ac130003', text: 'Product and Service'}),

// Organisations
(ansOrgMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003', text: 'MoD'}),
(ansOrgCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003', text: 'CG'}),
(ansOrgDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003', text: 'Devolved'}),
(ansOrgEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003', text: 'Education'}),
(ansOrgHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003', text: 'Health'}),
(ansOrgLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003', text: 'LG'}),
(ansOrgBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003', text: 'Blue Light'}),
(ansOrgHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003', text: 'Housing'}),
(ansOrgCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003', text: 'Charities'}),
(ansOrgWPS:Answer {uuid: 'b879ab14-654e-11ea-bc55-0242ac130003', text: 'WPS'}),

// locations
(ansLocNational:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'National'}),
(ansLocWales:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003', text: 'Wales'}),
(ansLocScotland:Answer {uuid: 'b879c98c-654e-11ea-bc55-0242ac130003', text: 'Scotland'}),
(ansLocNorthernIreland:Answer {uuid: 'b879cac2-654e-11ea-bc55-0242ac130003', text: 'Northern Ireland'}),
(ansLocNorthEast:Answer {uuid: 'b879cb8a-654e-11ea-bc55-0242ac130003', text: 'North East'}),
(ansLocNorthWest:Answer {uuid: 'b879cc98-654e-11ea-bc55-0242ac130003', text: 'North West'}),
(ansLocYorks:Answer {uuid: 'b879cdba-654e-11ea-bc55-0242ac130003', text: 'Yorkshire and the Humber'}),
(ansLocEastMid:Answer {uuid: 'b879ce82-654e-11ea-bc55-0242ac130003', text: 'East Midlands'}),
(ansLocWestMid:Answer {uuid: 'b879cfcc-654e-11ea-bc55-0242ac130003', text: 'West Midlands'}),
(ansLocEastEng:Answer {uuid: 'b879d094-654e-11ea-bc55-0242ac130003', text: 'East of England'}),
(ansLocLondon:Answer {uuid: 'b879d1b6-654e-11ea-bc55-0242ac130003', text: 'London'}),
(ansLocSouthEast:Answer {uuid: 'b879d27e-654e-11ea-bc55-0242ac130003', text: 'South East'}),
(ansLocSouthWest:Answer {uuid: 'b879d3c8-654e-11ea-bc55-0242ac130003', text: 'South West'}),

// Security
(ansSecPhysTech:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003', text: 'Physical & Technical'}),
(ansSecPhys:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003', text: 'Physical'}),
(ansSecTech:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003', text: 'Technical'}),

(jrnyFM2:Journey {uuid: 'b879de86-654e-11ea-bc55-0242ac130003', name: 'FM Marketplace Phase 2', searchTerms: ['facility', 'facilities', 'housing', 'accommodation', 'security', 'catering', 'waste', 'cleaning']}),

// Outcomes (Journey Results)
(resultFM2Lot2bFC:Agreement:Outcome {uuid: 'b879e03e-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot2aFC:Agreement:Outcome {uuid: 'b879e106-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot3FC:Agreement:Outcome {uuid: 'b879e250-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 3)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot2cFC:Agreement:Outcome {uuid: 'b879e386-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2c)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

// Security specific
(resultFM2Lot1aFC:Agreement:Outcome {uuid: 'b879e476-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot1bFC:Agreement:Outcome {uuid: 'b879e566-654e-11ea-bc55-0242ac130003', name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

// Generic (other)
(resultGMEndRouteToFM:Agreement:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003', name: 'Facilities Management Marketplace', description: 'UK-wide facilities management (FM) services organised regionally and available to all public sector entities. Includes maintenance, cleaning, security, helpdesk etc.', agreementId: 'RM3830', url: ''}),

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
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(resultFM2Lot3FC),
(ansGrpModSvcsDynamic)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// MOD branch - Select Location(s)
(ansGrpModLocNational:AnswerGroup {name: 'ansGrpModLocNational'}),
(qiLocationMOD)-[:HAS_ANSWER_GROUP]->(ansGrpModLocNational),
(ansGrpModLocNational)-[:HAS_ANSWER]->(ansLocNational),
(ansGrpModLocNational)-[:HAS_OUTCOME]->(resultFM2Lot2bFC),

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
(ansGrpModLocRegional)-[:HAS_OUTCOME]->(resultFM2Lot2aFC),

// Multi-select (+1 region = route National)
(ansGrpModLocRegional)-[:MULTI_SELECT]->(ansGrpModLocNational),

// Non-MOD branch (Dynamic)
// Special cases - Housing or Security
(ansGrpNonModSvcsDynamic:AnswerGroup {name: 'ansGrpNonModSvcsDynamic'}),
(qiServicesNonMOD)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsDynamic),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(resultFM2Lot2cFC),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(qiSecuritySubtype:QuestionInstance:Outcome {uuid: 'b879dbf2-654e-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSubService),
(ansGrpNonModSvcsDynamic)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Multi-select (+1 services = route resultGMEndRouteToFM)
(ansGrpNonModSvcsDynamic)-[:MULTI_SELECT]->(resultGMEndRouteToFM),

// Non-MoD Security sub-branch
(ansGrpNonModSvcsSecurityPhysTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityPhysTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER]->(ansSecPhysTech),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_ANSWER]->(ansSecPhys),
(ansGrpNonModSvcsSecurityPhysTech)-[:HAS_OUTCOME]->(resultFM2Lot1aFC),

(ansGrpNonModSvcsSecurityTech:AnswerGroup {name: 'ansGrpNonModSvcsSecurityTech'}),
(qiSecuritySubtype)-[:HAS_ANSWER_GROUP]->(ansGrpNonModSvcsSecurityTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_ANSWER]->(ansSecTech),
(ansGrpNonModSvcsSecurityTech)-[:HAS_OUTCOME]->(resultFM2Lot1bFC);
