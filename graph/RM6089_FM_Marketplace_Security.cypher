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

// SECURITY SERVICES

// Security Type -> Security Services
(ansGrpSecTypeSecServices:AnswerGroup {name: 'ansGrpSecTypeSecServices'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSecServices),
(ansGrpSecTypeSecServices)-[:HAS_ANSWER {order: 1}]->(ansSecurityServices),
(ansGrpSecTypeSecServices)-[:HAS_OUTCOME]->(qiSecServiceType:QuestionInstance:Outcome {uuid: 'aa0ea31d-829b-46bd-b894-0f3eca8b3d96'})-[:DEFINED_BY]->(qstnSecurityServiceType),

// Security Type -> Security Services -> Security Service Type
(ansGrpSecServicesType:AnswerGroup {name: 'ansGrpSecServicesType'}),
(qiSecServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesType),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 1}]->(ansGuardingPatrols),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 2}]->(ansAlarmResponseCentres),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 3}]->(ansHelpdeskServices),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 4}]->(ansSecurityRiskAssess),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 5}]->(ansDesignSecSystems),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 6}]->(ansElectronicSecurity),
(ansGrpSecServicesType)-[:HAS_ANSWER {order: 7}]->(ansPhysicalSecurity),
(ansGrpSecServicesType)-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSvcs:QuestionInstance:Outcome {uuid: 'a973494d-2191-45c2-9c88-e8d6c9dd19c1'})-[:DEFINED_BY]->(qstnAddFacMgmtMultiSelect),
(ansGrpSecServicesType)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'ec8e2aa8-c807-4c97-b16c-17902ffb85f7', group: 'sec_svcs_type_sec_mixed', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSecServiceAddFacMgmtSecSvcs),

// Security Type -> Security Services -> Security Service Type (other)
(ansGrpSecServicesTypeOther:AnswerGroup {name: 'ansGrpSecServicesTypeOther'}),
(qiSecServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeOther),
(ansGrpSecServicesTypeOther)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansAnythingElse),
(ansGrpSecServicesTypeOther)-[:HAS_OUTCOME]->(agrRM6089:Agreement:Outcome {number: 'RM6089'}),
(agrRM6089)-[:HAS_LOT]->(:Lot {number: '1a', type: 'CAT', scale: true}),
(agrRM6089)-[:HAS_LOT]->(:Lot {number: '1b', type: 'CAT', scale: true}),

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
(ansGrpSecServicesAddFacMgmt)-[:HAS_OUTCOME]->(qiSecServicesSector:QuestionInstance:Outcome {uuid: '48f56201-616a-41b3-95cc-d22a0619b677'})-[:DEFINED_BY]->(qstnSector),
(ansGrpSecServicesAddFacMgmt)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '359728d4-b4f7-4b21-b2cf-68e6c5a33c81', group: 'sec_svcs_add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiSecServicesSector),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (No)
(ansGrpSecServicesAddFacMgmtNo:AnswerGroup {name: 'ansGrpSecServicesAddFacMgmtNo'}),
(qiSecServiceAddFacMgmtSecSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesAddFacMgmtNo),
(ansGrpSecServicesAddFacMgmtNo)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansNoIHaveEverything),
(ansGrpSecServicesAddFacMgmtNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (Yes) -> Sector (MoD)
(ansGrpSecServicesMoD:AnswerGroup {name: 'ansGrpSecServicesMoD'}),
(qiSecServicesSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesMoD),
(ansGrpSecServicesMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSecServicesMoD)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', type: 'CAT', scale: true}),

// Security Type -> Security Services -> Security Service Type -> Security Services -> Add Facilities Management (Yes) -> Sector (WPS)
(ansGrpSecServicesWPS:AnswerGroup {name: 'ansGrpSecServicesWPS'}),
(qiSecServicesSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesWPS),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorEdu),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorDevolved),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorHealth),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorBlueLight),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorHousing),
(ansGrpSecServicesWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorCharities),
(ansGrpSecServicesWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),


// SECURITY SERVICES & TECHNICAL SECURITY

// Security Type -> Security Services & Technical Security
(ansGrpSecTypeSecTechServices:AnswerGroup {name: 'ansGrpSecTypeSecTechServices'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSecTechServices),
(ansGrpSecTypeSecTechServices)-[:HAS_ANSWER {order: 3}]->(ansSecServicesAndTechnical),
(ansGrpSecTypeSecTechServices)-[:HAS_OUTCOME]->(qiSecTechServiceType:QuestionInstance:Outcome {uuid: '9c9dde8c-d4f9-4075-8b23-ae9f0a8f6b3f'})-[:DEFINED_BY]->(qstnSecurityServiceType),

// Security Type -> Security Services & Technical Security -> Security service type
(ansGrpSecTypeSecTechServicesType:AnswerGroup {name: 'ansGrpSecTypeSecTechServicesType'}),
(qiSecTechServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSecTechServicesType),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 1}]->(ansGuardingPatrols),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 2}]->(ansAlarmResponseCentres),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 3}]->(ansHelpdeskServices),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 4}]->(ansSecurityRiskAssess),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 5}]->(ansDesignSecSystems),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 6}]->(ansElectronicSecurity),
(ansGrpSecTypeSecTechServicesType)-[:HAS_ANSWER {order: 7}]->(ansPhysicalSecurity),
(ansGrpSecTypeSecTechServicesType)-[:HAS_OUTCOME]->(qiAddFacMgmtSecSrvAndTech:QuestionInstance:Outcome {uuid: 'befdac95-7220-4591-9f59-b4ee9ac36bc9'})-[:DEFINED_BY]->(qstnAddFacMgmtSingleSelect),
(ansGrpSecTypeSecTechServicesType)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'd9afed98-4803-4b00-970b-f7ca7947f587', group: 'sec_svcs_type_sec_tech_mixed', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiAddFacMgmtSecSrvAndTech),

// Security Type -> Security Services & Technical Security -> Security service type (anything else)
(ansGrpSecTypeSecTechServicesTypeOther:AnswerGroup {name: 'ansGrpSecTypeSecTechServicesTypeOther'}),
(qiSecTechServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSecTechServicesTypeOther),
(ansGrpSecTypeSecTechServicesTypeOther)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansTechSecAnythingElse),
(ansGrpSecTypeSecTechServicesTypeOther)-[:HAS_OUTCOME]->(agrRM6089b:Agreement:Outcome {number: 'RM6089'}),
(agrRM6089b)-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
(agrRM6089b)-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

// Security Type -> Security Services & Technical Security -> Security service type -> Add Fac Mgmt (yes)
(ansGrpSecTechServicesAddFacMgmt:AnswerGroup {name: 'ansGrpSecTechServicesAddFacMgmt'}),
(qiAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER_GROUP]->(ansGrpSecTechServicesAddFacMgmt),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 1}]->(ansMaintenance),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 2}]->(ansGroundsHortic),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 3}]->(ansStatutoryInspections),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 5}]->(ansCleaning),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 6}]->(ansReception),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_ANSWER {order: 7}]->(ansWaste),
(ansGrpSecTechServicesAddFacMgmt)-[:HAS_OUTCOME]->(qiSectorSecTechSector:QuestionInstance:Outcome {uuid: 'f9a63c93-274e-4ce7-bf7b-e4943f6d1c9e'})-[:DEFINED_BY]->(qstnSector),

// Security Type -> Security Services & Technical Security -> Security service type -> Add Fac Mgmt (no)
(ansGrpSecTechServicesAddFacMgmtNo:AnswerGroup {name: 'ansGrpSecTechServicesAddFacMgmtNo'}),
(qiAddFacMgmtSecSrvAndTech)-[:HAS_ANSWER_GROUP]->(ansGrpSecTechServicesAddFacMgmtNo),
(ansGrpSecTechServicesAddFacMgmtNo)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansNoIHaveEverything),
(ansGrpSecTechServicesAddFacMgmtNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Security Type -> Security Services & Technical Security -> Security service type -> Add Fac Mgmt (yes) -> Sector (MoD)
(ansGrpSecTechServicesMoD:AnswerGroup {name: 'ansGrpSecTechServicesMoD'}),
(qiSectorSecTechSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecTechServicesMoD),
(ansGrpSecTechServicesMoD)-[:HAS_ANSWER {order: 1}]->(ansSectorMoD),
(ansGrpSecTechServicesMoD)-[:HAS_OUTCOME]->(agrRM6089c:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', type: 'CAT', scale: true}),
(agrRM6089c)-[:HAS_LOT]->(:Lot {number: '3', type: 'CAT', scale: true}),
(agrRM6089c)-[:HAS_LOT]->(:Lot {number: '1a', type: 'CAT', scale: true}),

// Security Type -> Security Services & Technical Security -> Security service type -> Add Fac Mgmt (yes) -> Sector (WPS)
(ansGrpSecTechServicesWPS:AnswerGroup {name: 'ansGrpSecTechServicesWPS'}),
(qiSectorSecTechSector)-[:HAS_ANSWER_GROUP]->(ansGrpSecTechServicesWPS),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorEdu),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorDevolved),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorHealth),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorBlueLight),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorHousing),
(ansGrpSecTechServicesWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorCharities),
(ansGrpSecTechServicesWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),
(ansGrpSecTechServicesWPS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),


// TECHNICAL SECURITY

// Security Type -> Technical Security
(ansGrpSecTypeTechnical:AnswerGroup {name: 'ansGrpSecTypeTechnical'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeTechnical),
(ansGrpSecTypeTechnical)-[:HAS_ANSWER {order: 2}]->(ansTechnicalSecurity),
(ansGrpSecTypeTechnical)-[:HAS_OUTCOME]->(qiTechSecType:QuestionInstance:Outcome {uuid: '44d67507-bed8-4bab-bccb-a6898a84ddf1'})-[:DEFINED_BY]->(qstnTechSecurityType),

// Security Type -> Technical Security -> Tech Security Type -> Tech Sec Type
(ansGrpSecServicesTypeTechType:AnswerGroup {name: 'ansGrpSecServicesTypeTechType'}),
(qiTechSecType)-[:HAS_ANSWER_GROUP]->(ansGrpSecServicesTypeTechType),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 1}]->(ansRiskAssess),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 2}]->(ansDesInstallElecSecurity),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 3}]->(ansDesInstallPhysSecurity),
(ansGrpSecServicesTypeTechType)-[:HAS_ANSWER {order: 4, mutex: true}]->(ansTechSecAnythingElse),
(ansGrpSecServicesTypeTechType)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

// SOFTWARE SECURITY

// Security Type -> Software -> -- LINK TO TECH PRODUCTS FIRST QUESTION --
(ansGrpSecTypeSoftware:AnswerGroup {name: 'ansGrpSecTypeSoftware'}),
(qiSecurityType)-[:HAS_ANSWER_GROUP]->(ansGrpSecTypeSoftware),
(ansGrpSecTypeSoftware)-[:HAS_ANSWER {order: 4}]->(ansSecuritySoftware),
(ansGrpSecTypeSoftware)-[:HAS_OUTCOME]->(qiTechProductsFirstQuestion); // SWITCH TREES
