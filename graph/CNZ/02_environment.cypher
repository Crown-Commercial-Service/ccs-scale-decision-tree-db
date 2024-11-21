MATCH
(qstnSolution:Question {uuid: '8d972d0f-fd89-445f-9aa5-ae7a7854c54f'}),
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(startingPoint:QuestionInstance {uuid: 'ac7bbc05-e21e-4ccf-a804-7a7bac5536ea'})

CREATE



(ansBuildings:Answer {uuid: '557d01df-eb15-4f72-a219-afb592c5bc29', text: 'Buildings and construction', hint: 'Building and construction solutions, including: modular buildings, low carbon construction material, building refurbishments, reusable temporary buildings and heated buildings'}),
(ansFacilitiesManagement:Answer {uuid: 'ff8073fa-0fe7-43f0-b30c-d73edb35a113', text: 'Facilities management', hint: 'Access a range of Facilities Management (FM) services from cleaning and waste services to maintenance services and landscaping'}),
(ansEnergyAndRenewables:Answer {uuid: '7d3e94ad-af65-41cf-b173-e41f42878363', text: 'Energy and renewables', hint: 'Lower building emissions with green energy tariffs and renewable energy'}),
(ansVehicleChargingPoints:Answer {uuid: '92505a3f-2f25-4028-86d8-96c9d071d99f', text: 'Vehicle charging points', hint: 'Electric vehicle (EV) charging options, including consultancy, installation, and ongoing support'}),
(ansIndustryProfessionals:Answer {uuid: '7176c1fe-ee19-43ef-945c-b1a81f6e72b8', text: 'Industry professionals', hint: 'Access decarbonisation services including project management, technical advisors and products for construction projects'}),



(ansModular:Answer {uuid: '7d598d2a-f522-404f-bac9-a250103a11bd', text: 'Modular', hint: 'Modular buildings use pre-fabricated parts for fast, efficient on-site assembly. Offering quick and sustainable solutions. This also includes reusable temporary buildings'}),
(ansConstruction:Answer {uuid: '6c5e05a4-9a2e-4973-ba26-dfb2fa19b70a', text: 'Construction using low carbon materials', hint: 'Agreements that help you to buy low carbon construction materials and professional sustainability advisory services'}),
(ansBuildingRefurbs:Answer {uuid: 'd876ea20-aca7-46dd-9b8d-ebbe7b3fdf5c', text: 'Building refurbs', hint: 'Refurbish buildings with energy-efficient solutions and sustainable furniture to help your organisation reduce carbon emissions'}),
(ansHeatingBuildings:Answer {uuid: 'cde912a9-97d9-42b5-9fcf-7a2bea3aa8a6', text: 'Heating buildings', hint: 'Agreements that give you access to sustainable solutions to help heat your buildings'}),

(ansEnergySupply:Answer {uuid: '9f53bb7d-1847-4415-87c6-f883347dacc5', text: 'Energy supply', hint: 'Access long-term renewable electricity contracts'}),
(ansEnergyStorage:Answer {uuid: '332a80a0-c8ee-4b24-9b6e-fc0fa2b563a1', text: 'Energy storage', hint: 'Access energy storage solutions including products and advisory services'}),
(ansOnAndOff:Answer {uuid: '4f6ca0b8-fd1c-481e-9612-1fc0769eb07d', text: 'On and off-site renewables', hint: 'On and off-site renewable power and energy storage solutions'}),

(ansVCIS:Answer {uuid: '319d1f02-ea93-4392-9fab-408a90cea905', text: 'Vehicle Charging Infrastructure Solutions (VCIS)', hint: 'Find solutions to help develop charging infrastructure for electric and hybrid vehicles'}),
(ansTTS:Answer {uuid: '216efd0f-1f08-4fe4-a748-3dd61789a032', text: 'Transport technology solutions for infrastructure and advisory services', hint: 'Transport technology and advisory services for the aviation, road, rail and maritime sectors'}),

(ansCPS:Answer {uuid: '3bf29e93-b3fa-4f2f-a15c-2bab1436b334', text: 'Construction Professional Services', hint: 'Access advisory services that support building and civil engineering projects'}),
(ansDemandManagement:Answer {uuid: '153ee072-7e0b-47c3-9d9e-33d161a8d705', text: 'Demand Management and Renewables', hint: 'Access decarbonisation products and services. Includes solar panels, heat pumps and battery storage units'}),



(ansConstructionProfessionalServices:Answer {uuid: 'f0b1ed28-b3f7-4092-ba1c-d71b6631d1e3', text: 'Construction Professional Services', hint: 'Access a wide range of technical advisory services in support of building and civil engineering projects of all scales and sizes'}),
(ansOffsiteConstruction:Answer {uuid: '1dbd02d4-a147-48ad-bd77-184ec2a270c5', text: 'Offsite Construction Solutions', hint: 'Access the design, fabrication, physical delivery, construction or installation and maintenance of prefabricated (modular) buildings'}),

(ansModularBuildings:Answer {uuid: 'c1d9af11-43ab-4672-bb1b-ab1cfc1341d4', text: 'Modular buildings', hint: 'Access the design, fabrication, physical delivery, construction or installation and maintenance of prefabricated (modular) buildings'}),
// Construction Professional Services option
(ansConstructionServicesMaterials:Answer {uuid: '3a0b7789-7258-4d61-b3f1-733a5c0871b8', text: 'Construction services and materials', hint: 'Access building materials, equipment, and services for major and minor construction and engineering projects'}),
(ansDemandManagementAndRenewables:Answer {uuid: 'bfb4d9b2-56a6-4056-8ece-b2c4ee68a8e0', text: 'Demand Management and Renewables', hint: 'Access a range of decarbonisation products and services to support your carbon net zero strategy. Such as, solar panels, heat pumps and battery storage units'}),

(ansCPSDiffHint:Answer {uuid: 'b5c316ff-4f12-48d1-a259-ba7f64a820fb', text: 'Construction Professional Services', hint: 'Access a wide range of technical advisory services in support of building and civil engineering projects of all scales and sizes'}),
// Demand Management and Renewables
(ansBME:Answer {uuid: 'e1b4d919-36b4-4740-b6ae-1134dc2e9d8a', text: 'Building Materials and Equipment', hint: 'Access a range of building materials, equipment and associated services that can help you meet your carbon net zero goals'}),

(ansCPSDiffDiffHint:Answer {uuid: '78e8eacd-4a1c-47fa-85d5-cfaf374f3283', text: 'Construction Professional Services', hint: 'Access a wide range of advisory services that support building and civil engineering projects'}),
// Demand Management and Renewables
(ansPPA:Answer {uuid: '7139a700-e18e-480a-8998-735773eef474', text: 'Provision of Power Purchase Agreement (PPA)', hint: 'Access renewable electricity by securing long term contracts with suppliers'}),


(ansEnergyAndFuels:Answer {uuid: '51033e14-6ba3-43ef-8aa0-5e801e22b16a', text: 'Energy and fuels', hint: 'Access renewable electricity and sustainable fuels'}),
(ansConstructionProfessional:Answer {uuid: 'a2f2780a-11f5-4744-b5b9-99f5331d4906', text: 'ConstructionProfessional', hint: 'Access technical advisory services in support of building and civil engineering projects of all scales and sizes'}),
(ansDemandManagementDiff:Answer {uuid: 'a0691f5a-084b-4792-b332-7a90c4f73c13', text: 'Demand Management and Renewables', hint: 'Access decarbonisation products and people services that support your carbon net zero strategy'}),

// ansConstructionProfessional
// ansDemandManagement

// ansCPS
(ansPPADiff:Answer {uuid: 'fc492ccb-ef64-4bce-9508-537ccff8a044', text: 'Provision of Power Purchase Agreement (PPA)', hint: 'Access long-term renewable electricity contracts'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansGrpBuildings:AnswerGroup {name: 'ansGrpBuildings'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpBuildings),
(ansGrpBuildings)-[:HAS_ANSWER {order: 1}]->(ansBuildings),
(ansGrpBuildings)-[:HAS_OUTCOME]->(qiBuildings:QuestionInstance:Outcome {uuid: '7458d47d-5f04-4aae-81f4-20c7b81951af'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpModular:AnswerGroup {name: 'ansGrpModular'}),
    (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpModular),
    (ansGrpModular)-[:HAS_ANSWER {order: 1}]->(ansModular),
    (ansGrpModular)-[:HAS_OUTCOME]->(qiModular:QuestionInstance:Outcome {uuid: 'a52c706e-b882-447d-a203-62d633680ace'})-[:DEFINED_BY]->(qstnService),

        (ansGrpConstructionProfessionalServices:AnswerGroup {name: 'ansGrpConstructionProfessionalServices'}),
        (qiModular)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionProfessionalServices),
        (ansGrpConstructionProfessionalServices)-[:HAS_ANSWER {order: 1}]->(ansConstructionProfessionalServices),
        (ansGrpConstructionProfessionalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
        (ansGrpConstructionProfessionalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

        (ansGrpOffsiteConstruction:AnswerGroup {name: 'ansGrpOffsiteConstruction'}),
        (qiModular)-[:HAS_ANSWER_GROUP]->(ansGrpOffsiteConstruction),
        (ansGrpOffsiteConstruction)-[:HAS_ANSWER {order: 2}]->(ansOffsiteConstruction),
        (ansGrpOffsiteConstruction)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'}),

    (ansGrpConstruction:AnswerGroup {name: 'ansGrpConstruction'}),
    (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpConstruction),
    (ansGrpConstruction)-[:HAS_ANSWER {order: 2}]->(ansConstruction),
    (ansGrpConstruction)-[:HAS_OUTCOME]->(qiConstruction:QuestionInstance:Outcome {uuid: '340de98c-b0ad-4934-9022-d121add68053'})-[:DEFINED_BY]->(qstnSolution),

        (ansGrpModularBuildings:AnswerGroup {name: 'ansGrpModularBuildings'}),
        (qiConstruction)-[:HAS_ANSWER_GROUP]->(ansGrpModularBuildings),
        (ansGrpModularBuildings)-[:HAS_ANSWER {order: 1}]->(ansModularBuildings),
        (ansGrpModularBuildings)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'}),

        (ansGrpCPS2:AnswerGroup {name: 'ansGrpCPS2'}),
        (qiConstruction)-[:HAS_ANSWER_GROUP]->(ansGrpCPS2),
        (ansGrpCPS2)-[:HAS_ANSWER {order: 2}]->(ansConstructionProfessionalServices),
        (ansGrpCPS2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
        (ansGrpCPS2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

        (ansGrpConstructionServicesMaterials:AnswerGroup {name: 'ansGrpConstructionServicesMaterials'}),
        (qiConstruction)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionServicesMaterials),
        (ansGrpConstructionServicesMaterials)-[:HAS_ANSWER {order: 3}]->(ansConstructionServicesMaterials),
        (ansGrpConstructionServicesMaterials)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'}),
        (ansGrpConstructionServicesMaterials)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'}),

        (ansGrpDemandManagementAndRenewables:AnswerGroup {name: 'ansGrpDemandManagementAndRenewables'}),
        (qiConstruction)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagementAndRenewables),
        (ansGrpDemandManagementAndRenewables)-[:HAS_ANSWER {order: 4}]->(ansDemandManagementAndRenewables),
        (ansGrpDemandManagementAndRenewables)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
        (ansGrpDemandManagementAndRenewables)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6313'}),

    (ansGrpBuildingRefurbs:AnswerGroup {name: 'ansGrpBuildingRefurbs'}),
    (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingRefurbs),
    (ansGrpBuildingRefurbs)-[:HAS_ANSWER {order: 3}]->(ansBuildingRefurbs),
    (ansGrpBuildingRefurbs)-[:HAS_OUTCOME]->(qiBuildingRefurbs:QuestionInstance:Outcome {uuid: '5e7d6ab0-a6f5-4388-b944-74a3ff5d5e2e'})-[:DEFINED_BY]->(qstnService),

        (ansGrpCPSDiffHint:AnswerGroup {name: 'ansGrpCPSDiffHint'}),
        (qiBuildingRefurbs)-[:HAS_ANSWER_GROUP]->(ansGrpCPSDiffHint),
        (ansGrpCPSDiffHint)-[:HAS_ANSWER {order: 1}]->(ansCPSDiffHint),
        (ansGrpCPSDiffHint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
        (ansGrpCPSDiffHint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),
        
        (ansGrpDemandManagementAndRenewables2:AnswerGroup {name: 'ansGrpDemandManagementAndRenewables2'}),
        (qiBuildingRefurbs)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagementAndRenewables2),
        (ansGrpDemandManagementAndRenewables2)-[:HAS_ANSWER {order: 2}]->(ansDemandManagementAndRenewables),
        (ansGrpDemandManagementAndRenewables2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
        (ansGrpDemandManagementAndRenewables2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6313'}),

        (ansGrpBME:AnswerGroup {name: 'ansGrpBME'}),
        (qiBuildingRefurbs)-[:HAS_ANSWER_GROUP]->(ansGrpBME),
        (ansGrpBME)-[:HAS_ANSWER {order: 3}]->(ansBME),
        (ansGrpBME)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'}),

    (ansGrpHeatingBuildings:AnswerGroup {name: 'ansGrpHeatingBuildings'}),
    (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpHeatingBuildings),
    (ansGrpHeatingBuildings)-[:HAS_ANSWER {order: 4}]->(ansHeatingBuildings),
    (ansGrpHeatingBuildings)-[:HAS_OUTCOME]->(qiHeatingBuildings:QuestionInstance:Outcome {uuid: '02b56e6a-4ef6-499c-957b-1b56dcb5dd4d'})-[:DEFINED_BY]->(qstnService),

    (ansGrpCPSDiffDiffHint:AnswerGroup {name: 'ansGrpCPSDiffDiffHint'}),
    (qiHeatingBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpCPSDiffDiffHint),
    (ansGrpCPSDiffDiffHint)-[:HAS_ANSWER {order: 1}]->(ansCPSDiffDiffHint),
    (ansGrpCPSDiffDiffHint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
    (ansGrpCPSDiffDiffHint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

    (ansGrpDemandManagementAndRenewables3:AnswerGroup {name: 'ansGrpDemandManagementAndRenewables3'}),
    (qiHeatingBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagementAndRenewables3),
    (ansGrpDemandManagementAndRenewables3)-[:HAS_ANSWER {order: 2}]->(ansDemandManagementAndRenewables),
    (ansGrpDemandManagementAndRenewables3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
    (ansGrpDemandManagementAndRenewables3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6313'}),

    (ansGrpPPA:AnswerGroup {name: 'ansGrpPPA'}),
    (qiHeatingBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpPPA),
    (ansGrpPPA)-[:HAS_ANSWER {order: 3}]->(ansPPA),
    (ansGrpPPA)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6289'}),

(ansGrpFacilitiesManagement:AnswerGroup {name: 'ansGrpFacilitiesManagement'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_ANSWER {order: 2}]->(ansFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
(ansGrpFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'}),

(ansGrpEnergyAndRenewables:AnswerGroup {name: 'ansGrpEnergyAndRenewables'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyAndRenewables),
(ansGrpEnergyAndRenewables)-[:HAS_ANSWER {order: 3}]->(ansEnergyAndRenewables),
(ansGrpEnergyAndRenewables)-[:HAS_OUTCOME]->(qiEnergyAndRenewables:QuestionInstance:Outcome {uuid: 'ec3bf9cb-7570-43fa-a128-c0d36653e2f2'})-[:DEFINED_BY]->(qstnService),

    (ansGrpEnergySupply:AnswerGroup {name: 'ansGrpEnergySupply'}),
    (qiEnergyAndRenewables)-[:HAS_ANSWER_GROUP]->(ansGrpEnergySupply),
    (ansGrpEnergySupply)-[:HAS_ANSWER {order: 1}]->(ansEnergySupply),
    (ansGrpEnergySupply)-[:HAS_OUTCOME]->(qiEnergySupply:QuestionInstance:Outcome {uuid: '0c3a22de-b5fa-42bf-bf46-a32968ed375d'})-[:DEFINED_BY]->(qstnSolution),

        (ansGrpEnergyAndFuels:AnswerGroup {name: 'ansGrpEnergyAndFuels'}),
        (qiEnergySupply)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyAndFuels),
        (ansGrpEnergyAndFuels)-[:HAS_ANSWER {order: 1}]->(ansEnergyAndFuels),
        (ansGrpEnergyAndFuels)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6289'}),
        (ansGrpEnergyAndFuels)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'}),

        (ansGrpConstructionProfessional:AnswerGroup {name: 'ansGrpConstructionProfessional'}),
        (qiEnergySupply)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionProfessional),
        (ansGrpConstructionProfessional)-[:HAS_ANSWER {order: 2}]->(ansConstructionProfessional),
        (ansGrpConstructionProfessional)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
        (ansGrpConstructionProfessional)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

        (ansGrpDemandManagementDiff:AnswerGroup {name: 'ansGrpDemandManagementDiff'}),
        (qiEnergySupply)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagementDiff),
        (ansGrpDemandManagementDiff)-[:HAS_ANSWER {order: 3}]->(ansDemandManagementDiff),
        (ansGrpDemandManagementDiff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
        (ansGrpDemandManagementDiff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6313'}),

    (ansGrpEnergyStorage:AnswerGroup {name: 'ansGrpEnergyStorage'}),
    (qiEnergyAndRenewables)-[:HAS_ANSWER_GROUP]->(ansGrpEnergyStorage),
    (ansGrpEnergyStorage)-[:HAS_ANSWER {order: 2}]->(ansEnergyStorage),
    (ansGrpEnergyStorage)-[:HAS_OUTCOME]->(qiEnergyStorage:QuestionInstance:Outcome {uuid: '4df6e04f-a94a-4254-b2a0-18d08879f24d'})-[:DEFINED_BY]->(qstnService),

        (qiEnergyStorage)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionProfessional),
        (qiEnergyStorage)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagementDiff),

    (ansGrpOnAndOff:AnswerGroup {name: 'ansGrpOnAndOff'}),
    (qiEnergyAndRenewables)-[:HAS_ANSWER_GROUP]->(ansGrpOnAndOff),
    (ansGrpOnAndOff)-[:HAS_ANSWER {order: 3}]->(ansOnAndOff),
    (ansGrpOnAndOff)-[:HAS_OUTCOME]->(qiOnAndOff:QuestionInstance:Outcome {uuid: '2311b491-2c9d-4989-b89f-7209c755d8fd'})-[:DEFINED_BY]->(qstnService),

        (ansGrpCPS3:AnswerGroup {name: 'ansGrpCPS3'}),
        (qiOnAndOff)-[:HAS_ANSWER_GROUP]->(ansGrpCPS3),
        (ansGrpCPS3)-[:HAS_ANSWER {order: 1}]->(ansCPS),
        (ansGrpCPS3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
        (ansGrpCPS3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

        (ansGrpPPADiff:AnswerGroup {name: 'ansGrpPPADiff'}),
        (qiOnAndOff)-[:HAS_ANSWER_GROUP]->(ansGrpPPADiff),
        (ansGrpPPADiff)-[:HAS_ANSWER {order: 2}]->(ansPPADiff),
        (ansGrpPPADiff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6289'}),

(ansGrpVehicleChargingPoints:AnswerGroup {name: 'ansGrpVehicleChargingPoints'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleChargingPoints),
(ansGrpVehicleChargingPoints)-[:HAS_ANSWER {order: 4}]->(ansVehicleChargingPoints),
(ansGrpVehicleChargingPoints)-[:HAS_OUTCOME]->(qiVehicleChargingPoints:QuestionInstance:Outcome {uuid: '78699126-16e6-4be6-bfb1-9ae5f3a884c2'})-[:DEFINED_BY]->(qstnService),

    (ansGrpVCIS:AnswerGroup {name: 'ansGrpVCIS'}),
    (qiSoftware)-[:HAS_ANSWER_GROUP]->(ansGrpVCIS),
    (ansGrpVCIS)-[:HAS_ANSWER {order: 1}]->(ansVCIS),
    (ansGrpVCIS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),

    (ansGrpTTS:AnswerGroup {name: 'ansGrpTTS'}),
    (qiSoftware)-[:HAS_ANSWER_GROUP]->(ansGrpTTS),
    (ansGrpTTS)-[:HAS_ANSWER {order: 2}]->(ansTTS),
    (ansGrpTTS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'}),
    (ansGrpTTS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),

(ansGrpIndustryProfessionals:AnswerGroup {name: 'ansGrpIndustryProfessionals'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpIndustryProfessionals),
(ansGrpIndustryProfessionals)-[:HAS_ANSWER {order: 5}]->(ansIndustryProfessionals),
(ansGrpIndustryProfessionals)-[:HAS_OUTCOME]->(qiIndustryProfessionals:QuestionInstance:Outcome {uuid: '933e0b81-44ed-4872-b77c-a2390a277982'})-[:DEFINED_BY]->(qstnService),

    (ansGrpCPS:AnswerGroup {name: 'ansGrpCPS'}),
    (qiIndustryProfessionals)-[:HAS_ANSWER_GROUP]->(ansGrpCPS),
    (ansGrpCPS)-[:HAS_ANSWER {order: 1}]->(ansCPS),
    (ansGrpCPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'}),
    (ansGrpCPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6242'}),

    (ansGrpDemandManagement:AnswerGroup {name: 'ansGrpDemandManagement'}),
    (qiIndustryProfessionals)-[:HAS_ANSWER_GROUP]->(ansGrpDemandManagement),
    (ansGrpDemandManagement)-[:HAS_ANSWER {order: 2}]->(ansDemandManagement),
    (ansGrpDemandManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'}),
    (ansGrpDemandManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6313'});