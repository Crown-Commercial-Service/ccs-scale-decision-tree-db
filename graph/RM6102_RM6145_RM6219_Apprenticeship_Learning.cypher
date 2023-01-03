MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE

// QUESTIONS

// Questions: level 1
(qstnFirstQuestion:Question {
    uuid: '3842dccf-ab53-43a6-8bde-86b1c38337a4',
    text: 'What type of service do you require?',
    type: 'LIST'
}),

// Questions: level 2
(qstnCSLSubscriber:Question {
    uuid: 'a0fc1fda-b784-4241-9087-191b56511de8',
    text: 'Are you a Civil Service Subscriber?',
    type: 'LIST'
}),

(qstnReqEngland:Question {
    uuid: 'bf9ccf24-0384-4b8e-bf36-5f0680706209',
    text: 'Is your requirement in England, Wales or Northern Ireland?',
    type: 'LIST'
}),

// Questions: level 3
(qstnLearningAndTraining:Question {
    uuid: '61b103ee-60c7-4dc0-bb70-442720ac2091',
    text: 'Learning and Training Services',
    hint: 'Provides access to standard and niche training options from a large group of pre-qualified training providers in one place. Do you want: ',
    type: 'LIST'
}),

(qstnLearningAndDevelopmentGroup:Question {
    uuid: 'e6296c1d-c814-475b-9ced-c3e8575657b4',
    text: 'Learning and Development',
    hint: 'Provides a range of training and development services designed to help public sector employees develop their skills',
    type: 'LIST'
}),

// (qstnLearningAndDevelopmentList:Question {
//     uuid: 'e6296c1d-c814-475b-9ced-c3e8575657b4',
//     text: 'Learning and Development',
//     hint: 'Provides a range of training and development services designed to help public sector employees develop their skills. Do you want:',
//     type: 'LIST'
// }),


// ANSWERS
// Answers: level 1

(ansLearningTrainingAndDevelopment:Answer {
    uuid: 'ab9d9e6f-ee4b-4359-9f6f-283dea342050',
    text: 'Learning, Training, and Development Services'
}),

(ansApprenticeships:Answer {
    uuid: '87551b2d-8337-49ae-8713-3eda3841c537',
    text: 'Apprenticeships',
    hint: 'Provides a range of apprenticeship training programmes'
}),

// Answers: level 2
(ansYes:Answer {
    uuid: 'ab2ddd0e-4e9a-48d3-ae49-f86335c01772',
    text: 'Yes'
}),

(ansNo:Answer {
    uuid: 'ffea5611-c4ab-42c9-a30c-1ade6aef640b',
    text: 'No'
}),

(ansEngland:Answer {
    uuid: 'ebf58365-9b9c-402d-bc1f-387c835f9229',
    text: 'England'
}),

(ansWalesNorthernIreland:Answer {
    uuid: '5ce2d395-c6fa-4b96-9b96-8e3e21490768',
    text: 'Wales and Northern Ireland'
}),

// Answers: level 3
// --- Learning and Training branch

(ansStandardOffTheShelf:Answer {
    uuid: '00782812-c203-4c4f-831e-71a9fe3ce3ef',
    text: 'Standard Off the Shelf training'
}),

(ansBespokeTraining:Answer {
    uuid: 'bd99c756-4cfe-4989-a637-8d7540746b4b',
    text: 'Bespoke training'
}),

(ansLearningTechnologies:Answer {
    uuid: '3bd88003-c074-4565-a83b-97cc3d69152a',
    text: 'Learning Technologies'
}),

(ansEducationSkillsServices:Answer {
    uuid: 'bafed3a8-d942-4da0-8482-05abf32d97d0',
    text: 'Education  Skills Services'
}),

// Answers: level 3
// ----- Learning and Development branch (all answers separated)

(ansServiceIntegration:Answer {
    uuid: 'be6ad6ce-ae79-4193-a75e-d36c7cc33b7f',
    text: 'Service Integration - for CSHR expert services customers only'
}),

(ansCrossCivilServiceCurriculum:Answer {
    uuid: '64aa985a-2b1a-438a-8e0e-0a8dd35f4dac',
    text: 'Cross-Civil Service Curriculum learning products for public servants'
}),

(ansStandardOTS:Answer {
    uuid: 'f029c92f-910d-402d-882a-86668c0d0887',
    text: 'Standard off-the-shelf learning products where no, or only minimal customisation, is needed'
}),

(ansBespokeLearningDesign:Answer {
    uuid: 'f597c7da-9b7f-4fa5-b4d0-e523f64527b4',
    text: 'Bespoke Learning Design and Delivery Service'
}),

(ansSubjectMatterExperts:Answer {
    uuid: '5aa057b1-aec8-4790-b2c2-8674534b30ad',
    text: 'Subject matter experts / facilitators to improve your learning interventions'
}),

(ansCoachingMentoring:Answer {
    uuid: '68ffcf56-14a4-43d8-9ce3-3249757d09ca',
    text: 'Coaching and Mentoring'
}),

(ansCOApproval:Answer {
    uuid: 'f1d668ba-a66d-4728-8007-cf380819ad5f',
    text: 'Services you require are not in scope and you have sought Cabinet Office Approval'
}),

// Answers: level 3
// ----- Learning and Development branch (answers grouped)

(ansServiceIntegrationList:Answer {
    uuid: '4f164ca9-ed7d-401d-b2f1-e988858db1c2',
    text: 'Do you want:',
    hint: '
    <ul>
        <li>Service Integration - for CSHR expert services customers only</li>
        <li>Cross-Civil Service Curriculum learning products for public servants</li>
        <li>Standard off-the-shelf learning products where no, or only minimal customisation, is needed</li>
    </ul>'
}),

(ansBespokeLearningList:Answer {
    uuid: '815bb337-6e12-4280-9662-0281df38bcfb',
    text: 'Do you want:',
    hint: '
    <ul>
        <li>Bespoke Learning Design and Delivery Services</li>
        <li>Subject matter experts/ facilitators to improve your learning interventions</li>
        <li>Coaching and Mentoring</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyApprenticeshipLearning:Journey {uuid: 'b9ca2e17-1c6b-42d9-a33b-38b87ef05234', name: 'Apprenticeship Learning'}),
(jrnyApprenticeshipLearning)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '64db189c-3cfe-4f0d-9cd8-4c874bf1eae6'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpLearningTrainingAndDevelopment:AnswerGroup {name: 'ansGrpLearningTrainingAndDevelopment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLearningTrainingAndDevelopment),
    (ansGrpLearningTrainingAndDevelopment)-[:HAS_ANSWER {order: 1}]->(ansLearningTrainingAndDevelopment),
    (ansGrpLearningTrainingAndDevelopment)-[:HAS_OUTCOME]->(qiCSLSubscriber:QuestionInstance:Outcome {uuid: '47cd2786-8027-4424-9458-4b7fc6fafcc2'})-[:DEFINED_BY]->(qstnCSLSubscriber),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiCSLSubscriber)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(qiLearningAndDevelopment:QuestionInstance:Outcome {uuid: 'e92e9f7a-0df4-48c0-9f6b-59751f05aebd'})-[:DEFINED_BY]->(qstnLearningAndDevelopmentGroup),

            (ansGrpServiceIntegrationList:AnswerGroup {name: 'ansGrpServiceIntegrationList'}),
            (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpServiceIntegrationList),
            (ansGrpServiceIntegrationList)-[:HAS_ANSWER {order: 1}]->(ansServiceIntegrationList),
            (ansGrpServiceIntegrationList)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpBespokeLearningList:AnswerGroup {name: 'ansGrpBespokeLearningList'}),
            (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpBespokeLearningList),
            (ansGrpBespokeLearningList)-[:HAS_ANSWER {order: 1}]->(ansBespokeLearningList),
            (ansGrpBespokeLearningList)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
            
            // (ansGrpServiceIntegration:AnswerGroup {name: 'ansGrpServiceIntegration'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpServiceIntegration),
            // (ansGrpServiceIntegration)-[:HAS_ANSWER {order: 1}]->(ansServiceIntegration),
            // (ansGrpServiceIntegration)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            // (ansGrpCrossCivilServiceCurriculum:AnswerGroup {name: 'ansGrpCrossCivilServiceCurriculum'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpCrossCivilServiceCurriculum),
            // (ansGrpCrossCivilServiceCurriculum)-[:HAS_ANSWER {order: 2}]->(ansCrossCivilServiceCurriculum),
            // (ansGrpCrossCivilServiceCurriculum)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            // (ansGrpStandardOTS:AnswerGroup {name: 'ansGrpStandardOTS'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpStandardOTS),
            // (ansGrpStandardOTS)-[:HAS_ANSWER {order: 3}]->(ansStandardOTS),
            // (ansGrpStandardOTS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            // (ansGrpBespokeLearningDesign:AnswerGroup {name: 'ansGrpBespokeLearningDesign'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpBespokeLearningDesign),
            // (ansGrpBespokeLearningDesign)-[:HAS_ANSWER {order: 4}]->(ansBespokeLearningDesign),
            // (ansGrpBespokeLearningDesign)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            // (ansGrpSubjectMatterExperts:AnswerGroup {name: 'ansGrpSubjectMatterExperts'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpSubjectMatterExperts),
            // (ansGrpSubjectMatterExperts)-[:HAS_ANSWER {order: 5}]->(ansSubjectMatterExperts),
            // (ansGrpSubjectMatterExperts)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            // (ansGrpCoachingMentoring:AnswerGroup {name: 'ansGrpCoachingMentoring'}),
            // (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpCoachingMentoring),
            // (ansGrpCoachingMentoring)-[:HAS_ANSWER {order: 6}]->(ansCoachingMentoring),
            // (ansGrpCoachingMentoring)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpCOapproval:AnswerGroup {name: 'ansGrpCOapproval'}),
            (qiLearningAndDevelopment)-[:HAS_ANSWER_GROUP]->(ansGrpCOapproval),
            (ansGrpCOapproval)-[:HAS_ANSWER {order: 7}]->(ansCOApproval),
            (ansGrpCOapproval)-[:HAS_OUTCOME]->(qiLearningAndTraining:QuestionInstance:Outcome {uuid: '624fccbb-fd09-4b58-a138-7a6384c6b3eb'})-[:DEFINED_BY]->(qstnLearningAndTraining),

                (ansGrpStandardOffTheShelf:AnswerGroup {name: 'ansGrpStandardOffTheShelf'}),
                (qiLearningAndTraining)-[:HAS_ANSWER_GROUP]->(ansGrpStandardOffTheShelf),
                (ansGrpStandardOffTheShelf)-[:HAS_ANSWER {order: 1}]->(ansStandardOffTheShelf),
                (ansGrpStandardOffTheShelf)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

                (ansGrpBespokeTraining:AnswerGroup {name: 'ansGrpBespokeTraining'}),
                (qiLearningAndTraining)-[:HAS_ANSWER_GROUP]->(ansGrpBespokeTraining),
                (ansGrpBespokeTraining)-[:HAS_ANSWER {order: 2}]->(ansBespokeTraining),
                (ansGrpBespokeTraining)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

                (ansGrpLearningTechnologies:AnswerGroup {name: 'ansGrpLearningTechnologies'}),
                (qiLearningAndTraining)-[:HAS_ANSWER_GROUP]->(ansGrpLearningTechnologies),
                (ansGrpLearningTechnologies)-[:HAS_ANSWER {order: 3}]->(ansLearningTechnologies),
                (ansGrpLearningTechnologies)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

                (ansGrpEducationSkillsServices:AnswerGroup {name: 'ansGrpEducationSkillsServices'}),
                (qiLearningAndTraining)-[:HAS_ANSWER_GROUP]->(ansGrpEducationSkillsServices),
                (ansGrpEducationSkillsServices)-[:HAS_ANSWER {order: 4}]->(ansEducationSkillsServices),
                (ansGrpEducationSkillsServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiCSLSubscriber)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(qiLearningAndTraining),

    (ansGrpApprenticeships:AnswerGroup {name: 'ansGrpApprenticeships'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpApprenticeships),
    (ansGrpApprenticeships)-[:HAS_ANSWER {order: 2}]->(ansApprenticeships),
    (ansGrpApprenticeships)-[:HAS_OUTCOME]->(qiReqEngland:QuestionInstance:Outcome {uuid: 'f78986bc-8977-4abf-9023-157f87a4ab1c'})-[:DEFINED_BY]->(qstnReqEngland),

        (ansGrpEngland:AnswerGroup {name: 'ansGrpEngland'}),
        (qiReqEngland)-[:HAS_ANSWER_GROUP]->(ansGrpEngland),
        (ansGrpEngland)-[:HAS_ANSWER {order: 2}]->(ansEngland),
        (ansGrpEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6102'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpWalesNorthernIreland:AnswerGroup {name: 'ansGrpWalesNorthernIreland'}),
        (qiReqEngland)-[:HAS_ANSWER_GROUP]->(ansGrpWalesNorthernIreland),
        (ansGrpWalesNorthernIreland)-[:HAS_ANSWER {order: 2}]->(ansWalesNorthernIreland),
        (ansGrpWalesNorthernIreland)-[:HAS_OUTCOME]->(resultCCSEscapePage);



