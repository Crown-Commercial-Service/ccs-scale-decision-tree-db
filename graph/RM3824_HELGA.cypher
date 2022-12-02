MATCH
// this question was added with Apprenticeships DT (won't work until merged)
(qstnFirstQuestion:Question {uuid: '3842dccf-ab53-43a6-8bde-86b1c38337a4'})

CREATE

// Answers - level 1

(ansEnergyAdvisory:Answer {
    uuid: '4bd0431a-16e9-472a-ac9a-451316a1be23',
    text: 'Energy Advisory, Design and Technical Services',
    hint: 'Services relating to the advice and design of any demand management or generation type such as solar photovoltaic technologies, generators and energy efficiency in buildings'
}),

(ansDeliveryServices:Answer {
    uuid: '26651365-93cf-4c84-a022-284e55ba4a44',
    text: 'Delivery Services',
    hint: 'Delivery services to install, manage and maintain any demand management or generation type. Such as solar photovoltaic panels, Air/ground-source heat pumps, battery storage'
}),

(ansEnergyPurchaseAgreement:Answer {
    uuid: 'a4a7e104-b702-4686-ab36-1c9fc37b0167',
    text: 'Energy Purchase Agreement',
    hint: 'Provision of Energy via a Power Purchase Agreement (PPA) such as a wind farm '
}),

(ansCommoditisedProducts:Answer {
    uuid: '525e7c25-5bac-492c-8c7c-a56d5efea675',
    text: 'Commoditised Products',
    hint: 'Access to commoditised products through bulk purchasing such as a solar panels, battery storage, generators, air ground-source heat pumps'
}),

(ansOneStopShop:Answer {
    uuid: '70511aba-a885-4ea1-b3f2-e1dca93a626c',
    text: 'One Stop Shop Solution',
    hint: 'Delivery of a full end-to-end advisory, design service providing energy via power purchase agreements, and commoditised products'
}),

(ansVehicleCharging:Answer {
    uuid: 'f115da87-005d-44ec-b27b-ceefddb2a59d',
    text: 'Vehicle charging infrastructure solutions',
    hint: 'A range of solutions to help develop the charging infrastructure for electric and hybrid vehicles'
}),

(ansSupplyOfElectricityAndGas:Answer {
    uuid: 'f7d552fd-79d6-45ad-b388-c392ddc69a53',
    text: 'Supply of electricity and gas'
}),

(ansTechnicalAdvisory:Answer {
    uuid: '9ffad827-5a08-488d-9a44-f3fb3baa3373',
    text: 'Technical advisory services in support of building and civil engineering projects'
}),

// Answers - level 2

(ansFundingOptions:Answer {
    uuid: '144e8822-fdc2-4ddf-8d83-896a8f887b10',
    text: 'Funding Options, Products and Services'
}),

(ansChargePointEquipment:Answer {
    uuid: 'bb50b183-5d15-46ee-8d51-89c445a7cc1a',
    text: 'Charge point equipment and associated services'
}),

(ansElectricity:Answer {
    uuid: '2a471ba3-cfb5-4615-8ebc-f706a1d7eed4',
    text: 'Electricity'
}),

(ansGas:Answer {
    uuid: '0702d949-9733-4c08-9166-d288d67b98c4',
    text: 'Gas'
}),

(ansConstructionProfessionalServices:Answer {
    uuid: 'aebc3654-6292-46d6-887b-c831d4ac5a9d',
    text: 'Construction Professional Services'
}),

(ansConstructionProfessionalServicesDPS:Answer {
    uuid: 'b0e8359d-f6eb-43ce-87c2-9372e3c3e5e8',
    text: 'Construction Professional Services DPS'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyHELGA:Journey {uuid: 'c444f1cd-64ef-426c-a6a3-673470b0dc47', name: 'HELGA'}),
(jrnyHELGA)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '5b26a8fa-041a-4e4a-a317-45f1dbb7b9d1'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpEnergyAdvisory:AnswerGroup {name: 'ansGrpEnergyAdvisory'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyAdvisory),
    (ansGrpEnergyAdvisory)-[:HAS_ANSWER {order: 1}]->(ansEnergyAdvisory),
    (ansGrpEnergyAdvisory)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

    (ansGrpDeliveryServices:AnswerGroup {name: 'ansGrpDeliveryServices'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDeliveryServices),
    (ansGrpDeliveryServices)-[:HAS_ANSWER {order: 2}]->(ansDeliveryServices),
    (ansGrpDeliveryServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

    (ansGrpEnergyPurchaseAgreement:AnswerGroup {name: 'ansGrpEnergyPurchaseAgreement'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyPurchaseAgreement),
    (ansGrpEnergyPurchaseAgreement)-[:HAS_ANSWER {order: 3}]->(ansEnergyPurchaseAgreement),
    (ansGrpEnergyPurchaseAgreement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

    (ansGrpCommoditisedProducts:AnswerGroup {name: 'ansGrpCommoditisedProducts'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCommoditisedProducts),
    (ansGrpCommoditisedProducts)-[:HAS_ANSWER {order: 4}]->(ansCommoditisedProducts),
    (ansGrpCommoditisedProducts)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),

    (ansGrpOneStopShop:AnswerGroup {name: 'ansGrpOneStopShop'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOneStopShop),
    (ansGrpOneStopShop)-[:HAS_ANSWER {order: 5}]->(ansOneStopShop),
    (ansGrpOneStopShop)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),
    
    (ansGrpVehicleCharging:AnswerGroup {name: 'ansGrpVehicleCharging'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_ANSWER {order: 6}]->(ansVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_OUTCOME]->(qiFirstQuestion_2:QuestionInstance:Outcome {uuid:'cfcd3932-05c9-4385-b598-938690e4662b'})-[:DEFINED_BY]->(qstnFirstQuestion),

        (ansGrpFundingOptions:AnswerGroup {name: 'ansGrpFundingOptions'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpFundingOptions),
        (ansGrpFundingOptions)-[:HAS_ANSWER {order: 1}]->(ansFundingOptions),
        (ansGrpFundingOptions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),

        //need to add lots to agreement RM6099
        (ansGrpChargePointEquipment:AnswerGroup {name: 'ansGrpChargePointEquipment'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpChargePointEquipment),
        (ansGrpChargePointEquipment)-[:HAS_ANSWER {order: 2}]->(ansChargePointEquipment),
        (ansGrpChargePointEquipment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpSupplyOfElectricityAndGas:AnswerGroup {name: 'ansGrpSupplyOfElectricityAndGas'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSupplyOfElectricityAndGas),
    (ansGrpSupplyOfElectricityAndGas)-[:HAS_ANSWER {order: 7}]->(ansSupplyOfElectricityAndGas),
    (ansGrpSupplyOfElectricityAndGas)-[:HAS_OUTCOME]->(qiFirstQuestion_3:QuestionInstance:Outcome {uuid:'7dbed3cf-fac1-4a73-a894-7020c8fa435b'})-[:DEFINED_BY]->(qstnFirstQuestion),

        //the tree doesn't see lots for RM6011
        (ansGrpElectricity:AnswerGroup {name: 'ansGrpElectricity'}),
        (qiFirstQuestion_3)-[:HAS_ANSWER_GROUP]->(ansGrpElectricity),
        (ansGrpElectricity)-[:HAS_ANSWER {order: 1}]->(ansElectricity),
        (ansGrpElectricity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
        //the tree doesn't see lots for RM6011
        (ansGrpGas:AnswerGroup {name: 'ansGrpGas'}),
        (qiFirstQuestion_3)-[:HAS_ANSWER_GROUP]->(ansGrpGas),
        (ansGrpGas)-[:HAS_ANSWER {order: 2}]->(ansGas),
        (ansGrpGas)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpTechnicalAdvisory:AnswerGroup {name: 'ansGrpTechnicalAdvisory'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnicalAdvisory),
    (ansGrpTechnicalAdvisory)-[:HAS_ANSWER {order: 8}]->(ansTechnicalAdvisory),
    (ansGrpTechnicalAdvisory)-[:HAS_OUTCOME]->(qiFirstQuestion_4:QuestionInstance:Outcome {uuid:'ab73e395-2936-4c3a-983d-0a42337c0b71'})-[:DEFINED_BY]->(qstnFirstQuestion),

        //need to add agreement for RM6165
        (ansGrpConstructionProfessionalServices:AnswerGroup {name: 'ansGrpConstructionProfessionalServices'}),
        (qiFirstQuestion_4)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionProfessionalServices),
        (ansGrpConstructionProfessionalServices)-[:HAS_ANSWER {order: 1}]->(ansConstructionProfessionalServices),
        (ansGrpConstructionProfessionalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),

        // need to add agreement for RM6242
        (ansGrpConstructionProfessionalServicesDPS:AnswerGroup {name: 'ansGrpConstructionProfessionalServicesDPS'}),
        (qiFirstQuestion_4)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionProfessionalServicesDPS),
        (ansGrpConstructionProfessionalServicesDPS)-[:HAS_ANSWER {order: 2}]->(ansConstructionProfessionalServicesDPS),
        (ansGrpConstructionProfessionalServicesDPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'});
        
