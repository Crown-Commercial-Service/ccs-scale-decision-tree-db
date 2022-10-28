CREATE

// QUESTIONS

(qstnFirstQ:Question {
    uuid: 'e212194f-7780-43c3-a028-277e168d5951',
    text: 'What service are you looking for?',
    type: 'LIST'
}),


// ANSWERS

(ansElectricityAndPower:Answer {
    uuid: 'dd856d8c-d8b4-4af8-b988-21908ba991e3',
    text: 'Electricity and power',
    hint: 'Supplies electricity and power to the public sector and their associated bodies and agencies. Services include:
    <ul>
        <li>account billing</li>
        <li>administration</li>
        <li>customer service</li>
        <li>ancillary services which help to reduce, optimise and control your energy use</li>
    </ul>'
}),

(ansGas:Answer {
    uuid: 'c9e5c34f-53e8-426c-8362-b3a2d793089a',
    text: 'Gas',
    hint: 'Supplies gas to the public sector and their associated bodies and agencies. Services include:
    <ul>
        <li>account billing</li>
        <li>administration</li>
        <li>customer service</li>
        <li>ancillary services which help to reduce, optimise and control your energy use</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnySupplyEnergy:Journey {uuid: '103db792-d07f-4885-afcd-dc0324d0a968', name: 'Energy'}),
(jrnySupplyEnergy)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '0a8b5f65-a531-4110-a49a-2ff2d48a94f1'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpElectricityAndPower:AnswerGroup {name: 'ansGrpElectricityAndPower'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElectricityAndPower),
    (ansGrpElectricityAndPower)-[:HAS_ANSWER {order: 1}]->(ansElectricityAndPower),
    (ansGrpElectricityAndPower)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpGas:AnswerGroup {name: 'ansGrpGas'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpGas),
    (ansGrpGas)-[:HAS_ANSWER {order: 2}]->(ansGas),
    (ansGrpGas)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true});
