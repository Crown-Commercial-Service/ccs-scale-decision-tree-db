CREATE
// Journey
(jrnyFM2Housing:Journey {uuid: '12fda7dc-d635-11ea-87d0-0242ac130003', name: 'FM Marketplace Phase 2 - Housing'}),

// Specific questions
(qstnHousingType:Question {uuid: 'fbdd93be-d634-11ea-87d0-0242ac130003', text: 'What Type of Housing?', type: 'LIST'}),
(qstnSector:Question {uuid: 'fbdd9850-d634-11ea-87d0-0242ac130003', text: 'What Sector?', type: 'LIST'}),

// Specific answers
(ansHousingEstates:Answer {uuid: 'fbdd9986-d634-11ea-87d0-0242ac130003', text: 'Estates', hint: 'Estates.'}),
(ansHousingMOD:Answer {uuid: 'fbdd9a58-d634-11ea-87d0-0242ac130003', text: 'MOD', hint: 'MOD.'}),
(ansHousingNonMOD:Answer {uuid: 'fbdd9b20-d634-11ea-87d0-0242ac130003', text: 'Non MOD', hint: 'Non MOD.'}),

// Outcomes (Agreement Lots)
(lotFM2Lot2a:Lot:Outcome {uuid: '12fdaa5c-d635-11ea-87d0-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2a: TODO', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Defence Housing Maintenance Services (Regional)', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),
(lotFM2Lot2b:Lot:Outcome {uuid: '12fdab2e-d635-11ea-87d0-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2b: TODO', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'Defence Housing Management Services (National)', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),
(lotFM2Lot2c:Lot:Outcome {uuid: '12fdabf6-d635-11ea-87d0-0242ac130003', agreementName: 'Workplace Services (FM Marketplace Phase 2)', lotName: 'Lot 2c: TODO', agreementDescription: 'Security, housing and defence facilities management (FM) services.', lotDescription: 'MOD Facilities Management Marketplace', agreementId: 'RM6089', url: '', type: 'CAT', scale: false, routeToMarket: "FC"}),

// Tree Structure
(jrnyFM2Housing)-[:FIRST_QUESTION]->(qiHousingType:QuestionInstance:Outcome {uuid: '2b6b7a4c-d635-11ea-87d0-0242ac130003'})-[:DEFINED_BY]->(qstnHousingType),

// Estates - End GM - Route to Non Scale
(ansGrpEstates:AnswerGroup {name: 'ansGrpEstates'}),
(qiHousingType)-[:HAS_ANSWER_GROUP]->(ansGrpEstates),
(ansGrpEstates)-[:HAS_ANSWER {order: 1}]->(ansHousingEstates),
(ansGrpEstates)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// MOD
(ansGrpMOD:AnswerGroup {name: 'ansGrpMOD'}),
(qiHousingType)-[:HAS_ANSWER_GROUP]->(ansGrpMOD),
(ansGrpMOD)-[:HAS_ANSWER {order: 1}]->(ansHousingMOD),
(ansGrpMOD)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Estates - End GM - Route to Non Scale
(ansGrpNonMOD:AnswerGroup {name: 'ansGrpNonMOD'}),
(qiHousingType)-[:HAS_ANSWER_GROUP]->(ansGrpMOD),
(ansGrpNonMOD)-[:HAS_ANSWER {order: 1}]->(ansHousingNonMOD),
(ansGrpNonMOD)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', routeToMarket: "FC", scale: true})
