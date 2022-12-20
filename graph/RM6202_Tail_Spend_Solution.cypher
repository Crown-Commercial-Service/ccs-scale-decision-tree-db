CREATE

(qstnFirstQuestion:Question {
    uuid: 'd77805bb-b043-4258-9807-2eef88850b86', 
    text: 'What do you require?',
    type: 'LIST'
}),


(ansTailSpendSolution:Answer {
    uuid: '20405605-837c-4641-a069-87f0476f629f',
    text: 'Tail Spend Solution',
    hint: 'An online (digital) buying platform 
that allows for the purchase of a wide  range of low value products and the management & control of tail spend'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyTailSpendSolution:Journey {uuid: '00b4c147-09d8-4fff-8e2d-551e3d76c57e', name: 'Tail Spend Solution'}),
(jrnyTailSpendSolution)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b25111f5-943c-4aa0-9c48-7ca809448559'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpTailSpendSolution:AnswerGroup {name: 'ansGrpTailSpendSolution'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTailSpendSolution),
    (ansGrpTailSpendSolution)-[:HAS_ANSWER {order: 1}]->(ansTailSpendSolution),
    (ansGrpTailSpendSolution)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6202'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});