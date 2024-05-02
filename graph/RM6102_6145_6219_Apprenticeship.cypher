MATCH
(qstnServiceType:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE

// QUESTIONS
(qstnCSLSubscriber:Question {
    uuid: 'a0fc1fda-b784-4241-9087-191b56511de8',
    text: 'Are you a Civil Service Subscriber?',
    type: 'LIST'
}),

//ANSWERS
(ansLearningAndTraining:Answer {
    uuid: 'ab9d9e6f-ee4b-4359-9f6f-283dea342050',
    text: 'Learning and training services',
    hint: 'Access standard and niche learning and training service options from a large group of pre-qualified training providers. Designed to provide up-skilling and training initiatives in the following areas:
    <ul>
        <li>skills for the unemployed</li>
        <li>services community learning</li>
        <li>skills for the employed</li>
        <li>skills for young people or people in education</li>
        <li>business skills</li>
        <li>health and safety</li>
        <li>financial skills</li>
        <li>coaching and mentoring</li>
    </ul>'
}),

(ansLearningAndDevelopment:Answer {
    uuid: 'b6edff13-332c-4ae9-bcdf-eb4ba0496573',
    text: 'Learning and Development',
    hint: 'Provides a range of training and development services designed to help public sector employees develop their skills'
}),

(ansApprenticeships:Answer {
    uuid: '87551b2d-8337-49ae-8713-3eda3841c537',
    text: 'Apprenticeships',
    hint: 'Access an extensive range of generic and bespoke apprenticeship training programmes and assessments. Apprentices are able to learn and gain experience through employment while being paid. Training can be in a classroom, in a workplace, online or a combination of these'
}),

(ansYes:Answer {
    uuid: 'ab2ddd0e-4e9a-48d3-ae49-f86335c01772',
    text: 'Yes',
    hint: 'I am a Civil Service Learning subscriber'
}),

(ansNo:Answer {
    uuid: 'ffea5611-c4ab-42c9-a30c-1ade6aef640b',
    text: 'No',
    hint: 'I am not a Civil Service Learning subscriber'
}),

(ansServiceIntegration:Answer {
    uuid: '4f164ca9-ed7d-401d-b2f1-e988858db1c2',
    text: 'Service Integration and Cross Civil Service and Commodity Learning',
    hint: 'Provides standard cross-civil service curriculum products and training. You can also access a service integrator if you are a Civil Service Human Resource (CSHR) customer only'
}),

(ansLearningDesign:Answer {
    uuid: '815bb337-6e12-4280-9662-0281df38bcfb',
    text: 'Learning Design and Delivery and Subject Matter Expertise and Coaching',
    hint: 'Access specialist learning and development facilitators who will design and provide tailored learning services to meet your specific needs. Includes:
    <ul>
        <li>learning strategy</li>
        <li>needs analysis</li>
        <li>capability assessments</li>
        <li>design of training</li>
        <li>providing the training, coaching or mentoring</li>
        <li>evaluation of training quality and impact</li>
    </ul>'
}),

(ansOther:Answer {
    uuid: '82f8c2b1-8563-47b7-9b95-d6ff36a74818',
    text: 'Other',
    hint: 'I have sought cabinet office approval to use RM6219 Learning and training services'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyApprenticeshipLearning:Journey {uuid: 'b9ca2e17-1c6b-42d9-a33b-38b87ef05234', name: 'Apprenticeship Learning'}),
(jrnyApprenticeshipLearning)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '64db189c-3cfe-4f0d-9cd8-4c874bf1eae6'})-[:DEFINED_BY]->(qstnServiceType),

    (ansGrpLearningAndTraining:AnswerGroup {name: 'ansGrpLearningAndTraining'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLearningAndTraining),
    (ansGrpLearningAndTraining)-[:HAS_ANSWER {order: 1}]->(ansLearningAndTraining),
    (ansGrpLearningAndTraining)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

    (ansGrpLearningAndDevelopment:AnswerGroup {name: 'ansGrpLearningAndDevelopment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLearningAndDevelopment),
    (ansGrpLearningAndDevelopment)-[:HAS_ANSWER {order: 2}]->(ansLearningAndDevelopment),
    (ansGrpLearningAndDevelopment)-[:HAS_OUTCOME]->(qiCSLSubscriber:QuestionInstance:Outcome {uuid: '47cd2786-8027-4424-9458-4b7fc6fafcc2'})-[:DEFINED_BY]->(qstnCSLSubscriber),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiCSLSubscriber)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(qiThirdQuestion:QuestionInstance:Outcome {uuid: 'e92e9f7a-0df4-48c0-9f6b-59751f05aebd'})-[:DEFINED_BY]->(qstnServiceType),

            (ansGrpServiceIntegration:AnswerGroup {name: 'ansGrpServiceIntegration'}),
            (qiThirdQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpServiceIntegration),
            (ansGrpServiceIntegration)-[:HAS_ANSWER {order: 1}]->(ansServiceIntegration),
            // (ansGrpServiceIntegration)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),
            (ansGrpServiceIntegration)-[:HAS_OUTCOME]->(resultCCSEscapePage),
            
            
            (ansGrpLearningDesign:AnswerGroup {name: 'ansGrpLearningDesign'}),
            (qiThirdQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLearningDesign),
            (ansGrpLearningDesign)-[:HAS_ANSWER {order: 2}]->(ansLearningDesign),
            // (ansGrpLearningDesign)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
            (ansGrpLearningDesign)-[:HAS_OUTCOME]->(resultCCSEscapePage),

            (ansGrpOther:AnswerGroup {name: 'ansGrpOther'}),
            (qiThirdQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOther),
            (ansGrpOther)-[:HAS_ANSWER {order: 3}]->(ansOther),
            (ansGrpOther)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiCSLSubscriber)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6219'}),

    (ansGrpApprenticeships:AnswerGroup {name: 'ansGrpApprenticeships'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpApprenticeships),
    (ansGrpApprenticeships)-[:HAS_ANSWER {order: 3}]->(ansApprenticeships),
    (ansGrpApprenticeships)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6102'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});