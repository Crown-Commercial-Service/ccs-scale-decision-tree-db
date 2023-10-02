MATCH
(qstnOnlyQ:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})


CREATE
// Answer
(ansHeatNetwork:Answer {
    uuid: 'd71f1f9a-df49-4187-a8a1-549953960422',
    text: 'Heat networks and electricity generation assets',
    hint: 'Access a range of services related to providing heat and electricity. Includes services for simple energy auditing and complex installation projects'
}),

(ansVehicleCharging:Answer {
    uuid: '43897f52-0184-4378-ab03-221d5ea73975',
    text: 'Vehicle charging solutions',
    hint: 'Find a range of solutions to help you transition to low emission vehicles. Includes services and funding options to develop your charging infrastructure for electric and hybrid vehicles'
}),

(ansSupplyOfElectricity:Answer {
    uuid: '21c66a1e-6e22-441e-986c-29cdc013a16e',
    text: 'Supply of electricity and gas',
    hint: 'Access the supply of electricity and gas to the public sector and their associated bodies and agencies. This includes billing, administration, customer service and ancillary services'
}),

(ansTechnicalAdvisory:Answer {
    uuid: 'f7665285-48e0-43fa-b80f-bba54df74f0e',
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
    uuid: 'ad078658-b495-45a2-9266-49fa05af4b42',
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
    uuid: 'a5fbb26a-4839-4d6a-8b88-b8cbcca0c476',
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
    uuid: 'b7b3e1b6-8b9a-4254-8dba-12d286458b4e',
    text: 'Energy Purchase Agreement',
    hint: 'Provides energy (heat and electricity) through a power purchase agreement (PPA). A PPA is a long term contract where you agree to buy energy directly from a renewable energy generator for example, a wind farm'
}),

(ansCommoditisedProducts:Answer {
    uuid: 'c730fc0a-2740-4f4d-aa08-bc6421c37afa',
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
    uuid: '4f6dce74-2954-4cda-b821-fd19393173fe',
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
    uuid: '65a722e3-6b07-4a62-ae5a-56d9757bf9ac',
    text: 'Charge point equipment and associated services',
    hint: 'Access electric vehicle (EV) charging point equipment and associated services. Includes installation and back office systems where needed'
}),


(ansElectricity:Answer {
    uuid: 'fc75bc3d-f9af-4d54-b686-46f5a88923c1',
    text: 'Electricity',
    hint: 'Access the supply of electricity. This includes billing, administration, customer service and ancillary services'
}),

(ansGas:Answer {
    uuid: '5675c301-3cf6-4206-be7d-7a7be7ee2011',
    text: 'Natural gas',
    hint: 'Access the supply of natural gas. This includes billing, administration, customer service and ancillary services'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyHELGA:Journey {uuid: 'ffc6a3f0-897e-471f-9045-42a13b22e12d', name: 'HELGA'}),
(jrnyHELGA)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'd0589cd9-eeae-48b1-9ac7-01f305704316'})-[:DEFINED_BY]->(qstnOnlyQ),

    (ansGrpHeatNetwork:AnswerGroup {name: 'ansGrpHeatNetwork'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeatNetwork),
    (ansGrpHeatNetwork)-[:HAS_ANSWER {order: 1}]->(ansHeatNetwork),
    (ansGrpHeatNetwork)-[:HAS_OUTCOME]->(qiLV2FirstQ:QuestionInstance:Outcome {uuid: 'ac310450-9bb3-4ea1-9c1a-a82f31ee6a90'})-[:DEFINED_BY]->(qstnOnlyQ),

        (ansGrpEnergyAdvisory:AnswerGroup {name: 'ansGrpEnergyAdvisory'}),
        (qiLV2FirstQ)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyAdvisory),
        (ansGrpEnergyAdvisory)-[:HAS_ANSWER {order: 1}]->(ansEnergyAdvisory),
        (ansGrpEnergyAdvisory)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),

        (ansGrpDelivery:AnswerGroup {name: 'ansGrpDelivery'}),
        (qiLV2FirstQ)-[:HAS_ANSWER_GROUP]->(ansGrpDelivery),
        (ansGrpDelivery)-[:HAS_ANSWER {order: 2}]->(ansDelivery),
        (ansGrpDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),

        (ansGrpEnergyPurchase:AnswerGroup {name: 'ansGrpEnergyPurchase'}),
        (qiLV2FirstQ)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyPurchase),
        (ansGrpEnergyPurchase)-[:HAS_ANSWER {order: 3}]->(ansEnergyPurchase),
        (ansGrpEnergyPurchase)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),

        (ansGrpCommoditisedProducts:AnswerGroup {name: 'ansGrpCommoditisedProducts'}),
        (qiLV2FirstQ)-[:HAS_ANSWER_GROUP]->(ansGrpCommoditisedProducts),
        (ansGrpCommoditisedProducts)-[:HAS_ANSWER {order: 4}]->(ansCommoditisedProducts),
        (ansGrpCommoditisedProducts)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
    
    (ansGrpVehicleCharging:AnswerGroup {name: 'ansGrpVehicleCharging'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_ANSWER {order: 2}]->(ansVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_OUTCOME]->(qiLV2SecondQ:QuestionInstance:Outcome {uuid: 'be626e2e-a881-499d-80bf-68b383039b5d'})-[:DEFINED_BY]->(qstnOnlyQ),

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
    (ansGrpSupplyOfElectricity)-[:HAS_OUTCOME]->(qiLV2ThirdQ:QuestionInstance:Outcome {uuid: 'd26fa645-c68f-4899-9a1b-e48875197f10'})-[:DEFINED_BY]->(qstnOnlyQ),

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