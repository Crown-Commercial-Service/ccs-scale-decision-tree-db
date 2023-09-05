MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
(ansElectricity:Answer {
    uuid: 'c585e1c8-fee0-4c6c-943a-93cef73659d9',
    text: 'Supply of electricity',
    hint: 'Buy electricity and related services including:
    <ul>
        <li>risk-managed energy trading strategies</li>
        <li>account billing services</li>
        <li>dedicated customer service support</li>
        <li>administration services</li>
        <li>energy de-carbonisation support and services</li>
    </ul>'
}),

(ansGas:Answer {
    uuid: '046d9395-9feb-4b83-b73d-2ecd845e390c',
    text: 'Supply of gas',
    hint: 'Buy gas and related services including:
    <ul>
        <li>risk-managed energy trading strategies</li>
        <li>account billing services</li>
        <li>dedicated customer service support</li>
        <li>administration services</li>
        <li>energy de-carbonisation support and services</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyEnergy:Journey {uuid: '103db792-d07f-4885-afcd-dc0324d0a968', name: 'Energy'}),
(jrnyEnergy)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '0a8b5f65-a531-4110-a49a-2ff2d48a94f1'})-[:DEFINED_BY]->(qstnService),

    (ansGrpElectricity:AnswerGroup {name: 'ansGrpElectricity'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElectricity),
    (ansGrpElectricity)-[:HAS_ANSWER {order: 1}]->(ansElectricity),
    (ansGrpElectricity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6251'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpGas:AnswerGroup {name: 'ansGrpGas'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpGas),
    (ansGrpGas)-[:HAS_ANSWER {order: 2}]->(ansGas),
    (ansGrpGas)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6251'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true});
