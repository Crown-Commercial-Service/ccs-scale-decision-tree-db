MATCH
// Questions
(qstnSecurityType:Question {uuid: 'b879c784-654e-11ea-bc55-0242ac130003'}),
(qstnSecurityServiceType:Question {uuid: '1b99e1a4-432f-4700-bcc2-7cbb2538fc20'}),
(qstnTechSecurityType:Question {uuid: '9a6301b0-e9f7-46b4-ad64-14da3396b2c7'}),
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnAddFacMgmtMultiSelect:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003'}),
(qstnAddFacMgmtSingleSelect:Question {uuid: '1ecbbf8d-7d40-4711-b9e8-9e4e710d8ced'}),

// Answers
(ansNoIHaveEverything:Answer {uuid: '26883201-a99f-4ac7-8ac7-a2840b16f7a0'}),

(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),

// Security types
(ansSecurityServices:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003'}),
(ansTechnicalSecurity:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003'}),
(ansSecServicesAndTechnical:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003'}),
(ansSecuritySoftware:Answer {uuid: 'f3d45e3d-4c73-41c6-a9d7-92ac422129e4'}),

// Fac mgmt services
(ansMaintenance:Answer {uuid: '1596bd37-bc03-4f3e-abb8-560c1160cc30'}),
(ansGroundsHortic:Answer {uuid: '2e57ca18-5cb5-43d6-86eb-61eff804ab0e'}),
(ansStatutoryInspections:Answer {uuid: '61e636e8-8019-4a03-83dc-4a1e16177253'}),
(ansCatering:Answer {uuid: '3f3cd237-77e7-4211-b8e0-61af9f40dfee'}),
(ansCleaning:Answer {uuid: '06807bdd-8e02-4c56-9e20-802f5c3865cd'}),
(ansReception:Answer {uuid: '484725a9-829c-4bbe-91a4-9b1bbd6ef90b'}),
(ansWaste:Answer {uuid: '2ed4e18d-0886-4472-be10-e5fb1a6c5dd1'}),
(ansAnythingElse:Answer {uuid: '6a6b0c54-2bee-4a73-864d-beb1f7a3ef1e'}),

// Outcomes
(qiTechProductsFirstQuestion:QuestionInstance {uuid: '698c220e-7fc8-11ea-bc55-0242ac130003'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Answers - Security service types
(ansGuardingPatrols:Answer {uuid: '613c0fb4-af06-4792-90e9-d3e6f5f27eed', text: 'Guarding services and patrols', hint: 'Security guard services including security passes management and CCTV monitoring'}),
(ansAlarmResponseCentres:Answer {uuid: '088e317e-22d0-482e-9454-c9fd7c72fb01', text: 'Alarm response centres', hint: 'Remote service providing a central facility for receiving alarm notifications and monitoring CCTV'}),
(ansHelpdeskServices:Answer {uuid: 'e69c6db9-4b79-4812-91e1-b1e05e5f39cd', text: 'Helpdesk services', hint: 'Fully staffed, supervised helpdesk service to handle issue reporting and service requests'}),
(ansSecurityRiskAssess:Answer {uuid: '79376438-d820-4882-9921-bc7eb020adf1', text: 'Security risk assessment', hint: 'Electronic or physical risk assessments'}),
(ansDesignSecSystems:Answer {uuid: '5bf453b1-9c2a-4b21-b2bc-72d11e5d62b2', text: 'Design of security systems', hint: 'Design of electronic or physical security systems'}),
(ansElectronicSecurity:Answer {uuid: '3ee3935e-2e77-4bb1-84eb-506c443581da', text: 'Electronic security', hint: 'Supply, installation and maintenance of electronic systems such as CCTV and intruder detection systems (IDS)'}),
(ansPhysicalSecurity:Answer {uuid: '76adce9c-914c-4632-8e4d-259399f31c88', text: 'Physical security', hint: 'Supply, installation and maintenance of physical security systems such as perimeter fencing and security doors'}),

// Answers - Technical Security types
(ansRiskAssess:Answer {uuid: '4612105c-6ec2-4f06-8159-d423baf389ef', text: 'Risk assessments'}),
(ansDesInstallElecSecurity:Answer {uuid: 'b49f5162-1abf-4d2f-b769-812ca807d1c8', text: 'Design and installation of electronic security', hint: 'For example intrusion detection systems, CCTV and biometric systems'}),
(ansDesInstallPhysSecurity:Answer {uuid: '23d449a8-db17-4b4a-897a-3af3784bd0a6', text: 'Design and installation of physical security', hint: 'For example perimeter fencing, automatic barriers and bollards'}),
(ansTechSecAnythingElse:Answer {uuid: '825136fa-9764-4fa6-bc07-31cb86d18947', text: 'Anything else', hint: 'A technical security service not listed here'}),

// Journey
(jrnyFM2Security:Journey {uuid: '63f1b00f-530d-4271-a74d-e584c04d8e1b', name: 'FM Marketplace Phase 2 - Security'}),

// Tree Structure
(jrnyFM2Security)-[:FIRST_QUESTION]->(qiSecurityType:QuestionInstance:Outcome {uuid: '2f74aac3-23eb-4a70-9193-563d607421c5'})-[:DEFINED_BY]->(qstnSecurityType),

(qiSecServiceAddFacMgmtSecSrvAndTech:QuestionInstance:Outcome {uuid: 'befdac95-7220-4591-9f59-b4ee9ac36bc9'})-[:DEFINED_BY]->(qstnAddFacMgmtSingleSelect),

// Security Type -> Security Services
(ansGrpSecTypeSecServices:AnswerGroup {name: 'ansGrpSecTypeSecServices'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSecServices),
(ansGrpSecTypeSecServices)-[:HAS_ANSWER {order: 1}]->(ansSecurityServices),
(ansGrpSecTypeSecServices)-[:HAS_ANSWER {order: 3}]->(ansSecServicesAndTechnical),
(ansGrpSecTypeSecServices)-[:HAS_OUTCOME]->(qiSecServiceType:QuestionInstance:Outcome {uuid: 'aa0ea31d-829b-46bd-b894-0f3eca8b3d96'})-[:DEFINED_BY]->(qstnSecurityServiceType),

// Security Type -> Technical Security
(ansGrpSecTypeTechnical:AnswerGroup {name: 'ansGrpSecTypeTechnical'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeTechnical),
(ansGrpSecTypeTechnical)-[:HAS_ANSWER {order: 2}]->(ansTechnicalSecurity),
(ansGrpSecTypeTechnical)-[:HAS_OUTCOME]->(qiTechSecType:QuestionInstance:Outcome {uuid: '44d67507-bed8-4bab-bccb-a6898a84ddf1'})-[:DEFINED_BY]->(qstnTechSecurityType),

// Security Type -> Security Services -> Security Service Type -> Guarding/Patrols
(ansGrpSecServicesTypeGP:AnswerGroup {name: 'ansGrpSecServicesTypeGP'}),
(qiSecServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeGP),
(ansGrpSecServicesTypeGP)-[:HAS_ANSWER {order: 1}]->(ansGuardingPatrols),
(ansGrpSecServicesTypeGP)-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSvcs:QuestionInstance:Outcome {uuid: 'a973494d-2191-45c2-9c88-e8d6c9dd19c1'})-[:DEFINED_BY]->(qstnAddFacMgmtMultiSelect),
(ansGrpSecServicesTypeGP)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '6aab7dd8-20d1-499c-a5d1-e1c0b749e3e2', group: 'sec_svcs_type_sec_svcs', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSvcs),
(ansGrpSecServicesTypeGP)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'ec8e2aa8-c807-4c97-b16c-17902ffb85f7', group: 'sec_svcs_type_sec_mixed', mixPrecedence: 1, primary: false})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSrvAndTech),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (Yes)
(ansGrpSecServicesAddFacMgmt:AnswerGroup {name: 'ansGrpSecServicesAddFacMgmt'}),
(qiSecServiceAddFacMgmtSecSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesAddFacMgmt),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 1}]->(ansMaintenance),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 2}]->(ansGroundsHortic),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 3}]->(ansStatutoryInspections),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 5}]->(ansCleaning),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 6}]->(ansReception),
(ansGrpSecServicesAddFacMgmt)-[:HAS_ANSWER {order: 7}]->(ansWaste),
(ansGrpSecServicesAddFacMgmt)-[:HAS_OUTCOME]->(qiSectorSecServicesSector:QuestionInstance:Outcome {uuid: '48f56201-616a-41b3-95cc-d22a0619b677'})-[:DEFINED_BY]->(qstnSector),
(ansGrpSecServicesAddFacMgmt)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '359728d4-b4f7-4b21-b2cf-68e6c5a33c81', group: 'sec_svcs_add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSectorSecServicesSector),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (Yes) -> Sector (MoD)
(ansGrpSecServicesMoD:AnswerGroup {name: 'ansGrpSecServicesMoD'}),
(qiSectorSecServicesSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesMoD),
(ansGrpSecServicesMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSecServicesMoD)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (Yes) -> Sector (WPS)
(ansGrpSecServicesWPS:AnswerGroup {name: 'ansGrpSecServicesWPS'}),
(qiSectorSecServicesSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesWPS),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorEdu),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorDevolved),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorHealth),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorBlueLight),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorHousing),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorCharities),
(ansGrpSecServicesWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (No)
(ansGrpSecServicesAddFacMgmtNo:AnswerGroup {name: 'ansGrpSecServicesAddFacMgmtNo'}),
(qiSecServiceAddFacMgmtSecSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesAddFacMgmtNo),
(ansGrpSecServicesAddFacMgmtNo)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansNoIHaveEverything),
(ansGrpSecServicesAddFacMgmtNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Alarm Response / Helpdesk
(ansGrpSecServicesTypeARH:AnswerGroup {name: 'ansGrpSecServicesTypeARH'}),
(qiSecServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeARH),
(ansGrpSecServicesTypeARH)-[:HAS_ANSWER {order: 2}]->(ansAlarmResponseCentres),
(ansGrpSecServicesTypeARH)-[:HAS_ANSWER {order: 3}]->(ansHelpdeskServices),
(ansGrpSecServicesTypeARH)-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSrvAndTech),
(ansGrpSecServicesTypeARH)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '77460b83-c44d-46a3-97a3-115614e5a013', group: 'sec_svcs_type_sec_mixed', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSrvAndTech),

// Security Type -> Security Services -> Security Service Type -> Alarm Response / Helpdesk -> Add Facilities Management (Yes) -> Sector (WPS)
(ansGrpSecServicesAddFacMgmtSecSrvAndTech:AnswerGroup {name: 'ansGrpSecServicesAddFacMgmtSecSrvAndTech'}),
(qiSecServiceAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesAddFacMgmtSecSrvAndTech),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 1}]->(ansMaintenance),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 2}]->(ansGroundsHortic),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 3}]->(ansStatutoryInspections),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 5}]->(ansCleaning),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 6}]->(ansReception),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER {order: 7}]->(ansWaste),
(ansGrpSecServicesAddFacMgmtSecSrvAndTech)-[:HAS_OUTCOME]->(qiSectorSecSrvAndTechSector:QuestionInstance:Outcome {uuid: '033e3d54-3273-4244-a78d-dd8146c28f6d'})-[:DEFINED_BY]->(qstnSector),

// Security Type -> Security Services -> Security Service Type -> Alarm Response / Helpdesk -> Add Facilities Management (Yes) -> Sector (MoD)
(ansGrpSecServicesSecSrvAndTechMoD:AnswerGroup {name: 'ansGrpSecServicesSecSrvAndTechMoD'}),
(qiSectorSecSrvAndTechSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesSecSrvAndTechMoD),
(ansGrpSecServicesSecSrvAndTechMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSecServicesSecSrvAndTechMoD)-[:HAS_OUTCOME]->(agrRM6089:Agreement:Outcome {number: 'RM6089'}),
(agrRM6089)-[:HAS_LOT]->(:Lot {number: '3', type: 'CAT', scale: true}),
(agrRM6089)-[:HAS_LOT]->(:Lot {number: '1a', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Alarm Response / Helpdesk -> Add Facilities Management (Yes) -> Sector (WPS)
(ansGrpSecServicesSecSrvAndTechWPS:AnswerGroup {name: 'ansGrpSecServicesSecSrvAndTechWPS'}),
(qiSectorSecSrvAndTechSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesSecSrvAndTechWPS),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorEdu),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorDevolved),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorHealth),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorBlueLight),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorHousing),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorCharities),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),
(ansGrpSecServicesSecSrvAndTechWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Alarm Response / Helpdesk -> Add Facilities Management (No)
(ansGrpSecServicesAddFacMgmtSecSrvAndTechNo:AnswerGroup {name: 'ansGrpSecServicesAddFacMgmtSecSrvAndTechNo'}),
(qiSecServiceAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesAddFacMgmtSecSrvAndTechNo),
(ansGrpSecServicesAddFacMgmtSecSrvAndTechNo)-[:HAS_ANSWER {order: 8}]->(ansNoIHaveEverything),
(ansGrpSecServicesAddFacMgmtSecSrvAndTechNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Technical
(ansGrpSecServicesTypeTech:AnswerGroup {name: 'ansGrpSecServicesTypeTech'}),
(qiSecServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeTech),
(ansGrpSecServicesTypeTech)-[:HAS_ANSWER {order: 4}]->(ansSecurityRiskAssess),
(ansGrpSecServicesTypeTech)-[:HAS_ANSWER {order: 5}]->(ansDesignSecSystems),
(ansGrpSecServicesTypeTech)-[:HAS_ANSWER {order: 6}]->(ansElectronicSecurity),
(ansGrpSecServicesTypeTech)-[:HAS_ANSWER {order: 7}]->(ansPhysicalSecurity),
(ansGrpSecServicesTypeTech)-[:HAS_OUTCOME]->(qiTechSecType),
(ansGrpSecServicesTypeTech)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '7a01e9f3-c016-44fa-853c-381df198bdf2', group: 'sec_svcs_type_tech', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSvcs),
(ansGrpSecServicesTypeTech)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '98153f0f-d580-4a3c-8255-4136a477568f', group: 'sec_svcs_type_sec_mixed', mixPrecedence: 1, primary: false})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSrvAndTech),

// Security Type -> Software -> -- LINK TO TECH PRODUCTS FIRST QUESTION --
(ansGrpSecTypeSoftware:AnswerGroup {name: 'ansGrpSecTypeSoftware'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSoftware),
(ansGrpSecTypeSoftware)-[:HAS_ANSWER {order: 4}]->(ansSecuritySoftware),
(ansGrpSecTypeSoftware)-[:HAS_OUTCOME]->(qiTechProductsFirstQuestion), // SWITCH TREES

// Security Type -> Security Services -> Security Service Type -> Technical -> Tech Sec Type
(ansGrpSecServicesTypeTechType:AnswerGroup {name: 'ansGrpSecServicesTypeTechType'}),
(qiTechSecType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeTechType),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 1}]->(ansRiskAssess),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 2}]->(ansDesInstallElecSecurity),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 3}]->(ansDesInstallPhysSecurity),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 4}]->(ansTechSecAnythingElse),
(ansGrpSecServicesTypeTechType)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true});
