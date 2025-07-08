MATCH
(startingPoint:QuestionInstance {uuid: '94afb137-367c-4e6a-a7d6-8e45a23be97a'})

CREATE
(qstnSoftware:Question {uuid: 'e671a243-d790-4e5c-8355-4bb1399a0903', text: 'What software solution do you need?', type: 'LIST'}),


(ansSoftware:Answer {uuid: '81991869-819f-4217-9e60-e6defe4e9e00', text: 'Software', hint: 'Access software solutions, such as software as a service (Saas), analytic platforms and vehicle tracking software'}),
(ansCloud:Answer {uuid: '1c1d4839-2fd0-43c5-ada2-f72d1f7b76f8', text: 'Cloud and hosted servers', hint: 'Cloud-based computing services such as hosting, software and cloud support. Includes many ready to use, pay-as-you-go cloud solutions'}),
(ansBigData:Answer {uuid: '808a14a4-17aa-445b-94f2-c8a710dd2efd', text: 'Big data and analytics', hint: 'Access professional services and commercial ready-to-use software specific to data and analytics'}),
(ansAi:Answer {uuid: '08bb3b60-c7a9-4033-bc3e-c70b90da79f3', text: 'Artificial Intelligence (AI)', hint: 'Artificial intelligence (AI) discovery and consultancy services. Includes implementation, support of AI systems, end-to-end partnerships, and AI technologies'}),
(ansGeospatial:Answer {uuid: '2aea111d-a385-429a-8df0-75a77d8b0c00', text: 'Geospatial', hint: 'Access space and geospatial, services such as data, technology solutions and aerial and land-based platforms'}),
(ansRefurbished:Answer {uuid: 'cd15dccd-bffd-4d07-ab0d-3df285291718', text: 'Refurbished hardware and devices', hint: 'Buy refurbished technology, including personal computing devices, servers, storage systems, network equipment and vehicle tracking units'}),
(ansSustainability:Answer {uuid: 'a78cd82f-5481-4400-8505-9d9bb7022f21', text: 'Sustainability and circular IT', hint: 'Access technology hardware, software and services including end user devices, servers, storage, infrastructure devices, software licences and accessories'}),
(ansCommunication:Answer {uuid: 'fbc2d431-1c17-4852-acb3-89da8aa2b998', text: 'Communication solutions', hint: 'Access communication solutions, including hybrid mail services'}),

(ansTechnologyPandS:Answer {uuid: '89e61883-619b-4fbe-b31c-6d406ef69774', text: 'Technology products and services', hint: 'Buy technology services ranging from strategy and design to operational deployment'}),
(ansBackOffice:Answer {uuid: 'd6f97a54-2638-4b1a-a610-62e7944a56b2', text: 'Back office software and digital outcomes', hint: 'Software as a service (Saas) for back office, cloud, and on-premise, plus agile and user-centred design'}),
(ansVehicleTelematics:Answer {uuid: 'ea717e9e-fc7a-4a98-9c96-113914936334', text: 'Vehicle telematics', hint: 'Lease, hire or buy vehicle telematics solutions such as vehicle tracking, surveillance and data extraction'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansGrpSoftware:AnswerGroup {name: 'ansGrpSoftware'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpSoftware),
(ansGrpSoftware)-[:HAS_ANSWER {order: 1}]->(ansSoftware),
(ansGrpSoftware)-[:HAS_OUTCOME]->(qiSoftware:QuestionInstance:Outcome {uuid: '755191a1-20ac-4690-8846-febb6466af70'})-[:DEFINED_BY]->(qstnSoftware),

    (ansGrpTechnologyPandS:AnswerGroup {name: 'ansGrpTechnologyPandS'}),
    (qiSoftware)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyPandS),
    (ansGrpTechnologyPandS)-[:HAS_ANSWER {order: 1}]->(ansTechnologyPandS),
    (ansGrpTechnologyPandS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'}),
    (ansGrpTechnologyPandS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'}),

    (ansGrpBackOffice:AnswerGroup {name: 'ansGrpBackOffice'}),
    (qiSoftware)-[:HAS_ANSWER_GROUP]->(ansGrpBackOffice),
    (ansGrpBackOffice)-[:HAS_ANSWER {order: 2}]->(ansBackOffice),
    (ansGrpBackOffice)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6285'}),
    (ansGrpBackOffice)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.8'}),

    (ansGrpVehicleTelematics:AnswerGroup {name: 'ansGrpVehicleTelematics'}),
    (qiSoftware)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleTelematics),
    (ansGrpVehicleTelematics)-[:HAS_ANSWER {order: 3}]->(ansVehicleTelematics),
    (ansGrpVehicleTelematics)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6315'}),

(ansGrpCloud:AnswerGroup {name: 'ansGrpCloud'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpCloud),
(ansGrpCloud)-[:HAS_ANSWER {order: 2}]->(ansCloud),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'}),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1557.14'}),

(ansGrpBigData:AnswerGroup {name: 'ansGrpBigData'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpBigData),
(ansGrpBigData)-[:HAS_ANSWER {order: 3}]->(ansBigData),
(ansGrpBigData)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6195'}),

(ansGrpAi:AnswerGroup {name: 'ansGrpAi'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpAi),
(ansGrpAi)-[:HAS_ANSWER {order: 4}]->(ansAi),
(ansGrpAi)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6195'}),
(ansGrpAi)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6200'}),

(ansGrpGeospatial:AnswerGroup {name: 'ansGrpGeospatial'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpGeospatial),
(ansGrpGeospatial)-[:HAS_ANSWER {order: 5}]->(ansGeospatial),
(ansGrpGeospatial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6235'}),

(ansGrpRefurbished:AnswerGroup {name: 'ansGrpRefurbished'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpRefurbished),
(ansGrpRefurbished)-[:HAS_ANSWER {order: 6}]->(ansRefurbished),
(ansGrpRefurbished)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6315'}),
(ansGrpRefurbished)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'}),

(ansGrpSustainability:AnswerGroup {name: 'ansGrpSustainability'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpSustainability),
(ansGrpSustainability)-[:HAS_ANSWER {order: 7}]->(ansSustainability),
(ansGrpSustainability)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'}),

(ansGrpCommunication:AnswerGroup {name: 'ansGrpCommunication'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpCommunication),
(ansGrpCommunication)-[:HAS_ANSWER {order: 8}]->(ansCommunication),
(ansGrpCommunication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'});