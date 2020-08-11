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
// Journey
(jrnyFM2Facilities:Journey {uuid: '7f7dcab1-9736-4012-960e-03da3b841c4c', name: 'FM Marketplace Phase 2 - Housing'}),

// Specific answers
(ansHousingMngmtMaintenance:Answer {uuid: '4fb374af-5d60-425f-81a7-ae784d2b2eb5', text: 'Housing management and maintenance'}),
(ansEstateServices:Answer {uuid: 'f018e37b-9fc9-4709-a8c7-8ab093809178', text: 'Housing management and maintenance'}),


// Tree Structure
(jrnyFM2Housing)-[:FIRST_QUESTION]->(qiHousingType:QuestionInstance:Outcome {uuid: '2b6b7a4c-d635-11ea-87d0-0242ac130003'})-[:DEFINED_BY]->(qstnHousingType);

// TODO...
