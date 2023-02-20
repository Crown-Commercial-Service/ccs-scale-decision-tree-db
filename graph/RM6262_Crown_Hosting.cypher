MATCH
(qstnServiceQ:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'})


CREATE
// Answer
(ansICT:Answer {
    uuid: '406571c9-468d-4673-8a53-8f20bcaafde9',
    text: 'ICT relocation',
    hint: 'Provides consultancy, pre-planning, site-preparation and logical and physical relocation services. These services enable you to move your servers, data storage, network and ICT security from your existing server rooms or data centres to crown hosting'
}),

(ansDataHalls:Answer {
    uuid: 'bd15adcc-aa08-4b18-ab3e-cb845457fe4e',
    text: 'Data halls and data centres',
    hint: 'Access secure, reliable and efficient specialist rooms (data halls) and buildings (data centres) which you can use to operate your server, network and security infrastructure (ICT) from. Includes access to private or shared data halls and centres'
}),

(ansDataCentre:Answer {
    uuid: '988538b0-114a-47fb-8c93-2adb16c682ad',
    text: 'Data centre connectivity',
    hint: 'Access network connectivity to a crown hosting location'
}),


(ansSharedData:Answer {
    uuid: '9da9d90a-76d2-4e1d-b722-4a4eca0a997d',
    text: 'Shared data halls and data centres',
    hint: 'Buy space in data halls which you will share with other public sector organisations. If you need less than 40 data racks, a private room shared with other public sector organisations may be appropriate'
}),


(ansPrivateData:Answer {
    uuid: '9a01cf8c-26f7-4134-bb35-17b686f19369',
    text: 'Private data halls and data centres',
    hint: 'Buy private data halls and data centres that only you will use. Ideal if you need a private room that only your organisation will use for security reasons'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCrownHosting:Journey {uuid: '4eac6d51-54ec-453c-b000-dfce2a9e2a19', name: 'Crown Hosting II'}),
(jrnyCrownHosting)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '1dfeb3fa-4e4c-420d-a01e-ab13dd47bc86'})-[:DEFINED_BY]->(qstnServiceQ),

    (ansGrpICT:AnswerGroup {name: 'ansGrpICT'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpICT),
    (ansGrpICT)-[:HAS_ANSWER {order: 1}]->(ansICT),
    (ansGrpICT)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDataHalls:AnswerGroup {name: 'ansGrpDataHalls'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDataHalls),
    (ansGrpDataHalls)-[:HAS_ANSWER {order: 2}]->(ansDataHalls),
    (ansGrpDataHalls)-[:HAS_OUTCOME]->(qiSecondQ:QuestionInstance:Outcome {uuid: 'fb800023-c28a-408f-9fa0-fc6a393bf523'})-[:DEFINED_BY]->(qstnServiceQ),

        (ansGrpSharedData:AnswerGroup {name: 'ansGrpSharedData'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpSharedData),
        (ansGrpSharedData)-[:HAS_ANSWER {order: 1}]->(ansSharedData),
        (ansGrpSharedData)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpPrivateData:AnswerGroup {name: 'ansGrpPrivateData'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpPrivateData),
        (ansGrpPrivateData)-[:HAS_ANSWER {order: 2}]->(ansPrivateData),
        (ansGrpPrivateData)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDataCentre:AnswerGroup {name: 'ansGrpDataCentre'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDataCentre),
    (ansGrpDataCentre)-[:HAS_ANSWER {order: 3}]->(ansDataCentre),
    (ansGrpDataCentre)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});


