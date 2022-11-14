MATCH

(qstnFirstQuestion:Question {uuid: '6530dfa4-a1b1-40c7-8f06-77045302fa4a'}),
(qiEmployeeBenefitFirstQuestion:QuestionInstance {uuid: 'c0081903-92f0-4ca8-9f09-c5c6d6b23876'})


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
    (ansGrpPublicSectorEmpl)-[:HAS_OUTCOME]->(qiEmployeeBenefitFirstQuestion); // SWITCH TREES