MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
(qstnSolution:Question {uuid: '92ba5f7c-30b2-4a5f-a5d4-e5e7c17b06a3', text: 'What solution do you need?', type: 'LIST'}),

(ansCyberSecurityServices:Answer {
    uuid: 'f8a9bd34-90d8-440e-9bb1-ffd1c058977e',
    text: 'Cyber security services',
    hint: 'This will give you a range of cyber security services to help improve organisational cyber resilience and security including;
    <ul>
        <li>cyber security service</li>
        <li>National Cyber Security Centre (NSCS ) assured services</li>
        <li>consultancy and advice</li>
        <li>penetration testing</li>
        <li>incident response</li>
        <li>data destruction</li>
        <li>managed security services</li>
    </ul>'
}),

(ansStrategy:Answer {
    uuid: 'beba5413-98f2-4bbf-b25c-0a2a0b0eff46',
    text: 'Strategy, design and operational technology services',
    hint: 'These agreements will give you access to a range of technology services, including:
    <ul>
        <li>strategy and service design</li>
        <li>transition of services</li>
        <li>operational management of IT services</li>
        <li>large projects, including top secret classification and a range of other technology services</li>
        <li>end user device support</li>
        <li>network support</li>
        <li>asset disposal and application maintenance</li>
        <li>IT infrastructure support (for example, server and storage hardware)</li>
    </ul>'
}),

(ansCloud:Answer {
    uuid: '7acfc508-4d3d-4145-8153-b8a822071c6f',
    text: 'Cloud-based back office systems or upgrade legacy IT systems',
    hint: 'Access complex technology projects, such as deploying new cloud-based back office systems or upgrading legacy IT infrastructure. Expert service providers can offer a range of comprehensive support, including:
    <ul>
        <li>enterprise architecture</li>
        <li>business cases support</li>
        <li>configuring, testing, implementing and integrating new systems with existing infrastructure</li>
        <li>cleansing and migrating data from old to new platforms</li>
        <li>change management expertise</li>
        <li>training and onboarding programs for employees</li>
        <li>ongoing application management and support services</li>
    </ul>'
}),

(ansTechnologyStrategy:Answer {uuid: '373654f0-46c1-412d-b6a4-27dde9f6550d', text: 'Technology strategy and service design', hint: 'Create, develop, or enhance technology strategy, as well as design or review IT services'}),
(ansTransition:Answer {uuid: 'dd0827eb-1e33-4617-b41e-460e61a52a81', text: 'Transition and transformation', hint: 'Implement strategy, services, move location or change supplier'}),
(ansOperational:Answer {uuid: '7749cbf1-3311-4fb9-8d1f-6d60c21a05de', text: 'Operational services', hint: 'Access services, processes and tools needed to manage your technology estate'}),
(ansMajor:Answer {uuid: '8bf3a386-196d-4689-80c8-7a7d978471b7', text: 'Major services transformation programmes', hint: 'Access suppliers that can help you with large, complex, or high-risk projects'}),
(ansService:Answer {uuid: '17871864-9274-4359-baad-674de0204fa9', text: 'Service integration and management', hint: 'Access suppliers that can unify IT services from multiple sources and manage complex supply chains, enabling a coordinated, streamlined technology approach'}),

(ansEnd:Answer {uuid: '32edb194-8050-4ad3-9d3e-1ab4cc2ccfaf', text: 'End user services', hint: 'Access IT support for end users, including training, help desk services, device provisioning and support, as well as IT equipment dispol'}),
(ansOperationalManagement:Answer {uuid: 'c9171d7b-6f5b-4c0f-bc71-c78fce7d28a7', text: 'Operational management', hint: 'Operational management services to support a technology estate, including ongoing cyber security management'}),
(ansTechnicalManagement:Answer {uuid: '1b2739ec-7219-4145-952d-4a5d4f71ae3a', text: 'Technical management', hint: 'Services to monitor, support, and manage hardware and software across the technology estate, including comprehensive asset management'}),
(ansApplication:Answer {uuid: 'b795e2e5-3513-4dae-881d-5c58c30ad858', text: 'Application and data management', hint: 'Access solutions such as, new and existing application development, as well as ongoing support and maintenance. Also access services, processes and tools to support, maintain and monitor data and databases'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyTSaISS:Journey {uuid: '8c81eb3d-96e9-4726-afc9-06b3c1c4dcbb', name: 'Tech Strategy and Info Security Services'}),
(jrnyTSaISS)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '3d21ffa3-3fac-461e-bfca-a4ab8f886fcf'})-[:DEFINED_BY]->(qstnSolution),

(ansGrpCyberSecurityServices:AnswerGroup {name: 'ansGrpCyberSecurityServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCyberSecurityServices),
(ansGrpCyberSecurityServices)-[:HAS_ANSWER {order: 1}]->(ansCyberSecurityServices),
(ansGrpCyberSecurityServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3764.3'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpStrategy:AnswerGroup {name: 'ansGrpStrategy'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpStrategy),
(ansGrpStrategy)-[:HAS_ANSWER {order: 2}]->(ansStrategy),
(ansGrpStrategy)-[:HAS_OUTCOME]->(qiStrategy:QuestionInstance:Outcome {uuid: 'a4e12390-ad59-4729-9649-0685a8850bdc'})-[:DEFINED_BY]->(qstnService),

    (ansGrpTechnologyStrategy:AnswerGroup {name: 'ansGrpTechnologyStrategy'}),
    (qiStrategy)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyStrategy),
    (ansGrpTechnologyStrategy)-[:HAS_ANSWER {order: 1}]->(ansTechnologyStrategy),
    (ansGrpTechnologyStrategy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpTransition:AnswerGroup {name: 'ansGrpTransition'}),
    (qiStrategy)-[:HAS_ANSWER_GROUP]->(ansGrpTransition),
    (ansGrpTransition)-[:HAS_ANSWER {order: 2}]->(ansTransition),
    (ansGrpTransition)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpOperational:AnswerGroup {name: 'ansGrpOperational'}),
    (qiStrategy)-[:HAS_ANSWER_GROUP]->(ansGrpOperational),
    (ansGrpOperational)-[:HAS_ANSWER {order: 3}]->(ansOperational),
    (ansGrpOperational)-[:HAS_OUTCOME]->(qiOperational:QuestionInstance:Outcome {uuid: '03eba59c-4265-455f-862c-f246b8773556'})-[:DEFINED_BY]->(qstnService),

        (ansGrpEnd:AnswerGroup {name: 'ansGrpEnd'}),
        (qiOperational)-[:HAS_ANSWER_GROUP]->(ansGrpEnd),
        (ansGrpEnd)-[:HAS_ANSWER {order: 1}]->(ansEnd),
        (ansGrpEnd)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
        (ansGrpEnd)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '3a', url: '', type: 'CAT', scale: true}),

        (ansGrpOperationalManagement:AnswerGroup {name: 'ansGrpOperationalManagement'}),
        (qiOperational)-[:HAS_ANSWER_GROUP]->(ansGrpOperationalManagement),
        (ansGrpOperationalManagement)-[:HAS_ANSWER {order: 2}]->(ansOperationalManagement),
        (ansGrpOperationalManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
        (ansGrpOperationalManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '3b', url: '', type: 'CAT', scale: true}),

        (ansGrpTechnicalManagement:AnswerGroup {name: 'ansGrpTechnicalManagement'}),
        (qiOperational)-[:HAS_ANSWER_GROUP]->(ansGrpTechnicalManagement),
        (ansGrpTechnicalManagement)-[:HAS_ANSWER {order: 3}]->(ansTechnicalManagement),
        (ansGrpTechnicalManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
        (ansGrpTechnicalManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '3c', url: '', type: 'CAT', scale: true}),

        (ansGrpApplication:AnswerGroup {name: 'ansGrpApplication'}),
        (qiOperational)-[:HAS_ANSWER_GROUP]->(ansGrpApplication),
        (ansGrpApplication)-[:HAS_ANSWER {order: 4}]->(ansApplication),
        (ansGrpApplication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
        (ansGrpApplication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '3d', url: '', type: 'CAT', scale: true}),

    (ansGrpMajor:AnswerGroup {name: 'ansGrpMajor'}),
    (qiStrategy)-[:HAS_ANSWER_GROUP]->(ansGrpMajor),
    (ansGrpMajor)-[:HAS_ANSWER {order: 4}]->(ansMajor),
    (ansGrpMajor)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpService:AnswerGroup {name: 'ansGrpService'}),
    (qiStrategy)-[:HAS_ANSWER_GROUP]->(ansGrpService),
    (ansGrpService)-[:HAS_ANSWER {order: 5}]->(ansService),
    (ansGrpService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6100'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpCloud:AnswerGroup {name: 'ansGrpCloud'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCloud),
(ansGrpCloud)-[:HAS_ANSWER {order: 3}]->(ansCloud),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6193'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});