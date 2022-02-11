CREATE

// Questions
(qstnFirstQ:Question {uuid: '23c500ab-1b52-44c2-b1b7-6fa2c8e7b0a0', text: 'What Sector are you Buying for?', type: 'LIST'}),
(qstnPermanentOrTemporary:Question {uuid: '5da2615f-22d7-4686-a2aa-50fc6a652164', text: 'Do you want to buy permanent buildings or hire temporary buildings?', type: 'LIST'}),
(qstnBudget:Question {uuid: '6076dccc-cd9b-4bbf-a70e-0fe7b48db1a0', text: 'What is your budget?', type: 'LIST'}),


// Answer
(ansEducation:Answer {uuid: 'ba410c62-843c-4521-995a-42146ff09206', text: 'Education sector', hint: 'Buy or hire a range of permanent or temporary modular buildings for educational purposes. Modular buildings are manufactured in \'sections\' off-site. Suppliers will physically deliver the sections to your site for installation'}),
(ansHealth:Answer {uuid: '384c6f41-7908-43b7-bddc-200777ee222c', text: 'Health sector', hint: 'Buy or hire a range of permanent or temporary modular buildings for healthcare purposes'}),
(ansOther:Answer {uuid: '01bcb49b-5178-4360-8222-136a4ae31a3f', text: 'Other Sectors', hint: 'Buy or hire a range of permanent or temporary modular buildings for non-educational and non-healthcare purposes'}),

(ansPermanent:Answer {uuid: '496f4cab-2be0-4cff-9e8f-61cc57735e03', text: 'Permanent buildings', hint: 'Buy design, construction and installation services for permanent modular buildings'}),
(ansTemporary:Answer {uuid: '38cd6633-1e39-4506-bd6c-5c51ca7a25d5', text: 'Temporary buildings ', hint: 'Hire design, construction, installation and maintenance services for temporary modular buildings'}),

(ansAmount1:Answer {uuid: 'dbae1a15-120a-4922-92c9-37528dd85878', text: 'Up to £750,000'}),
(ansAmount2:Answer {uuid: '0deebc1b-df46-4b28-b626-93484f30f6e0', text: 'Between £750,000 and £3.5 million'}),
(ansAmount3:Answer {uuid: 'e29591d2-16d5-4c15-817c-367e9f51e45e', text: '£3.5 million and over'}),

(ansAmount4:Answer {uuid: '7d326823-87fa-4017-bfde-4e62ba8e94ef', text: 'Up to £150,000'}),
(ansAmount5:Answer {uuid: '75849262-7e4e-4409-b92c-b25a3a1c128d', text: 'Between £150,000 and £700,000'}),
(ansAmount6:Answer {uuid: '851b75b2-cad4-4b1a-b57f-7abe27d2f247', text: '£700,000 and over'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyModularB:Journey {uuid: 'bd89c967-067c-4831-8acb-69b3fdadf30d', name: 'Modular Buildings'}),
(jrnyModularB)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b15baa65-a489-4446-b7ea-829af962a028'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpEducation:AnswerGroup {name: 'ansGrpEducation'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEducation),
    (ansGrpEducation)-[:HAS_ANSWER {order: 1}]->(ansEducation),
    (ansGrpEducation)-[:HAS_OUTCOME]->(qiPermanentOrTemporaryOne:QuestionInstance:Outcome {uuid: '00d21b6f-533d-4e8a-96d9-ea958e89c641'})-[:DEFINED_BY]->(qstnPermanentOrTemporary),

        (ansGrpPermanentOne:AnswerGroup {name: 'ansGrpPermanentOne'}),
        (qiPermanentOrTemporaryOne)-[:HAS_ANSWER_GROUP]->(ansGrpPermanentOne),
        (ansGrpPermanentOne)-[:HAS_ANSWER {order: 1}]->(ansPermanent),
        (ansGrpPermanentOne)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpTemporaryOne:AnswerGroup {name: 'ansGrpTemporaryOne'}),
        (qiPermanentOrTemporaryOne)-[:HAS_ANSWER_GROUP]->(ansGrpTemporaryOne),
        (ansGrpTemporaryOne)-[:HAS_ANSWER {order: 2}]->(ansTemporary),
        (ansGrpTemporaryOne)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpHealth:AnswerGroup {name: 'ansGrpHealth'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHealth),
    (ansGrpHealth)-[:HAS_ANSWER {order: 2}]->(ansHealth),
    (ansGrpHealth)-[:HAS_OUTCOME]->(qiPermanentOrTemporaryTwo:QuestionInstance:Outcome {uuid: 'f1ad1ca4-8f81-4d26-a1ab-348889180459'})-[:DEFINED_BY]->(qstnPermanentOrTemporary),

        (ansGrpPermanentTwo:AnswerGroup {name: 'ansGrpPermanentTwo'}),
        (qiPermanentOrTemporaryTwo)-[:HAS_ANSWER_GROUP]->(ansGrpPermanentTwo),
        (ansGrpPermanentTwo)-[:HAS_ANSWER {order: 1}]->(ansPermanent),
        (ansGrpPermanentTwo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpTemporaryTwo:AnswerGroup {name: 'ansGrpTemporaryTwo'}),
        (qiPermanentOrTemporaryTwo)-[:HAS_ANSWER_GROUP]->(ansGrpTemporaryTwo),
        (ansGrpTemporaryTwo)-[:HAS_ANSWER {order: 2}]->(ansTemporary),
        (ansGrpTemporaryTwo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpOther:AnswerGroup {name: 'ansGrpOther'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOther),
    (ansGrpOther)-[:HAS_ANSWER {order: 3}]->(ansOther),
    (ansGrpOther)-[:HAS_OUTCOME]->(qiPermanentOrTemporaryThree:QuestionInstance:Outcome {uuid: 'f20993b2-e3d4-467e-adc3-bc97196bc751'})-[:DEFINED_BY]->(qstnPermanentOrTemporary),

        (ansGrpPermanentThree:AnswerGroup {name: 'ansGrpPermanentThree'}),
        (qiPermanentOrTemporaryThree)-[:HAS_ANSWER_GROUP]->(ansGrpPermanentThree),
        (ansGrpPermanentThree)-[:HAS_ANSWER {order: 1}]->(ansPermanent),
        (ansGrpPermanentThree)-[:HAS_OUTCOME]->(qiBudgetOne:QuestionInstance:Outcome {uuid: '8b47c11b-d156-4770-a7df-8ff6aac9c52f'})-[:DEFINED_BY]->(qstnBudget),

            (ansGrpAmount1:AnswerGroup {name: 'ansGrpAmount1'}),
            (qiBudgetOne)-[:HAS_ANSWER_GROUP]->(ansGrpAmount1),
            (ansGrpAmount1)-[:HAS_ANSWER {order: 1}]->(ansAmount1),
            (ansGrpAmount1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

            (ansGrpAmount2:AnswerGroup {name: 'ansGrpAmount2'}),
            (qiBudgetOne)-[:HAS_ANSWER_GROUP]->(ansGrpAmount2),
            (ansGrpAmount2)-[:HAS_ANSWER {order: 2}]->(ansAmount2),
            (ansGrpAmount2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpAmount3:AnswerGroup {name: 'ansGrpAmount3'}),
            (qiBudgetOne)-[:HAS_ANSWER_GROUP]->(ansGrpAmount3),
            (ansGrpAmount3)-[:HAS_ANSWER {order: 3}]->(ansAmount3),
            (ansGrpAmount3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

        (ansGrpTemporaryThree:AnswerGroup {name: 'ansGrpTemporaryThree'}),
        (qiPermanentOrTemporaryThree)-[:HAS_ANSWER_GROUP]->(ansGrpTemporaryThree),
        (ansGrpTemporaryThree)-[:HAS_ANSWER {order: 2}]->(ansTemporary),
        (ansGrpTemporaryThree)-[:HAS_OUTCOME]->(qiBudgetTwo:QuestionInstance:Outcome {uuid: '1acd433c-c64c-4be2-8a70-0182852d4e48'})-[:DEFINED_BY]->(qstnBudget),

            (ansGrpAmount4:AnswerGroup {name: 'ansGrpAmount4'}),
            (qiBudgetTwo)-[:HAS_ANSWER_GROUP]->(ansGrpAmount4),
            (ansGrpAmount4)-[:HAS_ANSWER {order: 1}]->(ansAmount4),
            (ansGrpAmount4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

            (ansGrpAmount5:AnswerGroup {name: 'ansGrpAmount5'}),
            (qiBudgetTwo)-[:HAS_ANSWER_GROUP]->(ansGrpAmount5),
            (ansGrpAmount5)-[:HAS_ANSWER {order: 2}]->(ansAmount5),
            (ansGrpAmount5)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpAmount6:AnswerGroup {name: 'ansGrpAmount6'}),
            (qiBudgetTwo)-[:HAS_ANSWER_GROUP]->(ansGrpAmount6),
            (ansGrpAmount6)-[:HAS_ANSWER {order: 3}]->(ansAmount6),
            (ansGrpAmount6)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true});