Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qiEnergyFirstQuestion:QuestionInstance {uuid: '0a8b5f65-a531-4110-a49a-2ff2d48a94f1'})

CREATE
(qstnEfficient:Question {uuid: '93695838-8426-4409-8f82-7176f9aa2303', text: 'Do you want to make changes to your buildings to make your organisation more energy efficient?', type: 'LIST'}),

(ansYes:Answer {uuid: 'e57ff969-f60e-4662-be05-f9d40be206b3', text: 'Yes', hint: 'I want to access the supply of electricity, gas and sustainable transport technology services'}),
(ansNo:Answer {uuid: '1a45cde1-549b-44f7-9400-ecebd85cf870', text: 'No', hint: 'I want to make my buildings more energy efficient and reduce my carbon emissions by changing the type of energy I use. For example, using renewable energy instead of natural gas'}),

(ansDesign:Answer {
    uuid: '2cb45c63-2dd3-4af6-8a11-ce304cb879e0',
    text: 'Design and feasibility study',
    hint: 'Access the technical consultancy support you need to provide decarbonisation measures. Includes:
    <ul>
        <li>consultancy services</li>
        <li>survey reports on carbon reduction projects</li>
        <li>services to design solar farms</li>
    </ul>'
}),

(ansInstallation:Answer {
    uuid: '99ca209c-cab0-4519-a1c2-89f51ee4b9e3',
    text: 'Installation services',
    hint: 'Access services to support the installation and construction of demand management and/or renewable products such as:
    <ul>
        <li>heat pumps (provides heat to a building by transferring thermal energy from outside)</li>
        <li>wind generation</li>
        <li>L.E.D lighting </li>
        <li>solar panels </li>
    </ul>'
}),

(ansServicing:Answer {
    uuid: 'c6fc4b75-4ab2-4db3-9c57-8b08cb10d7de',
    text: 'Servicing and Maintenance',
    hint: 'Access services to maintain the efficiency of your current demand management or renewable generation asset to ensure it is providing the quality required within the specification. Energy assets include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
    </ul> <br> Renewable generation assets include:
    <ul>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansWiderEnergy:Answer {
    uuid: '320f6c4f-dd10-44ff-975a-ad9bc3f54e85',
    text: 'Wider energy or renewable generation products',
    hint: 'Buy wider energy or renewable generation products which will be installed at a later date. Products include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansPolicy:Answer {
    uuid: 'c59f7efc-f816-4772-815f-7d9866930159',
    text: 'Policy services',
    hint: 'Provides support in:
    <ul>
        <li>providing new government policy and legislation on decarbonisation </li>
        <li>carrying out existing government policy</li>
    </ul>'
}),

(ansDecommissioning:Answer {
    uuid: '09cb9c45-2d4b-4a8a-b5a5-5315aa4418ca',
    text: 'Decommissioning services',
    hint: 'Provides services to remove and dispose of any wider energy or renewable generation products in line with appropriate environmental standards. Wider energy or renewable generation products include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansEnd:Answer {
    uuid: 'ecc34f29-ad1f-4d35-9b5e-5a513c8fb6fa',
    text: 'End to end service',
    hint: 'Provides you with all the products and services you need to design, put in place and maintain your energy project from start to finish. Services include:
    <ul>
        <li>design and feasibility study</li>
        <li>installation services</li>
        <li>servicing and maintenance</li>
        <li>buying energy or renewable products (such as wind turbines)</li>
        <li>decommissioning services</li>
        <li>policy delivery</li>
    </ul>'
}),

(ansEandG:Answer {uuid: '808db471-f5d6-4e26-9718-241c2ddaf32c', text: 'Supply of electricity and gas', hint: 'Access the supply of electricity and gas to the public sector and their associated bodies and agencies. This includes billing, administration, customer service and ancillary services'}),

(ansEV:Answer {
    uuid: '14fcb695-909b-44b5-9af1-ff8dcc46815e',
    text: 'Sustainable transport technologies',
    hint: 'Access transport technology to help you move to sustainable transport and monitor the environmental impacts of your fleet. Includes:
    <ul>
        <li>electric vehicle charging equipment</li>
        <li>sustainable technologies including clean air zone and carbon net zero initiatives</li>
        <li>intelligent transport systems (such as, geographic, asset and environmental management and monitoring systems)</li>
    </ul>'
}),

(Agreement_RM6313:Agreement:Outcome {number: 'RM6313'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyDPS_DM:Journey {uuid: '15d8d201-342a-4eae-abfb-021a4e9b2113', name: 'DPS_Demand_Management'}),
(jrnyDPS_DM)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '60b546b9-8160-4cea-b97f-69af5ee8d86a'})-[:DEFINED_BY]->(qstnEfficient),

(ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
(ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
(ansGrpYes)-[:HAS_OUTCOME]->(qiYes:QuestionInstance:Outcome {uuid: 'bd7136ba-9f65-46c8-97bd-62991c82ef5f'})-[:DEFINED_BY]->(qstnService),

    (ansGrpDesign:AnswerGroup {name: 'ansGrpDesign'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpDesign),
    (ansGrpDesign)-[:HAS_ANSWER {order: 1}]->(ansDesign),
    (ansGrpDesign)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpInstallation:AnswerGroup {name: 'ansGrpInstallation'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpInstallation),
    (ansGrpInstallation)-[:HAS_ANSWER {order: 2}]->(ansInstallation),
    (ansGrpInstallation)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpServicing:AnswerGroup {name: 'ansGrpServicing'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpServicing),
    (ansGrpServicing)-[:HAS_ANSWER {order: 3}]->(ansServicing),
    (ansGrpServicing)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpWiderEnergy:AnswerGroup {name: 'ansGrpWiderEnergy'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpWiderEnergy),
    (ansGrpWiderEnergy)-[:HAS_ANSWER {order: 4}]->(ansWiderEnergy),
    (ansGrpWiderEnergy)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpPolicy:AnswerGroup {name: 'ansGrpPolicy'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpPolicy),
    (ansGrpPolicy)-[:HAS_ANSWER {order: 5}]->(ansPolicy),
    (ansGrpPolicy)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpDecommissioning:AnswerGroup {name: 'ansGrpDecommissioning'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpDecommissioning),
    (ansGrpDecommissioning)-[:HAS_ANSWER {order: 6}]->(ansDecommissioning),
    (ansGrpDecommissioning)-[:HAS_OUTCOME]->(Agreement_RM6313),

    (ansGrpEnd:AnswerGroup {name: 'ansGrpEnd'}),
    (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpEnd),
    (ansGrpEnd)-[:HAS_ANSWER {order: 7}]->(ansEnd),
    (ansGrpEnd)-[:HAS_OUTCOME]->(Agreement_RM6313),

(ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
(ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
(ansGrpNo)-[:HAS_OUTCOME]->(qiNo:QuestionInstance:Outcome {uuid: '8e6eb0f2-1298-4211-bf36-b29c40474d2d'})-[:DEFINED_BY]->(qstnService),

    (ansGrpEandG:AnswerGroup {name: 'ansGrpEandG'}),
    (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpEandG),
    (ansGrpEandG)-[:HAS_ANSWER {order: 1}]->(ansEandG),
    (ansGrpEandG)-[:HAS_OUTCOME]->(qiEnergyFirstQuestion), // SWITCH TREES

    (ansGrpEV:AnswerGroup {name: 'ansGrpEV'}),
    (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpEV),
    (ansGrpEV)-[:HAS_ANSWER {order: 2}]->(ansEV),
    (ansGrpEV)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true});
