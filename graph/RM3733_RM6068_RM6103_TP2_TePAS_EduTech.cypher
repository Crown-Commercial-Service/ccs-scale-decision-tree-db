MATCH
// Required QuestionDefinition nodes:
(qstnProductOrService:Question {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnService:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnServices:Question {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003'}),
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003'}),
(ansService:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003'}),
(ansProductAndService:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003'}),

// Sectors
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),

// Outcomes
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Journey
(jrnyTechEduTech:Journey {uuid: 'ccb6174e-75b5-11ea-bc55-0242ac130003', name: 'Tech / EduTech'}),

// Tech/EduTech specific answers
// Services
(ansBroadbandFibreInfra:Answer {uuid: 'ccb6263a-75b5-11ea-bc55-0242ac130003', text: 'Broadband fibre infrastructure', hint: 'For example, upgrade of broadband installation with new fibres'}),
(ansBroadbandService:Answer {uuid: 'ccb627ca-75b5-11ea-bc55-0242ac130003', text: 'Broadband service', hint: 'For example, finding an Internet Service Provider (ISP)'}),
(ansTechStrategyAndSvcDesign:Answer {uuid: 'ccb6289c-75b5-11ea-bc55-0242ac130003', text: 'Technology strategy and service design', hint: 'For example, capability ​​analysis, enterprise ​​architecture, and service ​​design'}),
(ansTransitionTransformation:Answer {uuid: 'ccb629f0-75b5-11ea-bc55-0242ac130003', text: 'Transition and transformation', hint: 'For example the implementation​​ of ​​new​​ services,​​ service​​ providers or​​ processes'}),
(ansOperationalServices:Answer {uuid: 'ccb62ab8-75b5-11ea-bc55-0242ac130003', text: 'Operational services', hint: 'The​​ services,​​ processes​​ and​​ tools ​​needed ​​to​​ manage ​​the provisioning,​​ capacity, ​​performance,​​ security ​​and availability​​ of​​ the​​ technology ​​environment'}),
(ansProgsLargeProjects:Answer {uuid: 'ccb62be4-75b5-11ea-bc55-0242ac130003', text: 'Programmes and large projects', hint: 'Technology services offered at or above official government security level. You should only choose this if you require secret or top secret level programmes or large projects'}),

// Service & product
(ansDelivery:Answer {uuid: 'ccb62d24-75b5-11ea-bc55-0242ac130003', text: 'Delivery', hint: 'Courier and delivery options'}),
(ansExtendedWarranty:Answer {uuid: 'ccb62e28-75b5-11ea-bc55-0242ac130003', text: 'Extended warranty', hint: 'Prolonged warranty offered in addition to the standard warranty on new items'}),
(ansAssetTagging:Answer {uuid: 'ccb634f4-75b5-11ea-bc55-0242ac130003', text: 'Asset tagging', hint: 'Technology units tagged for inventory and insurance purposes'}),
(ansTraining:Answer {uuid: 'ccb63616-75b5-11ea-bc55-0242ac130003', text: 'Training', hint: 'Training booked by the hour, such as how to use interactive whiteboards'}),
(ansInstallation:Answer {uuid: 'ccb63760-75b5-11ea-bc55-0242ac130003', text: 'Installation', hint: 'Installation per unit or per product'}),
(ansImaging:Answer {uuid: 'ccb63832-75b5-11ea-bc55-0242ac130003', text: 'Imaging', hint: 'Installing images on new devices, so company logos show on device launch'}),
(ansConfiguration:Answer {uuid: 'ccb638f0-75b5-11ea-bc55-0242ac130003', text: 'Configuration', hint: 'Configuration services by the hour'}),
(ansNetworkTest:Answer {uuid: 'ccb63a4e-75b5-11ea-bc55-0242ac130003', text: 'Network test', hint: 'Book by project'}),
(ansPreDeliveryInspect:Answer {uuid: 'ccb63ba2-75b5-11ea-bc55-0242ac130003', text: 'Pre-delivery inspection', hint: 'Inspection of the premises, such as checking for asbestos in walls and ceilings'}),
(ansStorage:Answer {uuid: 'ccb63d14-75b5-11ea-bc55-0242ac130003', text: 'Storage', hint: 'Technology unit storage provided by area or by day'}),
(ansDisposal:Answer {uuid: '698c1aa2-7fc8-11ea-bc55-0242ac130003', text: 'Disposal', hint: 'Tech disposal and recycle services, by weight or by product'}),
(ansInfoAssuredServices:Answer {uuid: '698c1cb4-7fc8-11ea-bc55-0242ac130003', text: 'Information assured services', hint: 'Services including training and an IT service desk provided with an extra layer of security. Required for the Ministry of Defence'}),
(ansSoftware:Answer {uuid: '698c1da4-7fc8-11ea-bc55-0242ac130003', text: 'Software', hint: 'For example, software licenses, open source software and commercial software'}),
(ansHardware:Answer {uuid: '698c1e80-7fc8-11ea-bc55-0242ac130003', text: 'Hardware', hint: 'For example, laptops, printers and keyboards'}),
(ansHardwareSoftwareICTSolutions:Answer {uuid: '698c2060-7fc8-11ea-bc55-0242ac130003', text: 'Hardware and software ICT solutions', hint: 'For example, laptops with pre-installed software for professional video editing'}),
(ansAV:Answer {uuid: '698c2146-7fc8-11ea-bc55-0242ac130003', text: 'Audio-visual (AV)', hint: 'For example, purchasing and installing an AV system for a town hall or classroom whiteboards'}),

(ansAnythingElseProdSvc:Answer {uuid: '4be75c91-fb94-45fd-b35b-f6bab73b30a9', text: 'Anything else', hint: 'A technology product or service not listed here'}),
(ansAnythingElseSvc:Answer {uuid: 'ca55a200-9c0e-4545-a3a6-c526e11be9f1', text: 'Anything else', hint: 'A technology service not listed here'}),

// Tree Structure
(jrnyTechEduTech)-[:FIRST_QUESTION]->(qiProdService:QuestionInstance:Outcome {uuid: '698c220e-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnProductOrService),

// Product / Service (Product)
(ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
(ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(qiProductOnlySector:QuestionInstance:Outcome {uuid: '698c22ea-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service (Product) -> Sector (Edu) -> EduTech Lots 4&5 BaT DA
(ansGrpProductSectorEdu:AnswerGroup {name: 'ansGrpProductSectorEdu'}),
(qiProductOnlySector)-[:HAS_ANSWER_GROUP]->(ansGrpProductSectorEdu),
(ansGrpProductSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductSectorEdu)-[:HAS_OUTCOME]->(eduTechLots4n5BatDA:Agreement:Outcome {number: 'RM6103'}),
(eduTechLots4n5BatDA)-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'BAT', routeToMarket: "DA", scale: true}),
(eduTechLots4n5BatDA)-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'BAT', routeToMarket: "DA", scale: true}),

// Product / Service (Product) -> Sector (Non-Edu) -> TP2 Lot 6
(ansGrpProductSectorNonEdu:AnswerGroup {name: 'ansGrpProductSectorNonEdu'}),
(qiProductOnlySector)-[:HAS_ANSWER_GROUP]->(ansGrpProductSectorNonEdu),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpProductSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3733'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'BAT', scale: true}),

// Product / Service? (Service)
(ansGrpService:AnswerGroup {name: 'ansGrpService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpService),
(ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
(ansGrpService)-[:HAS_OUTCOME]->(qiServiceOnlyWhichService:QuestionInstance:Outcome {uuid: '698c2498-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// Product / Service? (Service) -> Service? (Broadband Fibre Infra)
(ansGrpServiceBroadbandFibre:AnswerGroup {name: 'ansGrpServiceBroadbandFibre'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandFibre),
(ansGrpServiceBroadbandFibre)-[:HAS_ANSWER {order: 1}]->(ansBroadbandFibreInfra),
(ansGrpServiceBroadbandFibre)-[:HAS_OUTCOME]->(qiServiceBFIInfraSector:QuestionInstance:Outcome {uuid: '698c2678-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service? (Service) -> Service? (Broadband Fibre Infra) -> Sector? (Edu) -> EduTech Lot 3
(ansGrpServiceBroadbandFibreSectorEdu:AnswerGroup {name: 'ansGrpServiceBroadbandFibreSectorEdu'}),
(qiServiceBFIInfraSector)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandFibreSectorEdu),
(ansGrpServiceBroadbandFibreSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpServiceBroadbandFibreSectorEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),

// Product / Service? (Service) -> Service? (Broadband Fibre Infra) -> Sector? (Non-Edu) -> Network Services 2
(ansGrpServiceBroadbandFibreSectorNonEdu:AnswerGroup {name: 'ansGrpServiceBroadbandFibreSectorNonEdu'}),
(qiServiceBFIInfraSector)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandFibreSectorNonEdu),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'}),

// Product / Service? (Service) -> Service? (Broadband Service)
(ansGrpServiceBroadbandService:AnswerGroup {name: 'ansGrpServiceBroadbandService'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandService),
(ansGrpServiceBroadbandService)-[:HAS_ANSWER {order: 2}]->(ansBroadbandService),
(ansGrpServiceBroadbandService)-[:HAS_OUTCOME]->(qiServiceBBSvcSector:QuestionInstance:Outcome {uuid: '698c274a-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service? (Service) -> Service? (Broadband Service) -> Sector? (Edu) -> EduTech Lot 3
(ansGrpServiceBroadbandServiceSectorEdu:AnswerGroup {name: 'ansGrpServiceBroadbandServiceSectorEdu'}),
(qiServiceBBSvcSector)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandServiceSectorEdu),
(ansGrpServiceBroadbandServiceSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpServiceBroadbandServiceSectorEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),

// Product / Service? (Service) -> Service? (Broadband Service) -> Sector? (Non-Edu) -> Network Services 2
(ansGrpServiceBroadbandServiceSectorNonEdu:AnswerGroup {name: 'ansGrpServiceBroadbandServiceSectorNonEdu'}),
(qiServiceBBSvcSector)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandServiceSectorNonEdu),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'}),

// Product / Service? (Service) -> Service? (Other) -> Tech Services 2
(ansGrpServiceOtherService:AnswerGroup {name: 'ansGrpServiceOtherService'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceOtherService),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 3}]->(ansTechStrategyAndSvcDesign),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 4}]->(ansTransitionTransformation),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 5}]->(ansOperationalServices),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 6}]->(ansProgsLargeProjects),
(ansGrpServiceOtherService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3804'}),

// Product / Service? (Service) -> Service? (Anything Else?) -> Escape Page
(ansGrpServiceAnythingElse:AnswerGroup {name: 'ansGrpServiceAnythingElse'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceAnythingElse),
(ansGrpServiceAnythingElse)-[:HAS_ANSWER {order: 7, mutex: true}]->(ansAnythingElseSvc),
(ansGrpServiceAnythingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage),

// Product / Service(Product & Service)
(ansGrpProductAndService:AnswerGroup {name: 'ansGrpProductAndService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndService),
(ansGrpProductAndService)-[:HAS_ANSWER {order: 3}]->(ansProductAndService),
(ansGrpProductAndService)-[:HAS_OUTCOME]->(qiProductAndServiceChooseServices:QuestionInstance:Outcome {uuid: '698c23bc-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServices),

// CaT Single / Multi select routing
(qiProductAndServiceCaTMultiSelectSector:QuestionInstance:Outcome {uuid: '330cf5ac-79e8-4e36-886e-c66d3dbfef31'})-[:DEFINED_BY]->(qstnSector),

// Product / Service(Product & Service) -> Service? (CaT/BaT Multi) -> Sector? (Edu) -> TePAS
(ansGrpProductAndServiceCaTMultiSelectEdu:AnswerGroup {name: 'ansGrpProductAndServiceCaTMultiSelectEdu'}),
(qiProductAndServiceCaTMultiSelectSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceCaTMultiSelectEdu),
(ansGrpProductAndServiceCaTMultiSelectEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceCaTMultiSelectEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'}), // EduTech

// Product / Service(Product & Service) -> Service? (CaT/BaT Multi) -> Sector? (Non-Edu) -> TePAS
(ansGrpProductAndServiceCaTMultiSelectNonEdu:AnswerGroup {name: 'ansGrpProductAndServiceCaTMultiSelectNonEdu'}),
(qiProductAndServiceCaTMultiSelectSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceCaTMultiSelectNonEdu),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpProductAndServiceCaTMultiSelectNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'}),

// Product / Service(Product & Service) -> Service? (Info Assured products) -> TePAS Lot 4
(ansGrpProductAndServiceInfoAss:AnswerGroup {name: 'ansGrpProductAndServiceInfoAss'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceInfoAss),
(ansGrpProductAndServiceInfoAss)-[:HAS_ANSWER {order: 1}]->(ansInfoAssuredServices),
(ansGrpProductAndServiceInfoAss)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),
(ansGrpProductAndServiceInfoAss)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'fc4852e3-5df8-49ff-8bdd-152e43867ef8', group: 'bat', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiProductOnlySector),
(ansGrpProductAndServiceInfoAss)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '32ff5083-37b6-47bf-8f5c-1a950e6210d1', group: 'cat', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),

// Product / Service(Product & Service) -> Service? (Software) -> TePAS Lot 3
(ansGrpProductAndServiceSoftware:AnswerGroup {name: 'ansGrpProductAndServiceSoftware'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceSoftware),
(ansGrpProductAndServiceSoftware)-[:HAS_ANSWER {order: 2}]->(ansSoftware),
(ansGrpProductAndServiceSoftware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),
(ansGrpProductAndServiceSoftware)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '16332b55-e292-4fbc-abe6-1795d51c7750', group: 'bat', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiProductOnlySector),
(ansGrpProductAndServiceSoftware)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '58b64052-d437-48aa-981a-6b7f6ea06372', group: 'cat', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),

// Product / Service(Product & Service) -> Service? (Hardware) -> Sector?
(ansGrpProductAndServiceHardware:AnswerGroup {name: 'ansGrpProductAndServiceHardware'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHardware),
(ansGrpProductAndServiceHardware)-[:HAS_ANSWER {order: 3}]->(ansHardware),
(ansGrpProductAndServiceHardware)-[:HAS_OUTCOME]->(qiProductAndServiceHardwareSector:QuestionInstance:Outcome {uuid: '698c2bc8-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),
(ansGrpProductAndServiceHardware)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'cf47cab7-6197-4b4e-b6d4-f47d6e8f53d4', group: 'bat', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiProductOnlySector),
(ansGrpProductAndServiceHardware)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'ae786bb8-5502-4df5-ab46-de297c539708', group: 'cat', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),

// Product / Service(Product & Service) -> Service? (H/Sftware/ICT Solutions) -> Sector?
(ansGrpProductAndServiceHdSftwareICT:AnswerGroup {name: 'ansGrpProductAndServiceHdSftwareICT'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHdSftwareICT),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_ANSWER {order: 4}]->(ansHardwareSoftwareICTSolutions),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_OUTCOME]->(qiProductAndServiceHdSftwareICTSector:QuestionInstance:Outcome {uuid: '698c2812-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '7f2ba6c7-219d-49ea-b8d9-ddcff36bab95', group: 'bat', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiProductOnlySector),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '423f0e8d-da1a-498d-ae76-0bd6a43b92c4', group: 'cat', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),

// Product / Service(Product & Service) -> Service? (AV) -> Sector?
(ansGrpProductAndServiceAV:AnswerGroup {name: 'ansGrpProductAndServiceAV'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceAV),
(ansGrpProductAndServiceAV)-[:HAS_ANSWER {order: 5}]->(ansAV),
(ansGrpProductAndServiceAV)-[:HAS_OUTCOME]->(qiProductAndServiceAVSector:QuestionInstance:Outcome {uuid: '698c2998-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),
(ansGrpProductAndServiceAV)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '16a6a3ff-c1b2-478c-921c-fdab77e2bf6a', group: 'bat', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiProductOnlySector),
(ansGrpProductAndServiceAV)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '5cf7ad84-766a-4bca-b553-00be59aebeaa', group: 'cat', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),

// Product / Service(Product & Service) -> Service? (Additional 'CaT' services) -> Sector?
(ansGrpProductAndServiceBaT:AnswerGroup {name: 'ansGrpProductAndServiceBaT'}),
(qiProductAndServiceChooseServices)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceBaT),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 6}]->(ansDelivery),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 7}]->(ansExtendedWarranty),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 8}]->(ansAssetTagging),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 9}]->(ansTraining),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 10}]->(ansInstallation),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 11}]->(ansImaging),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 12}]->(ansConfiguration),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 13}]->(ansNetworkTest),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 14}]->(ansPreDeliveryInspect),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 15}]->(ansStorage),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 16}]->(ansDisposal),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 17, mutex: true}]->(ansAnythingElseProdSvc),
(ansGrpProductAndServiceBaT)-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),
(ansGrpProductAndServiceBaT)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '5f2b56d9-38b9-4617-a031-3309ea9be110', group: 'cat', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(qiProductAndServiceCaTMultiSelectSector),


// Product / Service(Product & Service) -> Service? (Hardware) -> Sector? (Edu) -> EduTech Lot 4
(ansGrpProductAndServiceHardwareSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceHardwareSectorEdu'}),
(qiProductAndServiceHardwareSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHardwareSectorEdu),
(ansGrpProductAndServiceHardwareSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceHardwareSectorEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Product / Service(Product & Service) -> Service? (Hardware) -> Sector? (Non-Edu) -> TePAS Lot 2
(ansGrpProductAndServiceHardwareSectorNonEdu:AnswerGroup {name: 'ansGrpProductAndServiceHardwareSectorNonEdu'}),
(qiProductAndServiceHardwareSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHardwareSectorNonEdu),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),

// Product / Service(Product & Service) -> Service? (H/Sftware/ICT Solutions) -> Sector? (Edu) -> EduTech Lot 1
(ansGrpProductAndServiceHdSftwareICTSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceHdSftwareICTSectorEdu'}),
(qiProductAndServiceHdSftwareICTSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHdSftwareICTSectorEdu),
(ansGrpProductAndServiceHdSftwareICTSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceHdSftwareICTSectorEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),

// Product / Service(Product & Service) -> Service? (H/Sftware/ICT Solutions) -> Sector? (Non-Edu) -> TePAS Lot 1
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu:AnswerGroup {name: 'ansGrpProductAndServiceHdSftwareICTSectorNonEdu'}),
(qiProductAndServiceHdSftwareICTSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHdSftwareICTSectorNonEdu),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', routeToMarket: "FC", scale: false}),

// Product / Service(Product & Service) -> Service? (AV) -> Sector? (Edu) -> EduTech Lot 5
(ansGrpProductAndServiceAVSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceAVSectorEdu'}),
(qiProductAndServiceAVSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceAVSectorEdu),
(ansGrpProductAndServiceAVSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceAVSectorEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6103'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Product / Service(Product & Service) -> Service? (AV) -> Sector? (Non-Edu) -> TePAS Lot 2
(ansGrpProductAndServiceAVSectorNonEdu:AnswerGroup {name: 'ansGrpProductAndServiceAVSectorNonEdu'}),
(qiProductAndServiceAVSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceAVSectorNonEdu),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 2}]->(ansSectorCG),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 3}]->(ansSectorLG),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 4}]->(ansSectorMoD),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 5}]->(ansSectorDevolved),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: false});
