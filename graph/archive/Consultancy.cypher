Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
//Answer
(ansBusiness:Answer {
    uuid: 'f32b27ac-0aec-4324-9878-12c47b8a9ddd',
    text: 'Business strategy, structure, management, operations',
    hint: 'Access advice relating to the strategy, structure, management and / or operations of an organisation. This can include identifying options, providing recommendations and implementing improvements. Some of the services you can get advice on include:
    <ul>
        <li>business case development</li>
        <li>development and/or review of policy</li>
        <li>digital, technology and cyber</li>
        <li>risk, compliance and/or opportunity management</li>
        <li>value for money reviews</li>
    </ul>'
}),

(ansOrganisational:Answer {
    uuid: '0d5e6b1f-9192-468a-8551-c977610c0ccd',
    text: 'Organisational strategy',
    hint: 'Access advice relating to corporate strategies or government policy.  This can include identifying options, providing recommendations and implementing improvements. Some of the services you can get advice on include: 
    <ul>
        <li>business structure</li>
        <li>business process re-engineering</li>
        <li>change management </li>
        <li>policy</li>
        <li>regulatory advice</li>
        <li>social value</li>
    </ul>'
}),

(ansTransformation:Answer {
    uuid: '381afda6-fb89-4f96-8d6f-3dd661a18df0',
    text: 'Transformation',
    hint: 'Provides advice for complex programmes or portfolios of work which may be multi-disciplinary and/or transformational. Some of the services you can get advice on include:
    <ul>
        <li>complex programmes and change management</li>
        <li>finance</li>
        <li>Human Resources (HR)</li>
        <li>performance transformation (making and carrying out fundamental changes in how a business or organisation runs)</li>
        <li>procurement and/or supply chain</li>
        <li>strategy and/or policy</li>
    </ul>'
}),

(ansFinancial:Answer {
    uuid: 'e658e255-314b-4a3d-b672-5433e23ed87f',
    text: 'Financial',
    hint: 'Provides advice in areas related to strategic and operational finance. This can include identifying options, providing recommendations and implementing improvements or changes. Some of the services you can get advice on include:
    <ul>
        <li>cash management</li>
        <li>capital fundraising </li>
        <li>corporate restructuring and flotation</li>
        <li>cost benefit reviews, studies, analysis and evaluation</li>
        <li>debt restructuring, management and insolvency</li>
        <li>developing and assessing project proposals</li>
        <li>pension services</li>
        <li>payment structure advice and risk</li>
        <li>risk management </li>
    </ul>'
}),

(ansHR:Answer {
    uuid: 'e03b9abc-16d1-4048-8600-93b7f8b2a683',
    text: 'Human Resources (HR)',
    hint: 'Provides advice relating to HR. This can include identifying options, providing recommendations and carrying out improvements or changes. Some of the areas you can get advice on include:
    <ul>
        <li>dispute management</li>
        <li>diversity and inclusion</li>
        <li>employee relations</li>
        <li>HR policy</li>
        <li>training and development</li>
        <li>performance management </li>
        <li>cultural transformation (culture changes within the organisation)</li>
    </ul>'
}),

(ansProcurement:Answer {
    uuid: 'a923bde0-d12a-470b-9821-71279da02062',
    text: 'Procurement and supply chain',
    hint: 'Access advice relating to procurement and supply chain. This can include identifying options, providing recommendations and implementing improvements. Some of the services you can get advice on include: 
    <ul>
        <li>commercial review</li>
        <li>contract management </li>
        <li>cost reduction</li>
        <li>digitalisation</li>
        <li>outsourcing and insourcing</li>
        <li>tender development and analysis</li>
        <li>supplier management</li>
    </ul>'
}),

(ansHealth:Answer {
    uuid: 'e43b86ca-e923-4c38-9923-2a3e2a556c93',
    text: 'Health, social care and/or community',
    hint: 'Access specialist advice in areas related to health, social care and community. This can include identifying options, providing recommendations and implementing improvements. Some of the services you can get advice on include: 
    <ul>
        <li>charity and third sector improvement reviews</li>
        <li>capability development</li>
        <li>clinical evaluations</li>
        <li>community services</li>
        <li>housing</li>
        <li>mental healthcare</li>
        <li>safeguarding</li>
        <li>policing and security</li>
        <li>healthcare services</li>
    </ul>'
}),

(ansInfrastructure:Answer {
    uuid: '27baa456-e688-4347-a606-4002ea1cdb30',
    text: 'Infrastructure including transport ',
    hint: 'Access specialist advice in areas relating to infrastructure and/or transport. This can include identifying options and providing recommendations. Some of the areas you can get advice on include:
    <ul>
        <li>aviation and rail</li>
        <li>highways</li>
        <li>public transport including buses and parking</li>
        <li>ports and shipping</li>
        <li>smart infrastructure</li>
        <li>towns and cities</li>
    </ul>'
}),

(ansEnvironmental:Answer {
    uuid: 'ec4f8fc4-013b-4e74-a40f-0b42aed48361',
    text: 'Environmental and sustainability',
    hint: 'Access strategic advice in areas relating to environmental and sustainability. Includes identifying options, providing recommendations as well as carrying out changes and improvements. Some of the services you can get advice on include:
    <ul>
        <li>air quality</li>
        <li>contaminated land </li>
        <li>monitoring environmental indicators</li>
        <li>climate change adaption and/or mitigation</li>
        <li>policy development and/or implementation</li>
        <li>regulatory compliance</li>
        <li>risk management</li>
        <li>sustainability</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure

(jrnyConsultancy:Journey {uuid: 'efaa35b8-ccf4-41b8-8431-bdc272c744c3', name: 'Consultancy'}),
(jrnyConsultancy)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'a1b07551-8e46-41d5-a32a-e995ebb06e35'})-[:DEFINED_BY]->(qstnService),

(ansGrpBusiness:AnswerGroup {name: 'ansGrpBusiness'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBusiness),
(ansGrpBusiness)-[:HAS_ANSWER {order: 1}]->(ansBusiness),
(ansGrpBusiness)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpOrganisational:AnswerGroup {name: 'ansGrpOrganisational'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOrganisational),
(ansGrpOrganisational)-[:HAS_ANSWER {order: 2}]->(ansOrganisational),
(ansGrpOrganisational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpTransformation:AnswerGroup {name: 'ansGrpTransformation'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTransformation),
(ansGrpTransformation)-[:HAS_ANSWER {order: 3}]->(ansTransformation),
(ansGrpTransformation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpFinancial:AnswerGroup {name: 'ansGrpFinancial'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFinancial),
(ansGrpFinancial)-[:HAS_ANSWER {order: 4}]->(ansFinancial),
(ansGrpFinancial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

(ansGrpHR:AnswerGroup {name: 'ansGrpHR'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHR),
(ansGrpHR)-[:HAS_ANSWER {order: 5}]->(ansHR),
(ansGrpHR)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpProcurement:AnswerGroup {name: 'ansGrpProcurement'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpProcurement),
(ansGrpProcurement)-[:HAS_ANSWER {order: 6}]->(ansProcurement),
(ansGrpProcurement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

(ansGrpHealth:AnswerGroup {name: 'ansGrpHealth'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHealth),
(ansGrpHealth)-[:HAS_ANSWER {order: 7}]->(ansHealth),
(ansGrpHealth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

(ansGrpInfrastructure:AnswerGroup {name: 'ansGrpInfrastructure'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInfrastructure),
(ansGrpInfrastructure)-[:HAS_ANSWER {order: 8}]->(ansInfrastructure),
(ansGrpInfrastructure)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

(ansGrpEnvironmental:AnswerGroup {name: 'ansGrpEnvironmental'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnvironmental),
(ansGrpEnvironmental)-[:HAS_ANSWER {order: 9}]->(ansEnvironmental),
(ansGrpEnvironmental)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'})-[:HAS_LOT]->(:Lot {number: '9', url: '', type: 'CAT', scale: true});
