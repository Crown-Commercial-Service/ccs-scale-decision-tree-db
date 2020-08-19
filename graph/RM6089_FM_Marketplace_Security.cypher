MATCH
// Questions
(qstnSecurityType:Question {uuid: 'b879c784-654e-11ea-bc55-0242ac130003'}),
(qstnSecurityServiceType:Question {uuid: '1b99e1a4-432f-4700-bcc2-7cbb2538fc20'}),
(qstnTechSecurityType:Question {uuid: '9a6301b0-e9f7-46b4-ad64-14da3396b2c7'}),
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

// Answers
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
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Answers - Security service types
(ansGuardingPatrols:Answer {uuid: '613c0fb4-af06-4792-90e9-d3e6f5f27eed', text: 'Guarding services and patrols', hint: 'Security guard services including security passes management and CCTV monitoring'}),
(ansAlarmResponseCentres:Answer {uuid: '088e317e-22d0-482e-9454-c9fd7c72fb01', text: 'Alarm response centres', hint: 'Remote service providing a central facility for receiving alarm notifications and monitoring CCTV'}),
(ansHelpdeskServices:Answer {uuid: 'e69c6db9-4b79-4812-91e1-b1e05e5f39cd', text: 'Helpdesk services', hint: 'Fully staffed, supervised helpdesk service to handle issue reporting and service requests'}),
(ansSecurityRiskAssess:Answer {uuid: '79376438-d820-4882-9921-bc7eb020adf1', text: 'Security risk assessment', hint: 'Electronic or physical risk assessments'}),
(ansSecurityRiskAssess:Answer {uuid: '5bf453b1-9c2a-4b21-b2bc-72d11e5d62b2', text: 'Design of security systems', hint: 'Design of electronic or physical security systems'}),
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
(jrnyFM2Security)-[:FIRST_QUESTION]->(qiHousingType:QuestionInstance:Outcome {uuid: '2b6b7a4c-d635-11ea-87d0-0242ac130003'})-[:DEFINED_BY]->(qstnHousingType);

// TODO...
