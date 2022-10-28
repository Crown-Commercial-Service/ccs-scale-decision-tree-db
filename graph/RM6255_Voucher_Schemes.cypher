MATCH

(ansChildCareVoucher:Answer {uuid: '57fefd7f-2ee5-4e26-b0f3-e01410c200b6'}),
(ansCycleToWork:Answer {uuid: '6aa025af-b5ea-4f3a-9586-6a085f34e606'}),
(ansRewardAndRecognition:Answer {uuid: 'b3b3c589-dd2a-437c-bda1-a6a767f1980e'}),
(ansPayrollAndGiving:Answer {uuid: '682fcb77-e62d-492c-956c-3bb920c30700'}),
(ansEmployeeDiscount:Answer {uuid: '9b3b7c02-5fe7-4de3-8d3c-9599fc46adab'}),
(ansDiscountedGym:Answer {uuid: '2e26cf3a-55fa-4a5a-bcea-5588ac0596b4'}),
(ansTechnologyDiscount:Answer {uuid: '642b20c0-ebf5-4f97-9ca1-267fb33329cc'}),
(ansGreenCarScheme:Answer {uuid: '89c5d29d-ba72-44ca-b6f9-0fbb4ae0a12b'}),
(ansEmployeeFinancialWellbeing:Answer {uuid: '837a7ea0-4ed1-4df2-bd4d-3ef3da7e0930'}),
(qstnFirstQuestion:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'})

CREATE

// ANSWERS - Level 1

(ansUKcitizens:Answer {
    uuid: '10e63130-5eb4-4ade-a800-aee478d424b3',
    text: 'Voucher Schemes for UK citizens',
    hint: 'Access suppliers who can put in place and manage retail voucher schemes for UK citizens (also known as giftcards). You can also access a platform to help you provide and distribute vouchers to the end user. Includes:
    <ul>
        <li>free school meal vouchers</li>
        <li>food vouchers</li>
        <li>clothing vouchers</li>
        <li>utility bill vouchers</li>
        <li>survey completion reward vouchers</li>
    </ul>'
}),

(ansPublicSectorEmpl:Answer {
    uuid: '19a89077-a273-4331-a7ab-7d86cf6787dd',
    text: 'Voucher schemes for public sector employees',
    hint: 'Provides employee benefit schemes such as on demand access to a range of multi-choice and branded vouchers, gift cards and egift cards. Employers can give these vouchers and gift cards to employees to reward loyalty and exceptional performance
'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyVoucherSchemes:Journey {uuid: '114ef896-8214-47d7-b9e2-15b23d7e999f', name: 'Voucher Schemes'}),
(jrnyVoucherSchemes)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b1a0d744-2834-47fb-9197-16411136c7a9'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpUKcitizens:AnswerGroup {name: 'ansGrpUKcitizens'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpUKcitizens),
    (ansGrpUKcitizens)-[:HAS_ANSWER {order: 1}]->(ansUKcitizens),
    (ansGrpUKcitizens)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6255'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPublicSectorEmpl:AnswerGroup {name: 'ansGrpPublicSectorEmpl'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPublicSectorEmpl),
    (ansGrpPublicSectorEmpl)-[:HAS_ANSWER {order: 2}]->(ansPublicSectorEmpl),
    (ansGrpPublicSectorEmpl)-[:HAS_OUTCOME]->(qiFirstQuestion_2:QuestionInstance:Outcome {uuid: '66a378ff-5373-40d5-aad2-9cf76b3b942c'})-[:DEFINED_BY]->(qstnFirstQuestion),

        (ansGrpChildCareVoucher:AnswerGroup {name: 'ansGrpChildCareVoucher'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpChildCareVoucher),
        (ansGrpChildCareVoucher)-[:HAS_ANSWER {order: 1}]->(ansChildCareVoucher),
        (ansGrpChildCareVoucher)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpCycleToWork:AnswerGroup {name: 'ansGrpCycleToWork'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpCycleToWork),
        (ansGrpCycleToWork)-[:HAS_ANSWER {order: 2}]->(ansCycleToWork),
        (ansGrpCycleToWork)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpRewardAndRecognition:AnswerGroup {name: 'ansGrpRewardAndRecognition'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpRewardAndRecognition),
        (ansGrpRewardAndRecognition)-[:HAS_ANSWER {order: 3}]->(ansRewardAndRecognition),
        (ansGrpRewardAndRecognition)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpPayrollAndGiving:AnswerGroup {name: 'ansGrpPayrollAndGiving'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpPayrollAndGiving),
        (ansGrpPayrollAndGiving)-[:HAS_ANSWER {order: 4}]->(ansPayrollAndGiving),
        (ansGrpPayrollAndGiving)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpEmployeeDiscount:AnswerGroup {name: 'ansGrpEmployeeDiscount'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeDiscount),
        (ansGrpEmployeeDiscount)-[:HAS_ANSWER {order: 5}]->(ansEmployeeDiscount),
        (ansGrpEmployeeDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpDiscountedGym:AnswerGroup {name: 'ansGrpDiscountedGym'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpDiscountedGym),
        (ansGrpDiscountedGym)-[:HAS_ANSWER {order: 6}]->(ansDiscountedGym),
        (ansGrpDiscountedGym)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpTechnologyDiscount:AnswerGroup {name: 'ansGrpTechnologyDiscount'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyDiscount),
        (ansGrpTechnologyDiscount)-[:HAS_ANSWER {order: 7}]->(ansTechnologyDiscount),
        (ansGrpTechnologyDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpGreenCarScheme:AnswerGroup {name: 'ansGrpGreenCarScheme'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpGreenCarScheme),
        (ansGrpGreenCarScheme)-[:HAS_ANSWER {order: 8}]->(ansGreenCarScheme),
        (ansGrpGreenCarScheme)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

        (ansGrpEmployeeFinancialWellbeing:AnswerGroup {name: 'ansGrpEmployeeFinancialWellbeing'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeFinancialWellbeing),
        (ansGrpEmployeeFinancialWellbeing)-[:HAS_ANSWER {order: 9}]->(ansEmployeeFinancialWellbeing),
        (ansGrpEmployeeFinancialWellbeing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'});


