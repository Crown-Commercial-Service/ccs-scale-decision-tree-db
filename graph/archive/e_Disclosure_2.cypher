Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
//Question
(qstnSecurity:Question {uuid: '02466695-414a-498f-89eb-349e0d157f97', text: 'What level of security classification do you need?', type: 'LIST'}),

//Answer
(ansLow:Answer {
    uuid: 'a658c33e-7af8-42a1-9c64-229198218efc',
    text: 'Low volume work',
    hint: 'Provides pre-processing, processing, review, production and disclosure services for low volume work. This can include the collection, identification, processing and analysis for:
    <ul>
        <li>electronically stored information (ESI) of no more than 5GB with a security classification of up to and including \'official\' and \'official sensitive\'</li>
        <li>hardcopy documents of no more than 1,750 pages with a security classification of up to and including \'official\' and \'official sensitive\'</li>
    </ul>'
}),

(ansDocument:Answer {
    uuid: 'fc02d113-7553-4055-90af-2dae7fb418c4',
    text: 'Document reviewers',
    hint: 'Access document reviewers to:
    <ul>
        <li>review your documents and data</li>
        <li>tag or add extra information to your documents and data to easily label and categorise them </li>
        <li>redact (adapt) your documents and data, for example obscuring or removing personal or sensitive information</li>
        <li>For documents and data with a security classification of up to and including \'official\' and \'official sensitive\'</li>
    </ul>'
}),

(ansEnd:Answer {
    uuid: '483174ce-7d60-4534-b7ab-7d014f9a3912',
    text: 'End to end service',
    hint: 'Access a full eDisclosure service to meet all your needs from beginning to end. For documents and data with a security classification up to and including \'official\', \'official sensitive\', \'secret\' and \'top secret\'. eDisclosure services can include:
    <ul>
        <li>identification</li>
        <li>preservation</li>
        <li>collection</li>
        <li>processing</li>
        <li>review</li>
        <li>analysis</li>
        <li>production</li>
        <li>presentation at trial</li>
    </ul>'
}),

(ansClassificationOfficial:Answer {
    uuid: '5bc0e63e-353a-4336-b353-12910cc10021',
    text: 'Classification up to and including ‘Official’ and ‘Official Sensitive’',
    hint: 'Access end to end eDisclosure services for documents and data with a security classification of \'official\' and \'official sensitive\' or lower. Services can include:
    <ul>
        <li>strategic oversight</li>
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
    uuid: '214bf420-e78e-4672-ac56-a6047d574fc8',
    text: 'Classification up to and including ‘Secret’ and ‘Top Secret’',
    hint: 'Access end to end eDisclosure services for documents and data with a security classification of \'secret\' and \'top secret\'. Services can include:
    <ul>
        <li>strategic oversight</li>
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure

(jrnyEDisclosure:Journey {uuid: '457d7708-f0db-4bab-8f0e-5284fe33e9d0', name: ' E Disclosure 2'}),
(jrnyEDisclosure)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '26cf9ec7-4993-4ab3-9fde-903b8f3fcc4f'})-[:DEFINED_BY]->(qstnService),

(ansGrpLow:AnswerGroup {name: 'ansGrpLow'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLow),
(ansGrpLow)-[:HAS_ANSWER {order: 1}]->(ansLow),
(ansGrpLow)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpDocument:AnswerGroup {name: 'ansGrpDocument'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDocument),
(ansGrpDocument)-[:HAS_ANSWER {order: 2}]->(ansDocument),
(ansGrpDocument)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpEnd:AnswerGroup {name: 'ansGrpEnd'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnd),
(ansGrpEnd)-[:HAS_ANSWER {order: 3}]->(ansEnd),
(ansGrpEnd)-[:HAS_OUTCOME]->(qiSecurity:QuestionInstance:Outcome {uuid: '9bb4e8ca-4119-4e08-9b7e-a3affb68f1da'})-[:DEFINED_BY]->(qstnSecurity),

    (ansGrpClassificationOfficial:AnswerGroup {name: 'ansGrpClassificationOfficial'}),
    (qiSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpClassificationOfficial),
    (ansGrpClassificationOfficial)-[:HAS_ANSWER {order: 1}]->(ansClassificationOfficial),
    (ansGrpClassificationOfficial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpClassificationSecret:AnswerGroup {name: 'ansGrpClassificationSecret'}),
    (qiSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpClassificationSecret),
    (ansGrpClassificationSecret)-[:HAS_ANSWER {order: 2}]->(ansClassificationSecret),
    (ansGrpClassificationSecret)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6336'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});