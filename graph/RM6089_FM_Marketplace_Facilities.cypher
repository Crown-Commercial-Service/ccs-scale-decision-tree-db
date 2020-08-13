MATCH
// Questions
(qstnHousingType:Question {uuid: '4d9acc00-13eb-4854-8455-3213f381e0de'}),
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

// Answers - Sectors
(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),

// Answers - services
(ansMaintenance:Answer {uuid: '1596bd37-bc03-4f3e-abb8-560c1160cc30'}),
(ansGroundsHortic:Answer {uuid: '2e57ca18-5cb5-43d6-86eb-61eff804ab0e'}),
(ansStatutoryInspections:Answer {uuid: '61e636e8-8019-4a03-83dc-4a1e16177253'}),
(ansCatering:Answer {uuid: '3f3cd237-77e7-4211-b8e0-61af9f40dfee'}),
(ansCleaning:Answer {uuid: '06807bdd-8e02-4c56-9e20-802f5c3865cd'}),
(ansReception:Answer {uuid: '484725a9-829c-4bbe-91a4-9b1bbd6ef90b'}),
(ansSecurity:Answer {uuid: '2918104d-a410-41f8-9096-22dd80858649'}),
(ansWaste:Answer {uuid: '2ed4e18d-0886-4472-be10-e5fb1a6c5dd1'}),
(ansCAFM:Answer {uuid: '6c0ff503-4aac-4e80-84d1-26c9c106c992'}),
(ansAnythingElse:Answer {uuid: '6a6b0c54-2bee-4a73-864d-beb1f7a3ef1e'}),

// Outcomes
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Journey
(jrnyFM2Facilities:Journey {uuid: '7f7dcab1-9736-4012-960e-03da3b841c4c', name: 'FM Marketplace Phase 2 - Housing'}),


// Tree Structure
(jrnyFM2Housing)-[:FIRST_QUESTION]->(qiHousingType:QuestionInstance:Outcome {uuid: '2b6b7a4c-d635-11ea-87d0-0242ac130003'})-[:DEFINED_BY]->(qstnHousingType);

// TODO...
