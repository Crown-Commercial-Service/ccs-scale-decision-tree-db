MATCH
(qstnOnlyQ:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'})


CREATE
// Answer
(ansHeatNetwork:Answer {
    uuid: '6aa3d86-bf96-418f-b375-278a2a842179',
    text: 'Heat networks and electricity generation assets',
    hint: 'Access a range of services related to providing heat and electricity. Includes services for simple energy auditing and complex installation projects'
}),

(ansVehicleCharging:Answer {
    uuid: '952b871-7efe-4cab-8ce7-7491be92a114',
    text: 'Vehicle charging solutions',
    hint: 'Find a range of solutions to help you transition to low emission vehicles. Includes services and funding options to develop your charging infrastructure for electric and hybrid vehicles'
}),

(ansSupplyOfElectricity:Answer {
    uuid: 'efac365-7157-40b5-9a30-d1ce3f4ee9c3',
    text: 'Supply of electricity and gas',
    hint: 'Access the supply of electricity and gas to the public sector and their associated bodies and agencies. This includes billing, administration, customer service and ancillary services'
}),

(ansTechnicalAdvisory:Answer {
    uuid: 'ce2190e-79ef-4ef2-83d6-6107d774e0a3',
    text: 'Technical advisory services for building and civil engineering projects',
    hint: 'Access all types of construction professional services throughout the lifecycle of your construction project. Services include, but are not limited to:
    <ul>
        <li>project management</li>
        <li>cost management</li>
        <li>engineering: includes civil, structural, electrical, architectural and design services (for buildings, spaces and infrastructure)</li>
        <li>environmental and sustainability services including carbon neutral efficiencies which will help you to achieve carbon neutral</li>
    </ul>'
}),


(ansEnergyAdvisory:Answer {
    uuid: 'a3b3673-5acc-4081-9054-ed33a9894bc0',
    text: 'Energy advisory, design and technical services',
    hint: 'Access technical advice and design services for a range of products including: 
    <ul>
        <li>bioenergy and energy from waste</li>
        <li>generators</li>
        <li>gas transmission and distribution systems</li>
        <li>energy financing</li>
        <li>heat networks: space heating and domestic heating (including heat pumps)</li>
        <li>nuclear technologies</li>
    </ul>'
}),

(ansDelivery:Answer {
    uuid: '3d6cf5a-7328-4ff7-be6a-7097afe1108e',
    text: 'Delivery and maintenance services',
    hint: 'Delivers, installs, manages and maintains a large range of products and systems including (but not limited to): 
    <ul>
        <li>generators</li>
        <li>battery storage systems</li>
        <li>wind turbines</li>
        <li>geothermal technologies </li>
    </ul>'
}),

(ansEnergyPurchase:Answer {
    uuid: 'ca8ed06-2789-452d-81be-28c717e9cac0',
    text: 'Energy Purchase Agreement',
    hint: 'Provides energy (heat and electricity) through a power purchase agreement (PPA). A PPA is a long term contract where you agree to buy energy directly from a renewable energy generator for example, a wind farm'
}),

(ansCommoditisedProducts:Answer {
    uuid: '4619ce5-ed18-49cf-8750-397582c277ce',
    text: 'Commoditised Products',
    hint: 'Access commoditised products through bulk buying. Products include:
    <ul>
        <li>solar panels</li>
        <li>battery storage systems</li>
        <li>generators</li>
        <li>air and ground source heat pumps</li>
    </ul>
    You can also access a full end to end design service which will provide energy through a PPA and commoditised products'
}),


(ansFunding:Answer {
    uuid: 'b662c6b-35ff-46ee-a9d6-3b0296084079',
    text: 'Funding options and products and services',
    hint: 'Access a full end to end solution or choose specific products and services to meet your electric vehicle needs. You can choose from two funding streams: buyer funded or supplier funded. There is also the option to buy or lease products and services.Products and services can include:
    <ul>
        <li>installation</li>
        <li>consultancy and feasibility services</li>
        <li>hardware and accessories for example charging points</li>
        <li>servicing and maintenance</li>
    </ul>'
}),

(ansCharge:Answer {
    uuid: 'cdcf1e7-0acc-497a-8d11-2d348ec760a1',
    text: 'Charge point equipment and associated services',
    hint: 'Access electric vehicle (EV) charging point equipment and associated services. Includes installation and back office systems where needed'
}),


(ansElectricity:Answer {
    uuid: '7b66d3d-32c6-4e67-872a-141f2bffcd77',
    text: 'Electricity',
    hint: 'Access the supply of electricity. This includes billing, administration, customer service and ancillary services'
}),

(ansGas:Answer {
    uuid: '3c4a3e5-43d9-4c52-919b-27748fb00b83',
    text: 'Natural gas',
    hint: 'Access the supply of natural gas. This includes billing, administration, customer service and ancillary services'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyHELGA:Journey {uuid: '9fb5451-7d80-4981-b477-d99d6e72743a', name: 'HELGA'}),
(jrnyHELGA)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '07c5d60-b447-4c41-995e-6d08e9f3d3d1'})-[:DEFINED_BY]->(qstnOnlyQ),

    (ansGrpHeatNetwork:AnswerGroup {name: 'ansGrpHeatNetwork'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeatNetwork),
    (ansGrpHeatNetwork)-[:HAS_ANSWER {order: 1}]->(ansHeatNetwork),
    (ansGrpHeatNetwork)-[:HAS_OUTCOME]->(qiLV2FirstQ:QuestionInstance:Outcome {uuid: '25c0cdb-9fde-4fd4-8cb7-ab15c5f69b8d'})-[:DEFINED_BY]->(qstnOnlyQ),

        (ansGrpEnergyAdvisory:AnswerGroup {name: 'ansGrpEnergyAdvisory'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyAdvisory),
        (ansGrpEnergyAdvisory)-[:HAS_ANSWER {order: 1}]->(ansEnergyAdvisory),
        (ansGrpEnergyAdvisory)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

        (ansGrpDelivery:AnswerGroup {name: 'ansGrpDelivery'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpDelivery),
        (ansGrpDelivery)-[:HAS_ANSWER {order: 2}]->(ansDelivery),
        (ansGrpDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

        (ansGrpEnergyPurchase:AnswerGroup {name: 'ansGrpEnergyPurchase'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyPurchase),
        (ansGrpEnergyPurchase)-[:HAS_ANSWER {order: 3}]->(ansEnergyPurchase),
        (ansGrpEnergyPurchase)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

        (ansGrpCommoditisedProducts:AnswerGroup {name: 'ansGrpCommoditisedProducts'}),
        (qiSecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpCommoditisedProducts),
        (ansGrpCommoditisedProducts)-[:HAS_ANSWER {order: 4}]->(ansCommoditisedProducts),
        (ansGrpCommoditisedProducts)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),
    
    (ansGrpVehicleCharging:AnswerGroup {name: 'ansGrpVehicleCharging'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_ANSWER {order: 2}]->(ansVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_OUTCOME]->(qiLV2SecondQ:QuestionInstance:Outcome {uuid: '53c2b3f-8e33-4f02-917f-b933fd7d03e2'})-[:DEFINED_BY]->(qstnOnlyQ),

        (ansGrpFunding:AnswerGroup {name: 'ansGrpFunding'}),
        (qiLV2SecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpFunding),
        (ansGrpFunding)-[:HAS_ANSWER {order: 1}]->(ansFunding),
        (ansGrpFunding)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),

        (ansGrpCharge:AnswerGroup {name: 'ansGrpCharge'}),
        (qiLV2SecondQ)-[:HAS_ANSWER_GROUP]->(ansGrpCharge),
        (ansGrpCharge)-[:HAS_ANSWER {order: 2}]->(ansCharge),
        (ansGrpCharge)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpSupplyOfElectricity:AnswerGroup {name: 'ansGrpSupplyOfElectricity'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSupplyOfElectricity),
    (ansGrpSupplyOfElectricity)-[:HAS_ANSWER {order: 3}]->(ansSupplyOfElectricity),
    (ansGrpSupplyOfElectricity)-[:HAS_OUTCOME]->(qiLV2ThirdQ:QuestionInstance:Outcome {uuid: '8037ed0-1677-4c46-8881-6c4dd59b341d'})-[:DEFINED_BY]->(qstnOnlyQ),

        (ansGrpElectricity:AnswerGroup {name: 'ansGrpElectricity'}),
        (qiLV2ThirdQ)-[:HAS_ANSWER_GROUP]->(ansGrpElectricity),
        (ansGrpElectricity)-[:HAS_ANSWER {order: 1}]->(ansElectricity),
        (ansGrpElectricity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpGas:AnswerGroup {name: 'ansGrpGas'}),
        (qiLV2ThirdQ)-[:HAS_ANSWER_GROUP]->(ansGrpGas),
        (ansGrpGas)-[:HAS_ANSWER {order: 2}]->(ansGas),
        (ansGrpGas)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpTechnicalAdvisory:AnswerGroup {name: 'ansGrpTechnicalAdvisory'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnicalAdvisory),
    (ansGrpTechnicalAdvisory)-[:HAS_ANSWER {order: 4}]->(ansTechnicalAdvisory),
    (ansGrpTechnicalAdvisory)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
    (ansGrpTechnicalAdvisory)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'});