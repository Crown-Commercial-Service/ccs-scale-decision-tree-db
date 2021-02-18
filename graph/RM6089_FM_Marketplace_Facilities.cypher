MATCH
// Questions
(qstnServices:Question {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003'}),
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
(jrnyFM2Facilities:Journey {uuid: '7f7dcab1-9736-4012-960e-03da3b841c4c', name: 'FM Marketplace Phase 2 - Facilities'}),

// Tree Structure
(jrnyFM2Facilities)-[:FIRST_QUESTION]->(qiServices:QuestionInstance:Outcome {uuid: 'f19fb557-543d-4c18-ba21-e5587fc56f63'})-[:DEFINED_BY]->(qstnServices),
(qiSector:QuestionInstance:Outcome {uuid: '1add4fed-cd58-497a-a924-db5c38dfb418'})-[:DEFINED_BY]->(qstnSector),

(ansGrpSvcsCleaning:AnswerGroup {name: 'ansGrpSvcsCleaning'}),
(qiServices)-[:HAS_ANSWER_GROUP]->(ansGrpSvcsCleaning),
(ansGrpSvcsCleaning)-[:HAS_ANSWER {order: 5}]->(ansCleaning),
(ansGrpSvcsCleaning)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),
(ansGrpSvcsCleaning)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6130'}),
(ansGrpSvcsCleaning)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '62415e0b-d2b5-459b-9fb2-8d9a98fa7a7b', group: 'svcs_cleaning_multi', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSector),

(ansGrpSvcsFacilities:AnswerGroup {name: 'ansGrpSvcsFacilities'}),
(qiServices)-[:HAS_ANSWER_GROUP]->(ansGrpSvcsFacilities),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 1}]->(ansMaintenance),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 2}]->(ansGroundsHortic),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 3}]->(ansStatutoryInspections),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 6}]->(ansReception),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 7}]->(ansSecurity),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 8}]->(ansWaste),
(ansGrpSvcsFacilities)-[:HAS_ANSWER {order: 9}]->(ansCAFM),
(ansGrpSvcsFacilities)-[:HAS_OUTCOME]->(qiSector),
(ansGrpSvcsFacilities)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '82c1726c-09e1-4840-bc54-657895be4724', group: 'svcs_cleaning_multi', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSector),

(ansGrpSvcsAnythingElse:AnswerGroup {name: 'ansGrpSvcsAnythingElse'}),
(qiServices)-[:HAS_ANSWER_GROUP]->(ansGrpSvcsAnythingElse),
(ansGrpSvcsAnythingElse)-[:HAS_ANSWER {order: 10, mutex: true}]->(ansAnythingElse),
(ansGrpSvcsAnythingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage),
(ansGrpSvcsAnythingElse)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '435b453f-a150-4c27-8b17-6b2359ace48f', group: 'svcs_cleaning_multi', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpSectorMoD:AnswerGroup {name: 'ansGrpSectorMoD'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorMoD),
(ansGrpSectorMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSectorMoD)-[:HAS_OUTCOME]->(fm2:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

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
(ansGrpSectorWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'});
