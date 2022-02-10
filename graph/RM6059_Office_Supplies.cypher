MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(ansSomethingElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'})

CREATE
// Questions
(qstnFirstQ:Question {uuid: '6607e294-8094-4a01-aa6b-1399e126cf96', text: 'Are you looking for stationery and electronic office supplies or electronic office supplies only?', type: 'LIST'}),
(qstnSingleOrMulti:Question {uuid: '5dff2b1e-e952-4741-9443-843395823f6e', text: 'Do you want to buy from a single or multi supplier lot?', type: 'LIST'}),


// Answer
(ansStationAndElectronic:Answer {uuid: 'e81df79e-dc5b-4a8d-a849-be9e27291e7d', text: 'Stationery and electronic office supplies', hint: 'Buy stationery items (such as pencils, pens and paper), catering supplies (such as tea and coffee) and office machines (such as laminators, desktop printers, photographic equipment and fax machines)'}),
(ansElectronicOfficeSuppliesOnly:Answer {uuid: '6f056fb9-7e75-4b77-bd46-f85e08e76ad4', text: 'Electronic Office Supplies only', hint: 'Buy office machinery and associated products such as laminators, desk top printers, photographic equipment, fax machines, paper shredders, printer ink and toner'}),

(ansSingle:Answer {uuid: '9e435f38-67b3-423b-9eaa-764302445eac', text: 'Single Supplier', hint: 'Buy directly from a single supplier using direct award'}),
(ansMulti:Answer {uuid: '66db9b39-b995-4db8-a492-030f323a0194', text: 'Multi Supplier', hint: 'Invite multiple suppliers to bid for your tender in a further competition or buy directly from a supplier who meets your needs'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyOffice:Journey {uuid: '56873452-78b1-4870-84ac-705618d3f337', name: 'Office Supplies'}),
(jrnyOffice)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'fd69ffb2-8b33-46ee-a585-2ac803d6b24d'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpStationAndElectronic:AnswerGroup {name: 'ansGrpStationAndElectronic'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpStationAndElectronic),
    (ansGrpStationAndElectronic)-[:HAS_ANSWER {order: 1}]->(ansStationAndElectronic),
    (ansGrpStationAndElectronic)-[:HAS_OUTCOME]->(qiSingleOrMulti:QuestionInstance:Outcome {uuid: '56747eb6-e246-44e4-8e8c-f67013041307'})-[:DEFINED_BY]->(qstnSingleOrMulti),

        (ansGrpSingle:AnswerGroup {name: 'ansGrpSingle'}),
        (qiSingleOrMulti)-[:HAS_ANSWER_GROUP]->(ansGrpSingle),
        (ansGrpSingle)-[:HAS_ANSWER {order: 1}]->(ansSingle),
        (ansGrpSingle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6059'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpMulti:AnswerGroup {name: 'ansGrpMulti'}),
        (qiSingleOrMulti)-[:HAS_ANSWER_GROUP]->(ansGrpMulti),
        (ansGrpMulti)-[:HAS_ANSWER {order: 2}]->(ansMulti),
        (ansGrpMulti)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6059'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
    
    (ansGrpElectronicOfficeSuppliesOnly:AnswerGroup {name: 'ansGrpElectronicOfficeSuppliesOnly'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElectronicOfficeSuppliesOnly),
    (ansGrpElectronicOfficeSuppliesOnly)-[:HAS_ANSWER {order: 2}]->(ansElectronicOfficeSuppliesOnly),
    (ansGrpElectronicOfficeSuppliesOnly)-[:HAS_OUTCOME]->(qiSingleOrMultiTwo:QuestionInstance:Outcome {uuid: 'dd200e94-7cdc-44e2-a4b7-7d3f5525a2b8'})-[:DEFINED_BY]->(qstnSingleOrMulti),
        
        (ansGrpSingleTwo:AnswerGroup {name: 'ansGrpSingleTwo'}),
        (qiSingleOrMultiTwo)-[:HAS_ANSWER_GROUP]->(ansGrpSingleTwo),
        (ansGrpSingleTwo)-[:HAS_ANSWER {order: 1}]->(ansSingle),
        (ansGrpSingleTwo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6059'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpMultiTwo:AnswerGroup {name: 'ansGrpMultiTwo'}),
        (qiSingleOrMultiTwo)-[:HAS_ANSWER_GROUP]->(ansGrpMultiTwo),
        (ansGrpMultiTwo)-[:HAS_ANSWER {order: 2}]->(ansMulti),
        (ansGrpMultiTwo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6059'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
    
    (ansGrpSomethingElse:AnswerGroup {name: 'ansGrpSomethingElse'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSomethingElse),
    (ansGrpSomethingElse)-[:HAS_ANSWER {order: 3}]->(ansSomethingElse),
    (ansGrpSomethingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage)

;