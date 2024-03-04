Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE

//Question
(qstnAccess:Question {uuid: '7b704b4f-6a0f-4661-b3d3-2fb79106119e', text: 'How do you want to access the services?', type: 'LIST'}),

//Answer
(ansBrokerage:Answer {
    uuid: 'fa68adf5-87e1-4280-8db2-1d132c460d85',
    text: 'Brokerage and advisory services',
    hint: 'Access a range of insurance brokers and services. Services include:
    <ul>
        <li>placement for all classes of insurance: where a broker buys or renews an insurance product contract on behalf of their client</li>
        <li>general advice and consultancy</li>
        <li>actuarial services: where brokers predict insurance company costs and then help them to set premiums and design policies based on those numbers</li>
        <li>claims handling</li>
        <li>risk management</li>
        <li>profiling training </li>
    </ul>'
}),

(ansClaims:Answer {
    uuid: 'ac4a8d6c-5903-4530-a3a0-560dfc114fc3',
    text: 'Claims handling services',
    hint: 'Access specialist claims handling services for compensation claims. Services include:
    <ul>
        <li>employer’s liability</li>
        <li>third part motor claims</li>
        <li>uninsured loss recovery</li>
        <li>public liability</li>
        <li>property damage and/or loss</li>
    </ul>'
}),

(ansBroker:Answer {uuid: '0107c54e-c3c7-4e6c-9dea-424c3c4c273e', text: 'Broker only ', hint: 'Access brokers who will work with and handle insurance suppliers and services on your behalf'}),
(ansDirect:Answer {uuid: '8d88c05f-0b92-4a82-b65a-27e6106bcbec', text: 'Direct customer handling', hint: 'Access a range of insurance suppliers who provide insurance services and quotes to you directly without needing a broker'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyIS3:Journey {uuid: '15d8d201-342a-4eae-abfb-021a4e9b2113', name: 'Insurance Services 3'}),
(jrnyIS3)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'f532a622-f189-4511-9d8a-5d1d0023398c'})-[:DEFINED_BY]->(qstnService),

(ansGrpBrokerage:AnswerGroup {name: 'ansGrpBrokerage'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBrokerage),
(ansGrpBrokerage)-[:HAS_ANSWER {order: 1}]->(ansBrokerage),
(ansGrpBrokerage)-[:HAS_OUTCOME]->(qiBrokerage:QuestionInstance:Outcome {uuid: '7341976d-8883-4c18-b8c8-3869d1c37499'})-[:DEFINED_BY]->(qstnAccess),

    (ansGrpBroker:AnswerGroup {name: 'ansGrpBroker'}),
    (qiBrokerage)-[:HAS_ANSWER_GROUP]->(ansGrpBroker),
    (ansGrpBroker)-[:HAS_ANSWER {order: 1}]->(ansBroker),
    (ansGrpBroker)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    (ansGrpDirect:AnswerGroup {name: 'ansGrpDirect'}),
    (qiBrokerage)-[:HAS_ANSWER_GROUP]->(ansGrpDirect),
    (ansGrpDirect)-[:HAS_ANSWER {order: 2}]->(ansDirect),
    (ansGrpDirect)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6138'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpClaims:AnswerGroup {name: 'ansGrpClaims'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpClaims),
(ansGrpClaims)-[:HAS_ANSWER {order: 2}]->(ansClaims),
(ansGrpClaims)-[:HAS_OUTCOME]->(resultCCSEscapePage);