MATCH

(qstnFirstQuestion:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE

// ANSWERS

(ansInternalAudit:Answer {
    uuid: 'b30404f3-3f3e-4a27-856f-409c877190fe',
    text: 'Core internal audit services',
    hint: 'Provides outsourced, co-sourced or one-off internal audit services including:
    <ul>
        <li>all aspects of audit and governance assurance to ensure accuracy and completeness of results</li>
        <li>advice and guidance on your internal audit</li>
        <li>benchmarking and quality review (measuring improvements and quality from an agreed starting point)</li>
        <li>support with creating an internal audit strategy and method</li>
        <li>risk management services</li>
    </ul>'
}),

(ansSpecialistInternalAudit:Answer {
    uuid: '733cb224-27a7-440e-8cac-e87483641209',
    text: 'Specialist internal audit services',
    hint: 'Access auditors with specialist knowledge and/or qualifications to provide specialist internal audit services including:
    <ul>
        <li>commercial audits</li>
        <li>finance audits such as treasury management</li>
        <li>human resource audits</li>
        <li>counter fraud and investigation which will allow auditors to see if fraud has taken place and help to improve prevention methods</li>
        <li>digital data and technology including cyber security, artificial intelligence and machine learning audits</li>
        <li>grant audits to ensure funds are being used as agreed</li>
    </ul>'
}),

(ansExternalAudit:Answer {
    uuid: '8e73df3a-1daa-40cc-8058-a1702391ec25',
    text: 'External audit',
    hint: 'Provides all services relating to a range of external audits including:
    <ul>
        <li>inspecting documents and re-performing calculations</li>
        <li>reviewing and reporting on processes, controls and systems</li>
        <li>statutory or official grant audits and certification requested by grant providers</li>
        <li>NHS audits including external assurance on quality reports to ensure accuracy and completeness</li>
        <li>external audits including financial statements</li>
    </ul>'
}),

(ansProactiveCounterFraud:Answer {
    uuid: '72abf41c-361d-4814-be0a-f1adae37d8e1',
    text: 'Proactive counter-fraud services',
    hint: 'Provides services to help you prevent fraud, bribery and corruption within your organisation. Including (but not limited to):
    <ul>
        <li>advice on and assessment of fraud, bribery and corruption in your organisation</li>
        <li>awareness training including changes to legislation, policies and regulations</li>
        <li>advice on current policies including: fraud, bribery and corruption risk plans, prevention and detection strategies, policies for accepting gifts and hospitality and procedures for reporting conflicts of interest and/or suspected fraud</li>
        <li>assessment of current policies including: fraud, bribery and corruption risk plans, prevention and detection strategies, policies for accepting gifts and hospitality and procedures for reporting conflicts of interest and/or suspected fraud</li>
        <li>support to improve fraud, bribery and corruption risk management and identifying fraud risks</li>
    </ul>'
}),

(ansReactiveInvestigation:Answer {
    uuid: '31e9919e-6916-4e95-a223-2d14575f4ac3',
    text: 'Reactive investigation services',
    hint: 'Provides services to help you carry out investigations into fraud, bribery and corruption. Includes (but not limited to):
    <ul>
        <li>forensic extraction including the review of email data, social media postings and data held in audio and video formats</li>
        <li>financial and non-financial irregularity investigations</li>
        <li>investigating allegations of suspected fraud, bribery or corruption made through established reporting routes such as digital analytics</li>
        <li>support with carrying out criminal investigations</li>
        <li>upskilling of new technology and techniques of fraud detection and prevention</li>
    </ul>'
}),

(ansIndependentAssurance:Answer {
    uuid: 'ccf5b484-cf6a-42a7-9080-c0154bbb640c',
    text: 'Other independent assurance services',
    hint: 'Provides independent assurance services to verify the quality and reliability of your organisational, operational and programme performance. Includes (but is not limited to):
    <ul>
        <li>advice on and assurance over non-financial information including strategy, risk and corporate governance</li>
        <li>advice on and assurance over Key Performance Indicators (KPIs) including environmental, sustainability and workforce reporting</li>
        <li>services to track compliance and risk management</li>
        <li>regulatory reporting services to show compliance with necessary regulations</li>
        <li>grant funding assurance reviews including programme reviews and impact assessments</li>
        <li>workforce audit services including temporary, fixed term or permanent staffing (clinical and non-clinical)</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyEmployeeBenefits:Journey {uuid: '986b6cb8-2ff0-4eac-8d7f-d08cca647099', name: 'Audit and assurance'}),
(jrnyEmployeeBenefits)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '12926d93-5b2c-415b-af75-c8e6f1533491'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpInternalAudit:AnswerGroup {name: 'ansGrpInternalAudit'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInternalAudit),
    (ansGrpInternalAudit)-[:HAS_ANSWER {order: 1}]->(ansInternalAudit),
    (ansGrpInternalAudit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpSpecialistInternalAudit:AnswerGroup {name: 'ansGrpSpecialistInternalAudit'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSpecialistInternalAudit),
    (ansGrpSpecialistInternalAudit)-[:HAS_ANSWER {order: 2}]->(ansSpecialistInternalAudit),
    (ansGrpSpecialistInternalAudit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpExternalAudit:AnswerGroup {name: 'ansGrpExternalAudit'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpExternalAudit),
    (ansGrpExternalAudit)-[:HAS_ANSWER {order: 3}]->(ansExternalAudit),
    (ansGrpExternalAudit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpProactiveCounterFraud:AnswerGroup {name: 'ansGrpProactiveCounterFraud'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpProactiveCounterFraud),
    (ansGrpProactiveCounterFraud)-[:HAS_ANSWER {order: 4}]->(ansProactiveCounterFraud),
    (ansGrpProactiveCounterFraud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpReactiveInvestigation:AnswerGroup {name: 'ansGrpReactiveInvestigation'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpReactiveInvestigation),
    (ansGrpReactiveInvestigation)-[:HAS_ANSWER {order: 5}]->(ansReactiveInvestigation),
    (ansGrpReactiveInvestigation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpIndependentAssurance:AnswerGroup {name: 'ansGrpIndependentAssurance'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpIndependentAssurance),
    (ansGrpIndependentAssurance)-[:HAS_ANSWER {order: 6}]->(ansIndependentAssurance),
    (ansGrpIndependentAssurance)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6188'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});
