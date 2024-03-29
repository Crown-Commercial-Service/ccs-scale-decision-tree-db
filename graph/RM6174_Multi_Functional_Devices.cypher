
CREATE

// Question
(qstnFirstQ:Question {
    uuid: '22497168-ac36-4980-a45f-b958c57b0fa7',
    text: 'What service do you need?',
    type: 'LIST'
}),

// Answers
(ansMFDbasicPrint:Answer {
    uuid: 'b839600a-b64a-40a0-918b-e6b9978bd31a',
    text: 'Multifunctional devices (MFDs) and basic print management software',
    hint: 'Buy or lease MFDs and print management software from an online catalogue. An MFD is a device that you can use to complete more than one task. For example a printer machine that can print, copy and scan. Available services include:
    <ul>
    <li> a range of 14 MFDs </li>
    <li> consumables, such as paper trays, staple finishers and hole punches </li>
    <li> basic print management software, for example PIN access </li>
    <li> equipment maintenance and support services </li>
    </ul>'
}),

(ansMFDprintMngmnt:Answer {
    uuid: '0b9ac427-f4fa-45fb-89a6-d84ec7ebd994',
    text: 'MFDs, print management and/or digital workflow',
    hint: 'Buy or lease MFDs and print production devices to help you move towards digital workflow solution. You can buy the services independently, or you can create a combined service by buying a mixture of them. Services include:
    <ul>
    <li> hardware print devices </li>
    <li> consumables such as paper trays, staple finishers and hole punches </li>
    <li> print room equipment </li>
    <li> cloud hosting and short term technical resources to help you monitor your printing and reduce waste </li>
    <li> technical architects to help you design, develop and carry out a digital workflow or cloud based hosting solution </li>
    </ul>'
}),

(ansInterimTechRes:Answer {
    uuid: '68305916-d768-4209-9d75-e1aedfa78d25',
    text: 'Interim technical resources',
    hint: 'Access short term technical resources such as:
    <ul>
    <li> project managers to oversee your transition to a digital workflow solution </li>
    <li> service requirement analysts to help you determine the individual needs across all your offices </li>
    <li> security, service and technical architects to help you design, develop and carry out your digital workflow or cloud based hosting solution </li>
    </ul>'
}),

(ansManagedPrint:Answer {
    uuid: 'b63d4210-5d0b-48a0-9bef-44bd30ec0875',
    text: 'Managed print services',
    hint: 'A managed print service to help you review your current print and document workflow practices. The service can help you to consider new approaches to workflow including moving to a digital solution. You can adapt the services to meet the specific needs of your organisations and includes access to:
    <ul>
    <li> multifunctional and print production devices </li>
    <li> cloud hosting and digital workflow solutions </li>
    <li> print management software </li>
    <li> suppliers who can install and manage devices on your bahalf </li>
    <li> short term technical resources </li>
    </ul>'
}),

(ansPrintConsultancy:Answer {
    uuid: '1a497cea-e9df-4d9a-8e06-25f422decd5a',
    text: 'Print consultancy',
    hint: 'Access auditing and consultancy services to help you monitor your printing, reduce waste and move towards a digital workflow solution. Suppliers can:
    <ul>
    <li> provide advice and recomended solutions that will suit your individual needs </li>
    <li> carry out audits on your existing devices to help you determine current print volumes, identify future needs and create new print strategy </li>
    <li> provide advice on using print management software and what your options are </li>
    <li> advice you on the benefits of using digital workflow solutions </li>
    <li> help you to identify savings and cost control opportunities </li>
    <ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyMFD:Journey {uuid: 'af949053-6110-48a2-a252-ebb83fc98b14', name: 'Multi Functional Devices'}),
(jrnyMFD)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'ba950608-4cc9-43a9-b187-e61ca83b6401'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpMFDbasicPrint:AnswerGroup {name: 'ansGrpMFDbasicPrint'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpMFDbasicPrint),
    (ansGrpMFDbasicPrint)-[:HAS_ANSWER {order: 1}]->(ansMFDbasicPrint),
    (ansGrpMFDbasicPrint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpMFDprintMngmnt:AnswerGroup {name: 'ansGrpMFDprintMngmnt'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpMFDprintMngmnt),
    (ansGrpMFDprintMngmnt)-[:HAS_ANSWER {order: 2}]->(ansMFDprintMngmnt),
    (ansGrpMFDprintMngmnt)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpInterimTechRes:AnswerGroup {name: 'ansGrpInterimTechRes'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInterimTechRes),
    (ansGrpInterimTechRes)-[:HAS_ANSWER {order: 3}]->(ansInterimTechRes),
    (ansGrpInterimTechRes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
    (ansGrpInterimTechRes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),
    // (ansGrpInterimTechRes)-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
    // (ansGrpInterimTechRes)-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpManagedPrint:AnswerGroup {name: 'ansGrpManagedPrint'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpManagedPrint),
    (ansGrpManagedPrint)-[:HAS_ANSWER {order: 4}]->(ansManagedPrint),
    (ansGrpManagedPrint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpPrintConsultancy:AnswerGroup {name: 'ansGrpPrintConsultancy'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPrintConsultancy),
    (ansGrpPrintConsultancy)-[:HAS_ANSWER {order: 5}]->(ansPrintConsultancy),
    (ansGrpPrintConsultancy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6174'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});
