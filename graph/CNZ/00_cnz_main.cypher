MATCH
(qstnSolution:Question {uuid: '8d972d0f-fd89-445f-9aa5-ae7a7854c54f'}),
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),


(ansTransport:Answer {uuid: '3e6e89be-56fb-4337-a3d4-c43f24051dd9'}),
(ansEnvironment:Answer {uuid: '38e86c60-f661-45d8-b818-9983aff4c03b'}),
(ansInfrastructure:Answer {uuid: '866446e7-2ded-4d5e-ab9e-53bfa6e91d7e'}),
(ansTechnology:Answer {uuid: '54860990-517d-4e84-a63f-e408e6a146fe'}),
(ansConsumption:Answer {uuid: '746bec19-7f7e-4fcd-b25e-29a2805cabe7'}),
(ansFundingAndResourcing:Answer {uuid: '15bd43f3-25b6-4a7d-82ca-ddceb43aa64f'})

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure

CREATE
(qstnTransport:Question {uuid: '903971f8-ba92-4ffc-9a91-0a41a5bdb57a', text: 'What transport solution do you need?', type: 'LIST'}),

(qstnInfrastructure:Question {uuid: 'a1933ad8-6cef-4f7b-b1dc-f27abc0ec19a', text: 'What hard and soft infrastructure solution do you need?', type: 'LIST'}),

(qstnConsumption:Question {uuid: '6a63bfa0-3e4b-4140-80c5-2c3ad46ffe68', text: 'What consumption service do you need?', type: 'LIST'}),


(jrnyCNZ:Journey {uuid: 'a251180c-b3f0-46fa-87e2-15bd3f34dcea', name: 'CNZ'}),
(jrnyCNZ)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '01981630-d777-465d-9fab-ae7b6a39d2d6'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpTransport:AnswerGroup {name: 'ansGrpTransport'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTransport),
    (ansGrpTransport)-[:HAS_ANSWER {order: 1}]->(ansTransport),
    (ansGrpTransport)-[:HAS_OUTCOME]->(qiTransport:QuestionInstance:Outcome {uuid: '21794ee2-aa77-47e4-9ab2-ad399676d0f5'})-[:DEFINED_BY]->(qstnTransport),

    (ansGrpEnvironment:AnswerGroup {name: 'ansGrpEnvironment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnvironment),
    (ansGrpEnvironment)-[:HAS_ANSWER {order: 2}]->(ansEnvironment),
    (ansGrpEnvironment)-[:HAS_OUTCOME]->(qiEnvironment:QuestionInstance:Outcome {uuid: 'ac7bbc05-e21e-4ccf-a804-7a7bac5536ea'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpInfrastructure:AnswerGroup {name: 'ansGrpInfrastructure'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInfrastructure),
    (ansGrpInfrastructure)-[:HAS_ANSWER {order: 3}]->(ansInfrastructure),
    (ansGrpInfrastructure)-[:HAS_OUTCOME]->(qiInfrastructure:QuestionInstance:Outcome {uuid: 'dcc54ad0-0607-4af0-863b-0033b6687da0'})-[:DEFINED_BY]->(qstnInfrastructure),

    (ansGrpTechnology:AnswerGroup {name: 'ansGrpTechnology'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnology),
    (ansGrpTechnology)-[:HAS_ANSWER {order: 4}]->(ansTechnology),
    (ansGrpTechnology)-[:HAS_OUTCOME]->(qiTechnology:QuestionInstance:Outcome {uuid: '94afb137-367c-4e6a-a7d6-8e45a23be97a'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpConsumption:AnswerGroup {name: 'ansGrpConsumption'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpConsumption),
    (ansGrpConsumption)-[:HAS_ANSWER {order: 5}]->(ansConsumption),
    (ansGrpConsumption)-[:HAS_OUTCOME]->(qiConsumption:QuestionInstance:Outcome {uuid: 'd186a3f1-1396-4116-bbe4-702aed8b6b54'})-[:DEFINED_BY]->(qstnConsumption),

    (ansGrpFundingAndResourcing:AnswerGroup {name: 'ansGrpFundingAndResourcing'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFundingAndResourcing),
    (ansGrpFundingAndResourcing)-[:HAS_ANSWER {order: 6}]->(ansFundingAndResourcing),
    (ansGrpFundingAndResourcing)-[:HAS_OUTCOME]->(qiFundingAndResourcing:QuestionInstance:Outcome {uuid: 'ba04c087-4fdb-4cea-85d8-917a625f07a8'})-[:DEFINED_BY]->(qstnSolution);