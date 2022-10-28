MATCH
(ansChildCareVoucher:Answer {uuid: '57fefd7f-2ee5-4e26-b0f3-e01410c200b6'}),
(ansCycleToWork:Answer {uuid: '6aa025af-b5ea-4f3a-9586-6a085f34e606'}),
(ansRewardAndRecognition:Answer {uuid: 'b3b3c589-dd2a-437c-bda1-a6a767f1980e'}),
(ansPayrollAndGiving:Answer {uuid: '682fcb77-e62d-492c-956c-3bb920c30700'}),
(ansEmployeeDiscount:Answer {uuid: '9b3b7c02-5fe7-4de3-8d3c-9599fc46adab'}),
(ansDiscountedGym:Answer {uuid: '2e26cf3a-55fa-4a5a-bcea-5588ac0596b4'}),
(ansTechnologyDiscount:Answer {uuid: '642b20c0-ebf5-4f97-9ca1-267fb33329cc'}),
(ansGreenCarScheme:Answer {uuid: '89c5d29d-ba72-44ca-b6f9-0fbb4ae0a12b'}),
(ansEmployeeFinancialWellbeing:Answer {uuid: '837a7ea0-4ed1-4df2-bd4d-3ef3da7e0930'})

CREATE

// QUESTION

(qstnFirstQuestion:Question {
    uuid: '6530dfa4-a1b1-40c7-8f06-77045302fa4a',
    text: 'What type of service do you need?',
    type: 'LIST'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyEmployeeBenefits:Journey {uuid: '42bfbf8b-4a40-43ab-a9e8-95edcf13852c', name: 'Employee Belefits'}),
(jrnyEmployeeBenefits)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'c0081903-92f0-4ca8-9f09-c5c6d6b23876'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpChildCareVoucher:AnswerGroup {name: 'ansGrpChildCareVoucher'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpChildCareVoucher),
    (ansGrpChildCareVoucher)-[:HAS_ANSWER {order: 1}]->(ansChildCareVoucher),
    (ansGrpChildCareVoucher)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpCycleToWork:AnswerGroup {name: 'ansGrpCycleToWork'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCycleToWork),
    (ansGrpCycleToWork)-[:HAS_ANSWER {order: 2}]->(ansCycleToWork),
    (ansGrpCycleToWork)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpRewardAndRecognition:AnswerGroup {name: 'ansGrpRewardAndRecognition'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRewardAndRecognition),
    (ansGrpRewardAndRecognition)-[:HAS_ANSWER {order: 3}]->(ansRewardAndRecognition),
    (ansGrpRewardAndRecognition)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpPayrollAndGiving:AnswerGroup {name: 'ansGrpPayrollAndGiving'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPayrollAndGiving),
    (ansGrpPayrollAndGiving)-[:HAS_ANSWER {order: 4}]->(ansPayrollAndGiving),
    (ansGrpPayrollAndGiving)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpEmployeeDiscount:AnswerGroup {name: 'ansGrpEmployeeDiscount'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeDiscount),
    (ansGrpEmployeeDiscount)-[:HAS_ANSWER {order: 5}]->(ansEmployeeDiscount),
    (ansGrpEmployeeDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpDiscountedGym:AnswerGroup {name: 'ansGrpDiscountedGym'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDiscountedGym),
    (ansGrpDiscountedGym)-[:HAS_ANSWER {order: 6}]->(ansDiscountedGym),
    (ansGrpDiscountedGym)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpTechnologyDiscount:AnswerGroup {name: 'ansGrpTechnologyDiscount'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyDiscount),
    (ansGrpTechnologyDiscount)-[:HAS_ANSWER {order: 7}]->(ansTechnologyDiscount),
    (ansGrpTechnologyDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpGreenCarScheme:AnswerGroup {name: 'ansGrpGreenCarScheme'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpGreenCarScheme),
    (ansGrpGreenCarScheme)-[:HAS_ANSWER {order: 8}]->(ansGreenCarScheme),
    (ansGrpGreenCarScheme)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpEmployeeFinancialWellbeing:AnswerGroup {name: 'ansGrpEmployeeFinancialWellbeing'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeFinancialWellbeing),
    (ansGrpEmployeeFinancialWellbeing)-[:HAS_ANSWER {order: 9}]->(ansEmployeeFinancialWellbeing),
    (ansGrpEmployeeFinancialWellbeing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'});

