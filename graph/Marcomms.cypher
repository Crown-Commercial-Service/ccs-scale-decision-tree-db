Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
//Question
(qstnCommunication:Question {uuid: 'e352208c-845e-42f6-8cfc-091cc7a8de89', text: 'What type of communication do you need to review, track or improve?', type: 'LIST'}),

//Answer
(ansResearch:Answer {
    uuid: '01bf5755-bfba-437a-b864-8f338a87318c',
    text: 'Research and insights communication services',
    hint: 'Access social, economic and market research and behavioural insights services for projects of all sizes and values. Includes services that will allow you to:
    <ul>
        <li>visualise complex scenarios, make evidence based decisions and inform the actions that you might want to take next </li>
        <li>gather evidence through analysis, modelling, experiments and trials to develop knowledge in a particular field of study </li>
        <li>understand your audience, understand issues and increase public awareness</li>
        <li>carry out sampling, surveys, polling and monitor media</li>
    </ul>'
}),

(ansMedia:Answer {
    uuid: 'ed947fc9-e42a-4e37-9872-7492488f2801',
    text: 'Media Buying, planning and/or advertising',
    hint: 'Access media buying, planning and advertising services. Available services include:
    <ul>
        <li>buying advertising space across a range of media channels to promote goods and services: includes TV, search engine, social media and print advertising</li>
        <li>media planning services: helps you to decide what messages to advertise including when and how to advertise them and to what audience</li>
        <li>buying any type of outdoor advertising space including print space on bus shelters, tube stations and billboards</li>
        <li>helping you to make money by allowing organisations to hire and use fixtures you own (such as bus shelters and billboards) for their advertisements</li>
    </ul>'
}),

(ansSpecialist:Answer {
    uuid: '71dcddab-318a-4ab2-a500-0f0b730bfd00',
    text: 'Specialist marketing and communication services',
    hint: 'Access specialist marketing and communications services from agencies across the UK and overseas. You can choose an agency to work on a standalone basis or to support an integrated campaign. Services can include:
    <ul>
        <li>creative development</li>
        <li>direct marketing</li>
        <li>sponsorship</li>
        <li>public relations</li>
        <li>events marketing and communications</li>
        <li>recruitment advertising </li>
        <li>marketing and communications strategy</li>
        <li>marketing strategic advice and consultancy</li>
    </ul>'
}),

(ansCommunicationLongerTerm:Answer {
    uuid: '5ac3d8a6-dc17-4148-8ff6-33e9aa4200f4',
    text: 'Communication services and solutions for longer term or more creative strategic projects',
    hint: 'Access the services you need to support the running of your public service campaigns. Services include:
    <ul>
        <li>end to end campaign solutions such as creative, partnerships, marketing and PR</li>
        <li>media strategy and planning</li>
        <li>fulfillment services such as translation, transcreation and versioning</li>
        <li>stock imagery, footage and sound</li>
        <li>major or strategically important events</li>
    </ul>'
}),

(ansCommunicationPerformance:Answer {
    uuid: '2294120c-6245-4749-81a8-b0056a80e679',
    text: 'Communication performance audit and analysis solution',
    hint: 'Provides all the services you need to improve campaign outcomes for all campaign types. Includes marketing audits, performance reviews and strategic advice services'
}),


(ansMediaBuying:Answer {
    uuid: '7ccb67b6-8308-4611-b75c-03fc938b1d24',
    text: 'Media buying',
    hint: 'Buy advertising space across a range of media channels including:
    <ul>
        <li>TV advertising</li>
        <li>print advertising </li>
        <li>digital display advertising </li>
        <li>search engine advertising</li>
        <li>social media advertising</li>
        <li>video on demand advertising </li>
        <li>broadcast video on demand advertising</li>
    </ul>'
}),

(ansMediaPlanning:Answer {
    uuid: '1de7bf56-f1ae-480a-a074-924c7430987c',
    text: 'Media planning and buying',
    hint: 'Specifically for wider public sector clients. Provides services to help you decide what messages to advertise as well as how and when to advertise them. You can also buy advertising space across a range of media channels including:
    <ul>
        <li>TV advertising</li>
        <li>print advertising</li>
        <li>digital display advertising</li>
        <li>search engine advertising</li>
        <li>social media advertising</li>
        <li>video on demand advertising</li>
        <li>broadcast video on demand advertising</li>
    </ul>'
}),

(ansOutHomeMedia:Answer {
    uuid: 'bf53edef-9e54-41dc-9cfd-ac9d01c747c1',
    text: 'Out of home media',
    hint: 'Buy outdoor advertising space including print space on bus shelters, tube stations and billboards'
}),

(ansGenerateAdvertising:Answer {
    uuid: '55c738f6-dfab-4cd8-8f36-69093634f9ca',
    text: 'Generate advertising revenue',
    hint: 'Access services to help you generate income by allowing organisations to use fixtures you own for their advertisement needs. Fixtures can include, but is not limited to, bus shelters and billboards'
}),

(ansServiceEvaluation:Answer {
    uuid: '3929675f-d58c-47ff-9aa9-0d2d7a4a25ef',
    text: 'Service evaluation and performance',
    hint: 'Provides strategic advice services to help you audit, evaluate and improve the performance of your agencies media services. Also provides appraisal of price performance and adherence to contractual commitments'
}),


(ansFullyIntegrated:Answer {
    uuid: 'dfbab1a9-e5e4-4b05-a38d-2f3d32f40021',
    text: 'Fully integrated creative campaign solutions',
    hint: 'Access all the services you need to run your creative campaign from start to finish. Services can include:
    <ul>
        <li>communications strategy development and consultancy services</li>
        <li>concept development</li>
        <li>data and strategy management</li>
        <li>campaign delivery</li>
        <li>public relations</li>
        <li>direct marketing</li>
        <li>digital marketing and social media</li>
    </ul>'
}),

(ansMediaStrategy:Answer {
    uuid: '826e635d-b534-4f26-8234-9c1acd0b89da',
    text: 'Media strategy and campaign planning',
    hint: 'Access services to help you plan and create a media strategy for your campaign. You can use these services to plan for single or multiple campaigns. Services include:
    <ul>
        <li>media planning services: developing a media communications strategy</li>
        <li>strategic media planning: designed to meet media planning requirements of multiple campaigns that relate to an overarching strategy or theme</li>
    </ul>'
}),

(ansProduction:Answer {
    uuid: '0374fac1-8953-41df-9ba6-e61348cf6a68',
    text: 'Production, content versioning and distribution services',
    hint: 'Provides a direct relationship with an agency who will manage your production, content versioning and distribution needs. You can also access a digital asset management storage system if needed. Services include:
    <ul>
        <li>transcreation services: translating your communications into other languages while maintaining intent, style, tone and context</li>
        <li>versioning services: enables you to keep an audit trail of changes and track different versions of your content as it gets updated</li>
        <li>distributing communications to other media formats: for example, properly promoting content created by publishers for online external platforms such as Twitter, Instagram, YouTube, Linkedin</li>
    </ul>'
}),

(ansStockImagery:Answer {
    uuid: 'd43c9f11-e144-4a09-b140-7d204ccf188f',
    text: 'Stock imagery, footage and sound',
    hint: 'Appoint a provider to source and/or provide:
    <ul>
        <li>stock imagery</li>
        <li>footage</li>
        <li>sound libraries</li>
        <li>Includes services to manage the rights associated with any materials supplied to you for your campaign and across a range of formats</li>
    </ul>'
}),

(ansMajor:Answer {
    uuid: '2fc1c738-cbcb-4f52-bae2-b9777b0f7098',
    text: 'Major or strategically important events',
    hint: 'Provides all the services you need to develop and manage important domestic, international and global events from start to finish. Examples of events can include global summits, major conferences, exhibitions, state visits and ceremonies. Events can take place on a face to face, virtual or hybrid (both face to face and virtual) basis. Services include:
    <ul>
        <li>strategy </li>
        <li>development</li>
        <li>production</li>
        <li>management</li>
        <li>delivery and evaluation</li>
    </ul>'
}),


(ansContract:Answer {
    uuid: '2fac282a-a3db-4834-b91b-9cc27d0a58c8',
    text: 'Contract and pricing compliance',
    hint: 'The measurement and validation of marketing services provided under the buyers call-off contract against the delivery of: commercial and contractual commitments, benchmarking and validation of pricing commitments and rebates'
}),

(ansEffectiveness:Answer {
    uuid: 'd1227e62-76d7-4111-8623-5bd01c91294f',
    text: 'Effectiveness and outcomes',
    hint: 'Identifies opportunities and strategies for media, creative, production, social and overall campaign effectiveness. Including price and quality improvements and the measurement of outcome performance and delivery across marketing'
}),

(ansEcosystem:Answer {
    uuid: '3a591c02-f6eb-41b6-a783-d34795b86abb',
    text: 'Ecosystem strategic advice and support',
    hint: 'Strategic market advice including: brand/ campaign communication strategies, thought leadership, business transformation/change programmes, briefing advice, identifying new technologies and best practice'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure

(jrnyMarcomms:Journey {uuid: '8ba24bd6-7f7a-4f49-a94c-e2abc1381382', name: 'Marcomms'}),
(jrnyMarcomms)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'efff1ade-a291-4e8d-9c8f-78bdb4f92aea'})-[:DEFINED_BY]->(qstnService),

(ansGrpResearch:AnswerGroup {name: 'ansGrpResearch'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpResearch),
(ansGrpResearch)-[:HAS_ANSWER {order: 1}]->(ansResearch),
(ansGrpResearch)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6126'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpMedia:AnswerGroup {name: 'ansGrpMedia'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpMedia),
(ansGrpMedia)-[:HAS_ANSWER {order: 2}]->(ansMedia),
(ansGrpMedia)-[:HAS_OUTCOME]->(qiMedia:QuestionInstance:Outcome {uuid: '4955ccef-f888-49c3-a856-13180bec5fde'})-[:DEFINED_BY]->(qstnService),

    (ansGrpMediaBuying:AnswerGroup {name: 'ansGrpMediaBuying'}),
    (qiMedia)-[:HAS_ANSWER_GROUP]->(ansGrpMediaBuying),
    (ansGrpMediaBuying)-[:HAS_ANSWER {order: 1}]->(ansMediaBuying),
    (ansGrpMediaBuying)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6123'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpMediaPlanning:AnswerGroup {name: 'ansGrpMediaPlanning'}),
    (qiMedia)-[:HAS_ANSWER_GROUP]->(ansGrpMediaPlanning),
    (ansGrpMediaPlanning)-[:HAS_ANSWER {order: 2}]->(ansMediaPlanning),
    (ansGrpMediaPlanning)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6123'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpOutHomeMedia:AnswerGroup {name: 'ansGrpOutHomeMedia'}),
    (qiMedia)-[:HAS_ANSWER_GROUP]->(ansGrpOutHomeMedia),
    (ansGrpOutHomeMedia)-[:HAS_ANSWER {order: 3}]->(ansOutHomeMedia),
    (ansGrpOutHomeMedia)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6123'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpGenerateAdvertising:AnswerGroup {name: 'ansGrpGenerateAdvertising'}),
    (qiMedia)-[:HAS_ANSWER_GROUP]->(ansGrpGenerateAdvertising),
    (ansGrpGenerateAdvertising)-[:HAS_ANSWER {order: 4}]->(ansGenerateAdvertising),
    (ansGrpGenerateAdvertising)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6123'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpServiceEvaluation:AnswerGroup {name: 'ansGrpServiceEvaluation'}),
    (qiMedia)-[:HAS_ANSWER_GROUP]->(ansGrpServiceEvaluation),
    (ansGrpServiceEvaluation)-[:HAS_ANSWER {order: 5}]->(ansServiceEvaluation),
    (ansGrpServiceEvaluation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6123'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpSpecialist:AnswerGroup {name: 'ansGrpSpecialist'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSpecialist),
(ansGrpSpecialist)-[:HAS_ANSWER {order: 3}]->(ansSpecialist),
(ansGrpSpecialist)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6124'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpCommunicationLongerTerm:AnswerGroup {name: 'ansGrpCommunicationLongerTerm'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCommunicationLongerTerm),
(ansGrpCommunicationLongerTerm)-[:HAS_ANSWER {order: 4}]->(ansCommunicationLongerTerm),
(ansGrpCommunicationLongerTerm)-[:HAS_OUTCOME]->(qiCommunicationLongerTerm:QuestionInstance:Outcome {uuid: '61d21fdf-fe9e-4638-ba4f-347a9ef78db3'})-[:DEFINED_BY]->(qstnService),

    (ansGrpFullyIntegrated:AnswerGroup {name: 'ansGrpFullyIntegrated'}),
    (qiCommunicationLongerTerm)-[:HAS_ANSWER_GROUP]->(ansGrpFullyIntegrated),
    (ansGrpFullyIntegrated)-[:HAS_ANSWER {order: 1}]->(ansFullyIntegrated),
    (ansGrpFullyIntegrated)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6125'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpMediaStrategy:AnswerGroup {name: 'ansGrpMediaStrategy'}),
    (qiCommunicationLongerTerm)-[:HAS_ANSWER_GROUP]->(ansGrpMediaStrategy),
    (ansGrpMediaStrategy)-[:HAS_ANSWER {order: 2}]->(ansMediaStrategy),
    (ansGrpMediaStrategy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6125'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpProduction:AnswerGroup {name: 'ansGrpProduction'}),
    (qiCommunicationLongerTerm)-[:HAS_ANSWER_GROUP]->(ansGrpProduction),
    (ansGrpProduction)-[:HAS_ANSWER {order: 3}]->(ansProduction),
    (ansGrpProduction)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6125'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpStockImagery:AnswerGroup {name: 'ansGrpStockImagery'}),
    (qiCommunicationLongerTerm)-[:HAS_ANSWER_GROUP]->(ansGrpStockImagery),
    (ansGrpStockImagery)-[:HAS_ANSWER {order: 4}]->(ansStockImagery),
    (ansGrpStockImagery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6125'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpMajor:AnswerGroup {name: 'ansGrpMajor'}),
    (qiCommunicationLongerTerm)-[:HAS_ANSWER_GROUP]->(ansGrpMajor),
    (ansGrpMajor)-[:HAS_ANSWER {order: 5}]->(ansMajor),
    (ansGrpMajor)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6125'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpCommunicationPerformance:AnswerGroup {name: 'ansGrpCommunicationPerformance'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCommunicationPerformance),
(ansGrpCommunicationPerformance)-[:HAS_ANSWER {order: 5}]->(ansCommunicationPerformance),
(ansGrpCommunicationPerformance)-[:HAS_OUTCOME]->(qiCommunicationPerformance:QuestionInstance:Outcome {uuid: '589eda13-1bf7-472d-98a9-33f2200e85cf'})-[:DEFINED_BY]->(qstnCommunication),

    (ansGrpContract:AnswerGroup {name: 'ansGrpContract'}),
    (qiCommunicationPerformance)-[:HAS_ANSWER_GROUP]->(ansGrpContract),
    (ansGrpContract)-[:HAS_ANSWER {order: 1}]->(ansContract),
    (ansGrpContract)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6135'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpEffectiveness:AnswerGroup {name: 'ansGrpEffectiveness'}),
    (qiCommunicationPerformance)-[:HAS_ANSWER_GROUP]->(ansGrpEffectiveness),
    (ansGrpEffectiveness)-[:HAS_ANSWER {order: 2}]->(ansEffectiveness),
    (ansGrpEffectiveness)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6135'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpEcosystem:AnswerGroup {name: 'ansGrpEcosystem'}),
    (qiCommunicationPerformance)-[:HAS_ANSWER_GROUP]->(ansGrpEcosystem),
    (ansGrpEcosystem)-[:HAS_ANSWER {order: 3}]->(ansEcosystem),
    (ansGrpEcosystem)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6135'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true});
