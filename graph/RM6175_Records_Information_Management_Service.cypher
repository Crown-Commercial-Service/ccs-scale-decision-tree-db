MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
// Answer
(ansRecordInfo:Answer {uuid: '4cf95d1a-9ef9-49f8-9216-f0cb9257550e', text: 'Records information management services', hint: 'Provides off site storage for physical records as well as scanning, shredding, destruction and disposal services. Also includes support to help you change from your current on site storage service to an off site solution'}),
(ansDigitalCloud:Answer {uuid: '7267950d-06d0-4023-b77e-6dd9bc4f6596', text: 'Digital workflow and cloud based hosting solutions', hint: 'Services to help you create a digital workflow solution that will meet your individual record management needs. Includes:
<ul>
<li>cloud based hosting which will allow you to store documents and records digitally</li>
<li>management of water meters (including the switching of water retailers and billing)</li>
<li>the scanning of physical records</li>
<li>access to resources such as technical or security architects for your project</li>
</ul>
'}),
(ansNHSRecord:Answer {uuid: '637849ba-bcc9-41b7-b429-e7545d0adca9', text: 'Full management of NHS patient records (Off site)', hint: 'Provides services for preparing NHS records for clinic, such as:
<ul>
<li>loose filing services (ensuring loose paperwork is filed with the original notes)</li>
<li>creating new patient records</li> 
<li>digitisation services: the scanning of new and existing patient records</li>
<li>the transportation (delivery and collection), sorting, shredding, destruction and disposal of records</li>
<li>off site storage of patient records at supplier\'s site(s)</li>
</ul>
'}),
(ansSpecialistRecord:Answer {uuid: '9e90135e-6ecd-4b3d-b9e0-dc18381396d9', text: 'Specialist records mangement services', hint: 'Supports central government departments with identifying records of historic value. Central government can use these services to catalogue, assess, sensitivity review and prepare records before transferring them for permanent preservation at The National Archives'}),
(ansCombinedDigital:Answer {uuid: '5be4bf0e-73e8-455f-b560-e66734eaf278', text: 'Combined digital workflow, cloud based hosting and records information management services', hint: 'Provides cloud hosting and short-term technical services to help you reduce your physical records and move to a digital storage solution. You can also access offsite management services for physical records'}),
(ansSomethingElse:Answer {uuid: 'd983b430-92f5-42f2-b778-3a5bab9cf4a2', text: 'Something else', hint: 'What I need is not listed here'}),

// Tree Structure
(jrnyRecordInfo:Journey {uuid: 'd39ea9e1-b33c-4ce7-9ec2-6448d8277684', name: 'Records Information Management Service'}),
(jrnyRecordInfo)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '8b608d94-7b9d-4012-b2a3-6217873a4198'})-[:DEFINED_BY]->(qstnService),

    (ansGrpRecordInfo:AnswerGroup {name: 'ansGrpRecordInfo'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRecordInfo),
    (ansGrpRecordInfo)-[:HAS_ANSWER {order: 1}]->(ansRecordInfo),
    (ansGrpRecordInfo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6175'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDigitalCloud:AnswerGroup {name: 'ansGrpDigitalCloud'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDigitalCloud),
    (ansGrpDigitalCloud)-[:HAS_ANSWER {order: 2}]->(ansDigitalCloud),
    (ansGrpDigitalCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6175'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpNHSRecord:AnswerGroup {name: 'ansGrpNHSRecord'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpNHSRecord),
    (ansGrpNHSRecord)-[:HAS_ANSWER {order: 3}]->(ansNHSRecord),
    (ansGrpNHSRecord)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6175'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpSpecialistRecord:AnswerGroup {name: 'ansGrpSpecialistRecord'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSpecialistRecord),
    (ansGrpSpecialistRecord)-[:HAS_ANSWER {order: 4}]->(ansSpecialistRecord),
    (ansGrpSpecialistRecord)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6175'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpCombinedDigital:AnswerGroup {name: 'ansGrpCombinedDigital'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCombinedDigital),
    (ansGrpCombinedDigital)-[:HAS_ANSWER {order: 5}]->(ansCombinedDigital),
    (ansGrpCombinedDigital)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6175'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpSomethingElse:AnswerGroup {name: 'ansGrpSomethingElse'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSomethingElse),
    (ansGrpSomethingElse)-[:HAS_ANSWER {order: 6}]->(ansSomethingElse),
    (ansGrpSomethingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage)