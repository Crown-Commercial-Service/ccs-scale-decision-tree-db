CREATE

// Questions
(qstnFirstQuestion:Question {
    uuid: '3e667520-9034-4de0-92c5-db83f3fc761d',
    text: 'Select option that suits your requirements',
    type: 'LIST'
}),

(qstnRequirementOptionICTLocation:Question {
    uuid: '8ab5889f-f0fc-4c91-bfca-5f61757021e9',
    text: 'Select requirement option',
    hint: '
    <ul>
        <li>Locate or relocate servers, data storage, network and security ICT</li>
        <li>Relocate servers, network and security ICT to Crown Hosting</li>
        <li>Optical network connectivity to a Crown Hosting Location</li>
    </ul>',
    type: 'LIST'
}),

(qstnRequirementOptionRoomSpaces:Question {
    uuid: '6d0adfdd-d40c-467b-b529-ec07000eda21',
    text: 'Select requirement option',
    type: 'LIST'
}),

// Answers - level 1

(ansICTLocation:Answer {
    uuid: 'e3467c5a-eab6-4efb-9337-e2280b045679',
    text: 'ICT Location'
}),

(ansICTRelocation:Answer {
    uuid: '9c21d736-d38e-483a-913d-fb5a87de7ae5',
    text: 'ICT Relocation',
    hint: 'Planning, preparation and undertaking of relocation to Crown Hosting'
}),

(ansDataCenter:Answer {
    uuid: '9b86c22c-de35-4bce-bc6d-30ed814d29e0',
    text: 'Data center network connectivity',
    hint: 'Data Centre Network connectivity to a Crown Hosting location'
}),

// Answers - level 2

(ansRoomsSpaces:Answer {
    uuid: 'b398cb55-d07a-4491-8d96-fcb424d881be',
    text: 'Rooms / Spaces'
}),

// Answers - level 3
(ansShared:Answer {
    uuid: 'eab19395-2ba4-4c16-a4e4-7410eaba53c7',
    text: 'Shared with other public sector organisatins',
    hint: 'ICT location in a private equipment rack in a room that contains other public sector organisations'
}),

(ansPrivate:Answer {
    uuid: 'fb198f43-5a05-47d2-bc8a-c5e4c1349cdd',
    text: 'Private to you',
    hint: 'A room that is completely private to you and can contain many racks'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCrownHostingII:Journey {uuid: 'c6033c75-8507-485d-a3ec-747949922e86', name: 'Crown Hosting II'}),
(jrnyCrownHostingII)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '92df59bb-3e45-41b4-971f-1dfb0d3eb25d'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpICTLocation:AnswerGroup {name: 'ansGrpICTLocation'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpICTLocation),
    (ansGrpICTLocation)-[:HAS_ANSWER {order: 1}]->(ansICTLocation),
    (ansGrpICTLocation)-[:HAS_OUTCOME]->(qiRequirementOptionICTLocation:QuestionInstance:Outcome {uuid: '3477e28c-04f5-4590-8731-1a4ecf1f0bad'})-[:DEFINED_BY]->(qstnRequirementOptionICTLocation),

        (ansGrpRoomsSpaces:AnswerGroup {name: 'ansGrpRoomsSpaces'}),
        (qiRequirementOptionICTLocation)-[:HAS_ANSWER_GROUP]->(ansGrpRoomsSpaces),
        (ansGrpRoomsSpaces)-[:HAS_ANSWER {order: 1}]->(ansRoomsSpaces),
        (ansGrpRoomsSpaces)-[:HAS_OUTCOME]->(qiRequirementOptionRoomSpaces:QuestionInstance:Outcome {uuid: '3a0f7f67-ab63-437a-8c44-ceb9356351cd'})-[:DEFINED_BY]->(qstnRequirementOptionRoomSpaces),

            (ansGrpShared:AnswerGroup {name: 'ansGrpShared'}),
            (qiRequirementOptionRoomSpaces)-[:HAS_ANSWER_GROUP]->(ansGrpShared),
            (ansGrpShared)-[:HAS_ANSWER {order: 1}]->(ansShared),
            (ansGrpShared)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpPrivate:AnswerGroup {name: 'ansGrpPrivate'}),
            (qiRequirementOptionRoomSpaces)-[:HAS_ANSWER_GROUP]->(ansGrpPrivate),
            (ansGrpPrivate)-[:HAS_ANSWER {order: 2}]->(ansPrivate),
            (ansGrpPrivate)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpICTRelocation_2:AnswerGroup {name: 'ansGrpICTRelocation_2'}),
        (qiRequirementOptionICTLocation)-[:HAS_ANSWER_GROUP]->(ansGrpICTRelocation_2),
        (ansGrpICTRelocation_2)-[:HAS_ANSWER {order: 2}]->(ansICTRelocation),
        (ansGrpICTRelocation_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpDataCenter_2:AnswerGroup {name: 'ansGrpDataCenter_2'}),
        (qiRequirementOptionICTLocation)-[:HAS_ANSWER_GROUP]->(ansGrpDataCenter_2),
        (ansGrpDataCenter_2)-[:HAS_ANSWER {order: 3}]->(ansDataCenter),
        (ansGrpDataCenter_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpICTRelocation:AnswerGroup {name: 'ansGrpICTRelocation'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpICTRelocation),
    (ansGrpICTRelocation)-[:HAS_ANSWER {order: 2}]->(ansICTRelocation),
    (ansGrpICTRelocation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDataCenter:AnswerGroup {name: 'ansGrpDataCenter'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDataCenter),
    (ansGrpDataCenter)-[:HAS_ANSWER {order: 3}]->(ansDataCenter),
    (ansGrpDataCenter)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});

