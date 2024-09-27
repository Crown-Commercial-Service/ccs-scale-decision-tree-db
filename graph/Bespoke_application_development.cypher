Match
(qstnService:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'})

CREATE
(qstnFirst:Question {uuid: '27c6492c-e474-43fc-93e4-b1340642e475', text: 'Select the digital service you need?', type: 'LIST'}),

(ansDigitalOutcomes:Answer {
    uuid: 'e54710e7-2ba6-4c9a-b3d4-9e352eae2a84',
    text: 'Digital outcomes for health and social care',
    hint: 'Application development and management services for the public health and care sector. Customers can access:
    <ul>
        <li>an agile approach to development services for new digital solutions </li>
        <li>support with existing products and services</li>
        <li>data management services (for the collection, processing and distribution of health data)</li>
    </ul>'
}),

(ansDigitalOutcomesForNonPublic:Answer {
    uuid: 'e26bfcda-d791-4550-ba97-b0e6ed18ebe1',
    text: 'Digital outcomes for non-public health and social care services',
    hint: 'Digital, data and technology (DDaT) roles and digital change programmes. You can get: 
    <ul>
        <li>DDaT services for projects to research, test, design, build, release, improve, support and retire digital services </li>
        <li>DDaT specialist roles based on the DDaT profession framework</li>
    </ul>'
}),

(ansDigitalOutcomesOrAchievementRequirement:Answer {
    uuid: '05e1b513-bc65-4092-b9d9-f1be5ca0c59d',
    text: 'Digital outcomes or achievement requirement',
    hint: 'Get digital specialist teams or individuals for specific services and tasks. These include: 
    <ul>
        <li>user experience and design</li>
        <li>data analysis</li>
        <li>security</li>
        <li>service delivery</li>
        <li>software development</li>
        <li>support and operations</li>
        <li>testing and auditing</li>
        <li>user research</li>
    </ul>'
}),

(ansUserResearchStudios:Answer {
    uuid: '2aba1010-2637-4219-bde2-8d279593c7d7',
    text: 'User research studios',
    hint: 'Hire studio space for user research, including:
    <ul>
        <li>rooms for interviews, usability tests or focus groups</li>
        <li>facilities to observe and record people using designs, prototypes and public services</li>
    </ul> Equipment and staff to help run sessions are available.'
}),

(ansTesting:Answer {
    uuid: '4be4c829-9ecd-4576-9cbd-3c01e40b26d1',
    text: 'Testing a digital product or service',
    hint: 'Find users with the right attributes and characteristics to test a digital product or service. This can help:
    <ul>
        <li>understand how people use your service</li>
        <li>plan ongoing research to improve your service</li>
        <li>recruit users with specific characteristics for testing</li>
    </ul>'
}),


(ansDSP:Answer {
    uuid: '41d150b3-8800-4e07-97e5-ce31954fad46',
    text: 'Digital services and programmes',
    hint: '
    <ul>
        <li>creating new digital services for users or staff, like mobile apps or online shops</li>
        <li>improving existing services to work better for everyone who uses them</li>
    </ul>'
}),

(ansDP:Answer {
    uuid: '59e9bb2b-2612-4785-9881-8bfc20b07b39',
    text: 'Digital specialists',
    hint: '
    <ul>
        <li>provide teams with all necessary DDaT skills for digital projects</li>
        <li>supply individual DDaT staff to join existing or new teams</li>
        <li>hire DDaT experts to help meet your goals, like a service designer for a new service</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyBespoke:Journey {uuid: '9b43a7ba-321a-4d0e-8274-78eb33ff889a', name: 'Bespoke'}),
(jrnyBespoke)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '3d29a810-68f4-48f7-834e-894e25105074'})-[:DEFINED_BY]->(qstnFirst),


(ansGrpDigitalOutcomes:AnswerGroup {name: 'ansGrpDigitalOutcomes'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDigitalOutcomes),
(ansGrpDigitalOutcomes)-[:HAS_ANSWER {order: 1}]->(ansDigitalOutcomes),
(ansGrpDigitalOutcomes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6221'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpDigitalOutcomesForNonPublic:AnswerGroup {name: 'ansGrpDigitalOutcomesForNonPublic'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDigitalOutcomesForNonPublic),
(ansGrpDigitalOutcomesForNonPublic)-[:HAS_ANSWER {order: 2}]->(ansDigitalOutcomesForNonPublic),
(ansGrpDigitalOutcomesForNonPublic)-[:HAS_OUTCOME]->(qiSecond:QuestionInstance:Outcome {uuid: '6b27b6d2-cf3b-42eb-aba9-7a149355aa16'})-[:DEFINED_BY]->(qstnService),

    (ansGrpDSP:AnswerGroup {name: 'ansGrpDSP'}),
    (qiSecond)-[:HAS_ANSWER_GROUP]->(ansGrpDSP),
    (ansGrpDSP)-[:HAS_ANSWER {order: 1}]->(ansDSP),
    (ansGrpDSP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6263'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDP:AnswerGroup {name: 'ansGrpDP'}),
    (qiSecond)-[:HAS_ANSWER_GROUP]->(ansGrpDP),
    (ansGrpDP)-[:HAS_ANSWER {order: 2}]->(ansDP),
    (ansGrpDP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6263'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),


(ansGrpDigitalOutcomesOrAchievementRequirement:AnswerGroup {name: 'ansGrpDigitalOutcomesOrAchievementRequirement'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDigitalOutcomesOrAchievementRequirement),
(ansGrpDigitalOutcomesOrAchievementRequirement)-[:HAS_ANSWER {order: 3}]->(ansDigitalOutcomesOrAchievementRequirement),
(ansGrpDigitalOutcomesOrAchievementRequirement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.8'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpUserResearchStudios:AnswerGroup {name: 'ansGrpUserResearchStudios'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpUserResearchStudios),
(ansGrpUserResearchStudios)-[:HAS_ANSWER {order: 4}]->(ansUserResearchStudios),
(ansGrpUserResearchStudios)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.8'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpTesting:AnswerGroup {name: 'ansGrpTesting'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTesting),
(ansGrpTesting)-[:HAS_ANSWER {order: 5}]->(ansTesting),
(ansGrpTesting)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.8'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true});