MATCH
(qstnFirstQ:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qiTechFirstQuestion:QuestionInstance {uuid: '5cfba8a0-902c-4ca8-a396-ed791522c9db'})

CREATE
(ansSoftwareSecurity:Answer {
    uuid: '4c065259-b98e-4c7d-8095-bba417e7f952',
    text: 'Software security',
    hint: 'Acess any type of software that secures and protects a computer, network or any computing-enabled device'
}),

(ansTotalSecurity:Answer {
    uuid: 'e2620d87-03f3-4454-9f49-c83c490327cc',
    text: 'Total security services',
    hint: 'Provides a full end to end security service. Access all the services you need to meet all your physical, technical and security support needs including:
    <ul>
        <li>contract management: the handling and carrying out of a security contracts obligations </li>
        <li>static and mobile patrolling and guarding services including the manning of receptions</li>
        <li>the management of visitors and security passes as well as the monitoring of video surveillance and alarm systems</li>
        <li>services to support the design, supply, installation and maintenance of technical and physical security systems (for example, alarms, perimeter fencing and locks)</li>
        <li>consultancy services</li>
        <li>risk assessments to help you identify your security risks</li>
    </ul>'
}),

(ansGuardingServices:Answer {
    uuid: '59da4adc-74ab-43aa-8c23-0dd0ab069c2f',
    text: 'Guarding services',
    hint: 'Access guarding services across the UK. Services available include:
    <ul>
        <li>static and mobile patrolling including the manning of receptions </li>
        <li>monitoring of video surveillance and alarm systems </li>
        <li>management of visitors and security and access passes</li>
        <li>emergency response services</li>
        <li>security contract management including the handling and carrying out of a contracts obligations</li>
    </ul>'
}),

(ansPhysicalTechnicalSecurity:Answer {
    uuid: '07491d7c-32b3-4aca-90ec-cb9edb07e8b9',
    text: 'Physical and technical security services',
    hint: 'Access services for the design, supply, installation and maintenance of security systems. Includes:
    <ul>
        <li>services relating to intruder detection systems, alarm signalling, security lighting, CCTV systems, network and digital video recorders</li>
        <li>automatic access control systems (AACS) which are digital networks that electronically control who can enter or leave a specific area</li>
        <li>electronic locking systems such as perimeter fences and gates, automatic barriers and gates and rising bollards that lock electronically </li>
        <li>contract management: the handling and carrying out of a security contracts obligations </li>
    </ul>'
}),

(ansAdditional:Answer {
    uuid: 'e8e3224c-6094-4b16-87d4-d5394c108109',
    text: 'Additional security services',
    hint: 'Access other security services including:
    <ul>
        <li>security assessments: suppliers will assess your security needs and produce a report which will include appropriate and cost effect improvements</li>
        <li>consultancy and feasibility studies including security awareness training</li>
        <li>contract management: the handling and carrying out of a security contracts obligations</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyPTS:Journey {uuid: '6e3e590d-85ca-4ef1-bce7-e60222872462', name: 'Physical, technical and support services'}),
(jrnyPTS)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '94d3bf01-41f4-431b-bcdb-1e8443f205be'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpSoftwareSecurity:AnswerGroup {name: 'ansGrpSoftwareSecurity'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSoftwareSecurity),
    (ansGrpSoftwareSecurity)-[:HAS_ANSWER {order: 1}]->(ansSoftwareSecurity),
    (ansGrpSoftwareSecurity)-[:HAS_OUTCOME]->(qiTechFirstQuestion), // SWITCH TREES

    (ansGrpTotalSecurity:AnswerGroup {name: 'ansGrpTotalSecurity'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTotalSecurity),
    (ansGrpTotalSecurity)-[:HAS_ANSWER {order: 2}]->(ansTotalSecurity),
    (ansGrpTotalSecurity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6257'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpGuardingServices:AnswerGroup {name: 'ansGrpGuardingServices'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpGuardingServices),
    (ansGrpGuardingServices)-[:HAS_ANSWER {order: 3}]->(ansGuardingServices),
    (ansGrpGuardingServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6257'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpPhysicalTechnicalSecurity:AnswerGroup {name: 'ansGrpPhysicalTechnicalSecurity'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPhysicalTechnicalSecurity),
    (ansGrpPhysicalTechnicalSecurity)-[:HAS_ANSWER {order: 4}]->(ansPhysicalTechnicalSecurity),
    (ansGrpPhysicalTechnicalSecurity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6257'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpAdditional:AnswerGroup {name: 'ansGrpAdditional'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpAdditional),
    (ansGrpAdditional)-[:HAS_ANSWER {order: 5}]->(ansAdditional),
    (ansGrpAdditional)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6257'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});