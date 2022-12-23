// TODO: 
// - Add error messages to questions
// - Finish the Wider Public Sector branch (once approved)

CREATE

// QUESTIONS

(qstnFirstQuestion:Question {
    uuid: '05d0a941-70d7-4b5c-8ccf-cf095f72803f',
    text: 'Select the Central Government or Wider Public Sector department you are buying for',
    type: 'LIST'
}),

// Questions: Level 2

(qstnLegalService:Question {
    uuid: '275d9d41-5120-40f7-91d5-7a34b0e200b7',
    text: 'Select the Legal/Law related Service are you looking for',
    type: 'LIST'
}),

// Questions: Level 3

(qstnSelectOption:Question {
    uuid: '98f766bc-9863-43f6-8a27-891f3e7adfdf',
    text: 'Select the option you need',
    type: 'LIST'
}),

// Questions: Level 4

(qstnSecurityClearance:Question {
    uuid: 'b9a3d167-2e75-477e-b94d-0d2d63374819',
    text: 'Select the Legal/Law related Service are you looking for',
    hint: 'Do you require enhanced (sensitive information) security clearance',
    type: 'LIST'
}),
 

// ANSWERS

// Answers: Level 1

(ansCentralGovernment:Answer {
    uuid: '20410e90-1bff-4ec0-9b5c-f0dcbba35258',
    text: 'Central Government (CG)'
}),

(ansWiderPublicSector:Answer {
    uuid: '3b16fdb8-69a7-4c07-abc2-2569ea4b5734',
    text: 'Wider Public Sector'
}),

(ansCGandWPS:Answer {
    uuid: '6e6057b6-256e-41b2-9f8a-79183256e1b8',
    text: 'Central Government (CG) and Wider Public Sector'
}),

// Answers: Level 2

(ansInternationalTradeLaw:Answer {
    uuid: '0a2edd55-47b7-4eb4-888b-43b337b6750d',
    text: 'International Trade Law',
    hint: '
Specialist services for international trade law and trade disputes, and negotiations across a range of jurisdictions.
Services include:
<ul>
    <li>advice on all stages of international trade disputes</li>
    <li>compliance with the law of the World Trade Organisation (WTO)</li>
    <li>legal advice on the implementation of trade agreements</li>
</ul>'
}),

(ansRailLegalServices:Answer {
    uuid: 'd5f7f1bc-5cc9-4206-8200-3174b00db1b1',
    text: 'Rail  legal services',
    hint: 'Advice and support for legal services specific to rail'
}),

(ansGeneralLegalAdviceServices:Answer {
    uuid: 'af7fd66c-b6d3-443a-a881-474358042213',
    text: 'General Legal Advice and Services',
    hint: 'Advice and support for legal services and areas of legal practice'
}),

(ansFinancialComplexLegalServices:Answer {
    uuid: 'a882717c-30ef-44bc-b13c-f7fcb4cd121f',
    text: 'Financial and Complex Legal Services',
    hint: 'Advice and support in relation to finance and complex legal services'
}),

(ansLegalCostsService:Answer {
    uuid: '94b3a3d9-5011-468e-b9e1-796a8e61bdfe',
    text: 'Legal Costs Service',
    hint: 'Routine and complex costs litigation work for the receiving party and/or paying party in England and Wales.
covering the following services:
<ul>
    <li>consultancy and negotiation</li>
    <li>estimates and statement of costs</li>
    <li>advocacy and/or attending hearings</li>
    <li>instructing counsel</li>
    <li>costs law advice</li>
</ul>'
}),

// Answers: Level 3

(ansTradeAndDisputes:Answer {
    uuid: 'd6b5751e-e6cd-487a-9b6b-4ec9c8940c7b',
    text: 'Trade and Disputes'
}),

(ansTradeAndNegotiations:Answer {
    uuid: 'd4e18a1a-15a6-45bf-9325-1432c171e99a',
    text: 'Trade and Negotiations'
}),


(ansGeneral:Answer {
    uuid: '6a94f6a6-41f9-498a-abbf-04c2e0449c22',
    text: 'General'
}),

(ansClinicalNegligence:Answer {
    uuid: 'bdb135f1-66c8-4c7c-904c-dc283a9685d2',
    text: 'Clinical Negligence'
}),

(ansYes:Answer {
    uuid: '3d1d135e-50fc-45f9-8638-f5ff46cb7c2e',
    text: 'Yes'
}),

(ansNo:Answer {
    uuid: '4f008f5a-6279-498e-bf10-f75d21ab5100',
    text: 'No'
}),



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
// Journey
(jrnyLegalServices:Journey {uuid: '2dd8b601-a546-4931-81c6-e07ed84d6f87', name: 'Legal Services'}),
(jrnyLegalServices)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'db35e6f9-ce7c-4708-b72c-dd3f6c172537'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpCentralGovernment:AnswerGroup {name: 'ansGrpCentralGovernment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCentralGovernment),
    (ansGrpCentralGovernment)-[:HAS_ANSWER {order: 1}]->(ansCentralGovernment),
    (ansGrpCentralGovernment)-[:HAS_OUTCOME]->(qiLegalService:QuestionInstance:Outcome {uuid: '07f393f1-4ba9-4ff8-a707-d92015bb762f'})-[:DEFINED_BY]->(qstnLegalService),

        (ansGrpInternationalTradeLaw:AnswerGroup {name: 'ansGrpInternationalTradeLaw'}),
        (qiLegalService)-[:HAS_ANSWER_GROUP]->(ansGrpInternationalTradeLaw),
        (ansGrpInternationalTradeLaw)-[:HAS_ANSWER {order: 1}]->(ansInternationalTradeLaw),
        (ansGrpInternationalTradeLaw)-[:HAS_OUTCOME]->(qiSelectOption:QuestionInstance:Outcome {uuid: '194f070a-e799-43d6-9983-2ddcce2b9a6f'})-[:DEFINED_BY]->(qstnSelectOption),

            (ansGrpTraidAndDisputes:AnswerGroup {name: 'ansGrpTraidAndDisputes'}),
            (qiSelectOption)-[:HAS_ANSWER_GROUP]->(ansGrpTraidAndDisputes),
            (ansGrpTraidAndDisputes)-[:HAS_ANSWER {order: 1}]->(ansTradeAndDisputes),
            (ansGrpTraidAndDisputes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6183'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpTraidAndNegotiatins:AnswerGroup {name: 'ansGrpTraidAndNegotiatins'}),
            (qiSelectOption)-[:HAS_ANSWER_GROUP]->(ansGrpTraidAndNegotiatins),
            (ansGrpTraidAndNegotiatins)-[:HAS_ANSWER {order: 2}]->(ansTradeAndNegotiations),
            (ansGrpTraidAndNegotiatins)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6183'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpRailLegalServices:AnswerGroup {name: 'ansGrpRailLegalServices'}),
        (qiLegalService)-[:HAS_ANSWER_GROUP]->(ansGrpRailLegalServices),
        (ansGrpRailLegalServices)-[:HAS_ANSWER {order: 2}]->(ansRailLegalServices),
        (ansGrpRailLegalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6204'}),

        (ansGrpGeneralLegalAdviceServices:AnswerGroup {name: 'ansGrpGeneralLegalAdviceServices'}),
        (qiLegalService)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralLegalAdviceServices),
        (ansGrpGeneralLegalAdviceServices)-[:HAS_ANSWER {order: 3}]->(ansGeneralLegalAdviceServices),
        (ansGrpGeneralLegalAdviceServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6179'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpFinancialComplexLegalServices:AnswerGroup {name: 'ansGrpFinancialComplexLegalServices'}),
        (qiLegalService)-[:HAS_ANSWER_GROUP]->(ansGrpFinancialComplexLegalServices),
        (ansGrpFinancialComplexLegalServices)-[:HAS_ANSWER {order: 4}]->(ansFinancialComplexLegalServices),
        (ansGrpFinancialComplexLegalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6179'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpWiderPublicSector:AnswerGroup {name: 'ansGrpWiderPublicSector'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWiderPublicSector),
    (ansGrpWiderPublicSector)-[:HAS_ANSWER {order: 2}]->(ansWiderPublicSector),
    (ansGrpWiderPublicSector)-[:HAS_OUTCOME]->(qiRouteThroughWPS:QuestionInstance:Outcome {uuid: '550195e2-32c3-40ad-b743-78a6bbf63870'})-[:DEFINED_BY]->(qstnRouteThroughWPS),

    (ansGrpCGandWPS:AnswerGroup {name: 'ansGrpCGandWPS'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCGandWPS),
    (ansGrpCGandWPS)-[:HAS_ANSWER {order: 3}]->(ansCGandWPS),
    (ansGrpCGandWPS)-[:HAS_OUTCOME]->(qiLegalService_2:QuestionInstance:Outcome {uuid: 'fd5b4471-33c2-46fc-8484-65fe2c80aa2b'})-[:DEFINED_BY]->(qstnLegalService),

        (ansGrpGeneral:AnswerGroup {name: 'ansGrpGeneral'}),
        (qiLegalService_2)-[:HAS_ANSWER_GROUP]->(ansGrpGeneral),
        (ansGrpGeneral)-[:HAS_ANSWER {order: 1}]->(ansGeneral),
        (ansGrpGeneral)-[:HAS_OUTCOME]->(qiSecurityClearance:QuestionInstance:Outcome {uuid: '298588fd-ef17-4a5a-b7a1-96596d0f940b'})-[:DEFINED_BY]->(qstnSecurityClearance),

            (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
            (qiSecurityClearance)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
            (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
            (ansGrpYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
            (qiSecurityClearance)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
            (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
            (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),
        
        (ansGrpClinicalNegligence:AnswerGroup {name: 'ansGrpClinicalNegligence'}),
        (qiLegalService_2)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalNegligence),
        (ansGrpClinicalNegligence)-[:HAS_ANSWER {order: 2}]->(ansClinicalNegligence),
        (ansGrpClinicalNegligence)-[:HAS_OUTCOME]->(qiCentralGovernmentType:QuestionInstance:Outcome {uuid: '99a04c0c-ad14-4d43-86a4-830132324cec'})-[:DEFINED_BY]->(qstnLegalService);


