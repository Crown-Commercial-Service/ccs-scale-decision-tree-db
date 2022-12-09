MATCH
(qstnFirstQuestion:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE

// ANSWERS

// Answers: level 1
(ansContactCentreServices:Answer {
    uuid: '1fa28550-9096-4599-b8cb-c3e9de1f81f0',
    text: 'Contact centre services',
    hint: 'Provides the agents (workers) and the technology needed to run a contact centre. Access the following services and solutions:
    <ul>
        <li>home working: provides non-site based agents</li>
        <li>in-sourced: suppliers provide agents to your choice of location</li>
        <li>out-sourced: agents are supplied to the supplier\'s operational location</li>
        <li>software and hardware services such as analytic tools, home working technology and IT hosting</li>
        <li>new ways for customers to access contact centre services such as, web chat, chat bots and social media</li>
        <li>omni channel technology services such as in bound and out bound calls, email and web chat</li>
        <li>transformational consultancy which provides continuous improvement to your contact centre operations</li>
        <li>consultancy support to review customer interaction strategies, cost optimisation and resource and performance management</li>
    </ul>'
}),

(ansHumanResources:Answer {
    uuid: '03a37c21-3c8d-4716-9bf6-7820ebf78f80',
    text: 'Human Resources (HR)',
    hint: 'Access outsourcing support for common HR services including:
    <ul>
        <li>people strategy and planning</li>
        <li>managing organisations and positions</li>
        <li>building, managing and rewarding the workforce</li>
    </ul>'
}),

(ansFinancialAccounting:Answer {
    uuid: '9fc8500b-a521-432a-abb6-bd08af1fa309',
    text: 'Financial accounting',
    hint: 'Access outsourcing support for financial accounting services including:
    <ul>
        <li>cash management</li>
        <li>grants administration</li>
        <li>managing expenses and inventory</li>
        <li>project accounting</li>
        <li>tax services</li>
        <li>finance and support services</li>
    </ul>'
}),


(ansPayroll:Answer {
    uuid: '73a72cc2-4e66-4cd7-891e-9e3ae86e565d',
    text: 'Payroll',
    hint: 'Access outsourcing support for payroll services including:
    <ul>
        <li>general payroll and payroll support services</li>
        <li>expenses</li>
        <li>managing allowances and supplements</li>
        <li>bonuses and pay awards</li>
        <li>pensions</li>
        <li>end of tax year services</li>
    </ul>'
}),

(ansSourceToPay:Answer {
    uuid: 'c97a10f8-6382-4224-9303-e00d3ecf794e',
    text: 'Source to Pay',
    hint: 'Provides specialist support for outsourcing Source to Pay services. Source to pay is a process which includes finding, negotiating and contracting with suppliers of goods and services. Access outsourcing support for the following services:
    <ul>
        <li>set up and maintenance of vendor data, procurement catalogues and categories</li>
        <li>creating and approving purchase requisitions and purchase orders and providing documentation to suppliers</li>
        <li>receiving and processing invoices and credit notes and managing disputes</li>
        <li>making payments and ensuring accruals and prepayments are accounted for</li>
        <li>recovery of payments made in error</li>
        <li>administration of government procurement card scheme</li>
    </ul>'
}),


(ansCommonBackOffice:Answer {
    uuid: 'd15916f2-901a-48e4-a774-09f80234cadc',
    text: 'Common back office functions',
    hint: 'Access outsourcing support for all common back office functions under one contract. Includes:
    <ul>
        <li>HR</li>
        <li>financial accounting</li>
        <li>payroll</li>
        <li>source to pay</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyOutsourcedContactCenter:Journey {uuid: 'cf9fb51f-b9ea-4aaa-a09b-480a7729fd93', name: 'Outsourced Contact Center & Business Services'}),
(jrnyOutsourcedContactCenter)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'ea4c6630-6184-4e6d-b137-906fe317803a'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpContactCentreServices:AnswerGroup {name: 'ansGrpContactCentreServices'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpContactCentreServices),
    (ansGrpContactCentreServices)-[:HAS_ANSWER {order: 1}]->(ansContactCentreServices),
    (ansGrpContactCentreServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpHumanResources:AnswerGroup {name: 'ansGrpHumanResources'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHumanResources),
    (ansGrpHumanResources)-[:HAS_ANSWER {order: 2}]->(ansHumanResources),
    (ansGrpHumanResources)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpFinancialAccounting:AnswerGroup {name: 'ansGrpFinancialAccounting'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFinancialAccounting),
    (ansGrpFinancialAccounting)-[:HAS_ANSWER {order: 3}]->(ansFinancialAccounting),
    (ansGrpFinancialAccounting)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpPayroll:AnswerGroup {name: 'ansGrpPayroll'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPayroll),
    (ansGrpPayroll)-[:HAS_ANSWER {order: 4}]->(ansPayroll),
    (ansGrpPayroll)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpSourceToPay:AnswerGroup {name: 'ansGrpSourceToPay'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSourceToPay),
    (ansGrpSourceToPay)-[:HAS_ANSWER {order: 5}]->(ansSourceToPay),
    (ansGrpSourceToPay)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpCommonBackOffice:AnswerGroup {name: 'ansGrpCommonBackOffice'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCommonBackOffice),
    (ansGrpCommonBackOffice)-[:HAS_ANSWER {order: 6}]->(ansCommonBackOffice),
    (ansGrpCommonBackOffice)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true});