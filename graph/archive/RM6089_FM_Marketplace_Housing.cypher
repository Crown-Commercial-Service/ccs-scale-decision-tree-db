MATCH
// Questions
(qstnHousingType:Question {uuid: '4d9acc00-13eb-4854-8455-3213f381e0de'}),
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

// Answers
(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),

// Outcomes
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Answers
(ansHousingMgmtMaintenance:Answer {uuid: 'a70a802f-a0cf-4a97-87ba-f2cf1647e72d', text: 'Housing maintenance and management', hint: 'Reactive and planned maintenance for existing properties. Includes management of vacant properties, and maintaining lettable standards'}),
(ansEstateServices:Answer {uuid: '26f9107e-75a5-460e-ac62-a41fad737d2a', text: 'Estate services', hint: 'Housing management consultancy services such as advice on converting a building into flats'}),

// Journey
(jrnyFM2Housing:Journey {uuid: 'f08a2055-6502-4d5f-81f8-2e3f111ff7ae', name: 'FM Marketplace Phase 2 - Housing'}),

// Tree Structure
(jrnyFM2Housing)-[:FIRST_QUESTION]->(qiHousingType:QuestionInstance:Outcome {uuid: '2b6b7a4c-d635-11ea-87d0-0242ac130003'})-[:DEFINED_BY]->(qstnHousingType),

// Housing management and maintenance
(ansGrpHouseMgmtMaintenance:AnswerGroup {name: 'ansGrpHouseMgmtMaintenance'}),
(qiHousingType)-[:HAS_ANSWER_GROUP]->(ansGrpHouseMgmtMaintenance),
(ansGrpHouseMgmtMaintenance)-[:HAS_ANSWER {order: 1}]->(ansHousingMgmtMaintenance),
(ansGrpHouseMgmtMaintenance)-[:HAS_OUTCOME]->(qiSector:QuestionInstance:Outcome {uuid: '06f8c620-ccd1-4852-b1d7-2ef3caf322e2'})-[:DEFINED_BY]->(qstnSector),

// Estate Services
(ansGrpEstateServices:AnswerGroup {name: 'ansGrpEstateServices'}),
(qiHousingType)-[:HAS_ANSWER_GROUP]->(ansGrpEstateServices),
(ansGrpEstateServices)-[:HAS_ANSWER {order: 2}]->(ansEstateServices),
(ansGrpEstateServices)-[:HAS_OUTCOME]->(resultCCSEscapePage),

// Housing Type (Housing Mgmt & Maintenance) -> Sector (MoD)
(ansGrpSectorMoD:AnswerGroup {name: 'ansGrpSectorMoD'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorMoD),
(ansGrpSectorMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSectorMoD)-[:HAS_OUTCOME]->(fm2:Agreement:Outcome {number: 'RM6089'}),
(fm2)-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),
(fm2)-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),

// Housing Type (Housing Mgmt & Maintenance) -> Sector (Other)
(ansGrpSectorWPS:AnswerGroup {name: 'ansGrpSectorWPS'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorWPS),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorEdu),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpSectorWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true});
