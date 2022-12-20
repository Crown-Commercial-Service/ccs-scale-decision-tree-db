// TODO: question errors (pending revision)
CREATE

(qstnFirstQuestion:Question {
    uuid: 'e41dd7b7-513c-459c-b309-60755638ce9e', 
    text: 'Select the type of Discovery and Disclosure  service of electronic material you require?',
    type: 'LIST'
}),

(qstnSecurityLevel:Question {
    uuid: '4d5bc67a-29ea-4e14-ab14-45203ff04a25', 
    text: 'Select the level of security classification do you require',
    type: 'LIST'
}),


// ANSWERS

(ansLowVolumeWork:Answer {
    uuid: '3ec7a51f-210c-4781-bd6f-2ed1ff9b7450',
    text: 'Low Volume Work',
    hint: ' Document pre-processing, processing, review, production and disclosure from other opponent parties for:
    <ul>
        <li>asess data collected</li>
        <li>processing of one tranche of data, plus de-duplication and email threading</li>
        <li>provision of a review platform</li>
        <li>one production</li>
        <li>potentially the loading and review of the other side\'s data only</li>
    </ul>'
}),

(ansDocumentReviews:Answer {
    uuid: '153c613e-2681-4aa8-abd5-646740828e92',
    text: 'Document Reviews',
    hint: 'Document Reviewers to review, tag and, where necessary, redact documents for:
    <ul>
        <li>relevance to specific claims or issues within a claim</li>
        <li>legal professional privilege</li>
        <li>personal data</li>
        <li>public interest immunity</li>
        <li>business or commercial confidentiality; ande) any other matters that are required</li>
    </ul>'
}),

(ansEndToEndService:Answer {
    uuid: '89001845-2d39-489f-9eaa-a6c96a27eb78',
    text: 'End to End Service'
}),

(ansClassificationOfficial:Answer {
    uuid: 'fe1cae20-a628-4d19-b6fd-93428dc20230',
    text: 'Classification up to Official (and including \'Official Sensitive\')',
    hint: 'End to End Services:
    <ul>
        <li>Strategic oversight</li>
        <li>advice and support</li>
        <li>document identification</li>
        <li>data preservation and collection</li>
        <li>document processing</li>
        <li>document review</li>
        <li>document reviewers</li>
        <li>document production</li>
        <li>disclosure from other opponent parties</li>
        <li>presentation at trial</li>
        <li>security requirements</li>
    </ul>'
}),

(ansClassificationSecret:Answer {
    uuid: '6c057c3a-78c2-4e89-b928-12bf39a105fe',
    text: 'Classification up to and including \'Secret\' and \'Top Secret\'',
    hint: 'End to End Services:
    <ul>
        <li>Strategic oversight</li>
        <li>advice and support</li>
        <li>document identification</li>
        <li>data preservation and collection</li>
        <li>document processing</li>
        <li>document review</li>
        <li>document reviewers</li>
        <li>document production</li>
        <li>disclosure from other opponent parties</li>
        <li>presentation at trial</li>
        <li>security requirements</li>
    </ul>'
}),

// Tree Structure


(jrnyEDisclosure:Journey {uuid: '4d1c067c-bce1-47a2-bbbb-8a62d87dcac4', name: 'Legal (e-Disclosure)'}),
(jrnyEDisclosure)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'd1520910-0b8b-485e-9680-58a1022d6baf'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpLowVolumeWork:AnswerGroup {name: 'ansGrpLowVolumeWork'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLowVolumeWork),
    (ansGrpLowVolumeWork)-[:HAS_ANSWER {order: 1}]->(ansLowVolumeWork),
    (ansGrpLowVolumeWork)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDocumentReviews:AnswerGroup {name: 'ansGrpDocumentReviews'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDocumentReviews),
    (ansGrpDocumentReviews)-[:HAS_ANSWER {order: 2}]->(ansDocumentReviews),
    (ansGrpDocumentReviews)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpEndToEndService:AnswerGroup {name: 'ansGrpEndToEndService'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEndToEndService),
    (ansGrpEndToEndService)-[:HAS_ANSWER {order: 3}]->(ansEndToEndService),
    (ansGrpEndToEndService)-[:HAS_OUTCOME]->(qiSecurityLevel:QuestionInstance:Outcome {uuid: 'd00751d6-2337-44fe-8957-a8ecb929570b'})-[:DEFINED_BY]->(qstnSecurityLevel),

        (ansGrpClassificationOfficial:AnswerGroup {name: 'ansGrpClassificationOfficial'}),
        (qiSecurityLevel)-[:HAS_ANSWER_GROUP]->(ansGrpClassificationOfficial),
        (ansGrpClassificationOfficial)-[:HAS_ANSWER {order: 1}]->(ansClassificationOfficial),
        (ansGrpClassificationOfficial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpClassificationSecret:AnswerGroup {name: 'ansGrpClassificationSecret'}),
        (qiSecurityLevel)-[:HAS_ANSWER_GROUP]->(ansGrpClassificationSecret),
        (ansGrpClassificationSecret)-[:HAS_ANSWER {order: 2}]->(ansClassificationSecret),
        (ansGrpClassificationSecret)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});

 

