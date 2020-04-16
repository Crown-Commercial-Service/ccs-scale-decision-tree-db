MATCH
// Required QuestionDefinition nodes:
(qstnProductOrService:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnSector:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

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
(ansSectorWPS:Answer {uuid: 'b879ab14-654e-11ea-bc55-0242ac130003'}),

// Generic endpoints
(resultGMEndRouteToFM:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003'})

CREATE
// Journey
(jrnyTechEduTach:Journey {uuid: 'ccb6174e-75b5-11ea-bc55-0242ac130003', name: 'Tech / EduTech', searchTerms: ['laptop', 'laptops', 'hardware', 'audio', 'visual', 'av']}),

// Agreement lots (journey endpoints)
// TP2
(lotTP2Lot6:Lot:Outcome {uuid: 'ccb61820-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products 2', lotName: 'Lot 6 - Catalogue', description: 'Technology Products 2 (TP2) offers public sector customers a flexible and compliant way to source all their technology product needs (hardware and software).  Further competition Lots 1-5 have expired, Lot 6 catalogue is extended.', agreementId: 'RM3733', url: '', type: 'BAT'}),

// EduTech
(lotEduTechLot1:Lot:Outcome {uuid: '698c28d0-7fc8-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 1 - ICT Solutions', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'CAT'}),
(lotEduTechLot3:Lot:Outcome {uuid: 'ccb618e8-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 3 - Broadband Services', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'CAT'}),
(lotEduTechLot4:Lot:Outcome {uuid: 'ccb61a32-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 4 - Hardware', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'CAT'}),
(lotEduTechLot5:Lot:Outcome {uuid: 'ccb61b7c-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 5 - Audio Visual', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'CAT'}),

// TS2 (Tech Services)
(lotTS2:Lot:Outcome {uuid: 'ccb61c76-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Services 2', description: 'ICT services from strategy and service design through transition to operational deployment. Includes large project services and up to top secret classification.', agreementId: 'RM3804', url: '', type: 'CAT'}),

// TePAS
(lotTePAS:Lot:Outcome {uuid: 'ccb62432-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products & Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: '', type: 'CAT'}),
(lotTePASLot1:Lot:Outcome {uuid: 'ccb61ec4-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products & Associated Services', lotName: 'Lot 1 - Hardware & Software & Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: '', type: 'CAT'}),
(lotTePASLot2:Lot:Outcome {uuid: 'ccb6202c-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products & Associated Services', lotName: 'Lot 2 - Hardware and Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: '', type: 'CAT'}),
(lotTePASLot3:Lot:Outcome {uuid: 'ccb6214e-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products & Associated Services', lotName: 'Lot 3 - Software and Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: '', type: 'CAT'}),
(lotTePASLot4:Lot:Outcome {uuid: 'ccb622ac-75b5-11ea-bc55-0242ac130003', agreementName: 'Technology Products & Associated Services', lotName: 'Lot 4 - Information Assured Products & Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: '', type: 'CAT'}),

// Network Services 2
(lotNetworkServices2:Lot:Outcome {uuid: 'ccb6252c-75b5-11ea-bc55-0242ac130003', agreementName: 'Network Services 2', description: 'Telecommunications services including networks for the entire public sector, their associated bodies and agencies, the voluntary sector and charities.', agreementId: 'RM3808', url: '', type: 'CAT'}),

// Tech/EduTech specific answers
// Services
(ansBroadbandFibreInfra:Answer {uuid: 'ccb6263a-75b5-11ea-bc55-0242ac130003', text: 'Broadband fibre infrastructure', hint: 'For example, upgrade of broadband installation with new fibres'}),
(ansBroadbandService:Answer {uuid: 'ccb627ca-75b5-11ea-bc55-0242ac130003', text: 'Broadband service', hint: 'For example, finding an internet service provider (ISP)'}),
(ansTechStrategyAndSvcDesign:Answer {uuid: 'ccb6289c-75b5-11ea-bc55-0242ac130003', text: 'Technology strategy and service design', hint: 'For example, Capability ​​analysis, Enterprise ​​architecture, and Service ​​design'}),
(ansTransitionTransformation:Answer {uuid: 'ccb629f0-75b5-11ea-bc55-0242ac130003', text: 'Transition and transformation', hint: 'For example the implementation​​ of ​​new​​ services,​​ service​​ providers, architectures​​ or​​ processes'}),
(ansOperationalServices:Answer {uuid: 'ccb62ab8-75b5-11ea-bc55-0242ac130003', text: 'Operational services'}),
(ansProgsLargeProjects:Answer {uuid: 'ccb62be4-75b5-11ea-bc55-0242ac130003', text: 'Programmes and large projects'}),

// Service & product
(ansDelivery:Answer {uuid: 'ccb62d24-75b5-11ea-bc55-0242ac130003', text: 'Delivery', hint: 'Book courier and delivery options'}),
(ansExtendedWarranty:Answer {uuid: 'ccb62e28-75b5-11ea-bc55-0242ac130003', text: 'Extended warranty', hint: 'Multiple year extensions for tech warranties'}),
(ansAssetTagging:Answer {uuid: 'ccb634f4-75b5-11ea-bc55-0242ac130003', text: 'Asset tagging', hint: 'Get technology units tagged for inventory and insurance purposes'}),
(ansTraining:Answer {uuid: 'ccb63616-75b5-11ea-bc55-0242ac130003', text: 'Training', hint: 'Book training by the hour'}),
(ansInstallation:Answer {uuid: 'ccb63760-75b5-11ea-bc55-0242ac130003', text: 'Installation', hint: 'Book installation per unit or per product'}),
(ansImaging:Answer {uuid: 'ccb63832-75b5-11ea-bc55-0242ac130003', text: 'Imaging', hint: 'Book an imaging service'}),
(ansConfiguraion:Answer {uuid: 'ccb638f0-75b5-11ea-bc55-0242ac130003', text: 'Configuraion', hint: 'Book configuration services by the hour'}),
(ansNetworkTest:Answer {uuid: 'ccb63a4e-75b5-11ea-bc55-0242ac130003', text: 'Network test', hint: 'Book by project'}),
(ansPreDeliveryInspect:Answer {uuid: 'ccb63ba2-75b5-11ea-bc55-0242ac130003', text: 'Pre-delivery inspection', hint: 'Book by product'}),
(ansStorage:Answer {uuid: 'ccb63d14-75b5-11ea-bc55-0242ac130003', text: 'Storage', hint: 'Technology unit storage, by area or by day'}),
(ansDisposal:Answer {uuid: '698c1aa2-7fc8-11ea-bc55-0242ac130003', text: 'Disposal', hint: 'Tech disposal and recycle services, by weight or by product'}),
(ansInfoAssuredServices:Answer {uuid: '698c1cb4-7fc8-11ea-bc55-0242ac130003', text: 'Information assured services', hint: 'Services with an extra layer of security required by Ministry of Defence and some other organisations. Includes IT service desk, system installation, training, hire of goods, hardware asset management, software asset management, escrow and more.'}),
(ansSoftware:Answer {uuid: '698c1da4-7fc8-11ea-bc55-0242ac130003', text: 'Software', hint: 'For example, software licenses, open source software, commercial software'}),
(ansHardware:Answer {uuid: '698c1e80-7fc8-11ea-bc55-0242ac130003', text: 'Hardware', hint: 'For example, laptops, printers and keyboards'}),
(ansHardwareSoftwareICTSolutions:Answer {uuid: '698c2060-7fc8-11ea-bc55-0242ac130003', text: 'Hardware and software ICT solutions', hint: 'For example, laptops with pre-installed software for professional video editing'}),
(ansAV:Answer {uuid: '698c2146-7fc8-11ea-bc55-0242ac130003', text: 'Audio visual', hint: 'For example, purchase and installation of an AV system for a town hall, or whiteboards in a classroom'}),

// Tree Structure
(jrnyTechEduTach)-[:FIRST_QUESTION]->(qiProdService:QuestionInstance:Outcome {uuid: '698c220e-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnProductOrService),

// Product / Service (Product)
(ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
(ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(qiProductOnlySector:QuestionInstance:Outcome {uuid: '698c22ea-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service (Product) -> Sector (Edu) -> EduTech Lots 4&5
(ansGrpProductSectorEdu:AnswerGroup {name: 'ansGrpProductSectorEdu'}),
(qiProductOnlySector)-[:HAS_ANSWER_GROUP]->(ansGrpProductSectorEdu),
(ansGrpProductSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot4),
(ansGrpProductSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot5),

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
(ansGrpProductSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpProductSectorNonEdu)-[:HAS_OUTCOME]->(lotTP2Lot6),

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
(ansGrpServiceBroadbandFibreSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot3),

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
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpServiceBroadbandFibreSectorNonEdu)-[:HAS_OUTCOME]->(lotNetworkServices2),

// Product / Service? (Service) -> Service? (Broadband Service)
(ansGrpServiceBroadbandService:AnswerGroup {name: 'ansGrpServiceBroadbandService'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandService),
(ansGrpServiceBroadbandService)-[:HAS_ANSWER {order: 2}]->(ansBroadbandService),
(ansGrpServiceBroadbandService)-[:HAS_OUTCOME]->(qiServiceBBSvcSector:QuestionInstance:Outcome {uuid: '698c274a-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service? (Service) -> Service? (Broadband Service) -> Sector? (Edu) -> EduTech Lot 3
(ansGrpServiceBroadbandServiceSectorEdu:AnswerGroup {name: 'ansGrpServiceBroadbandServiceSectorEdu'}),
(qiServiceBBSvcSector)-[:HAS_ANSWER_GROUP]->(ansGrpServiceBroadbandServiceSectorEdu),
(ansGrpServiceBroadbandServiceSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpServiceBroadbandServiceSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot3),

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
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpServiceBroadbandServiceSectorNonEdu)-[:HAS_OUTCOME]->(lotNetworkServices2),

// Product / Service? (Service) -> Service? (Other) -> Tech Services 2
(ansGrpServiceOtherService:AnswerGroup {name: 'ansGrpServiceOtherService'}),
(qiServiceOnlyWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpServiceOtherService),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 3}]->(ansTechStrategyAndSvcDesign),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 4}]->(ansTransitionTransformation),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 5}]->(ansOperationalServices),
(ansGrpServiceOtherService)-[:HAS_ANSWER {order: 6}]->(ansProgsLargeProjects),
(ansGrpServiceOtherService)-[:HAS_OUTCOME]->(lotTS2),

// Product / Service(Product & Service)
(ansGrpProductAndService:AnswerGroup {name: 'ansGrpProductAndService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndService),
(ansGrpProductAndService)-[:HAS_ANSWER {order: 3}]->(ansProductAndService),
(ansGrpProductAndService)-[:HAS_OUTCOME]->(qiProductAndServiceWhichService:QuestionInstance:Outcome {uuid: '698c23bc-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// Product / Service(Product & Service) -> Service? (BaT) -> Sector?
(ansGrpProductAndServiceBaT:AnswerGroup {name: 'ansGrpProductAndServiceBaT'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceBaT),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 1}]->(ansDelivery),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 2}]->(ansExtendedWarranty),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 3}]->(ansAssetTagging),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 4}]->(ansTraining),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 5}]->(ansInstallation),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 6}]->(ansImaging),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 7}]->(ansConfiguraion),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 8}]->(ansNetworkTest),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 9}]->(ansPreDeliveryInspect),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 10}]->(ansStorage),
(ansGrpProductAndServiceBaT)-[:HAS_ANSWER {order: 11}]->(ansDisposal),
(ansGrpProductAndServiceBaT)-[:HAS_OUTCOME]->(qiProductOnlySector),

// Product / Service(Product & Service) -> Service? (Info Assured products) -> TePAS Lot 4
(ansGrpProductAndServiceInfoAss:AnswerGroup {name: 'ansGrpProductAndServiceInfoAss'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceInfoAss),
(ansGrpProductAndServiceInfoAss)-[:HAS_ANSWER {order: 12}]->(ansInfoAssuredServices),
(ansGrpProductAndServiceInfoAss)-[:HAS_OUTCOME]->(lotTePASLot4),

// Product / Service(Product & Service) -> Service? (Software) -> TePAS Lot 3
(ansGrpProductAndServiceSoftware:AnswerGroup {name: 'ansGrpProductAndServiceSoftware'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceSoftware),
(ansGrpProductAndServiceSoftware)-[:HAS_ANSWER {order: 13}]->(ansSoftware),
(ansGrpProductAndServiceSoftware)-[:HAS_OUTCOME]->(lotTePASLot3),

// Product / Service(Product & Service) -> Service? (Hardware) -> Sector?
(ansGrpProductAndServiceHardware:AnswerGroup {name: 'ansGrpProductAndServiceHardware'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHardware),
(ansGrpProductAndServiceHardware)-[:HAS_ANSWER {order: 14}]->(ansHardware),
(ansGrpProductAndServiceHardware)-[:HAS_OUTCOME]->(qiProductAndServiceHardwareSector:QuestionInstance:Outcome {uuid: '698c2bc8-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service(Product & Service) -> Service? (Hardware) -> Sector? (Edu) -> EduTech Lot 4
(ansGrpProductAndServiceHardwareSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceHardwareSectorEdu'}),
(qiProductAndServiceHardwareSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHardwareSectorEdu),
(ansGrpProductAndServiceHardwareSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceHardwareSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot4),

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
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpProductAndServiceHardwareSectorNonEdu)-[:HAS_OUTCOME]->(lotTePASLot2),

// Product / Service(Product & Service) -> Service? (H/Sftware/ICT Solutions) -> Sector?
(ansGrpProductAndServiceHdSftwareICT:AnswerGroup {name: 'ansGrpProductAndServiceHdSftwareICT'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHdSftwareICT),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_ANSWER {order: 15}]->(ansHardwareSoftwareICTSolutions),
(ansGrpProductAndServiceHdSftwareICT)-[:HAS_OUTCOME]->(qiProductAndServiceHdSftwareICTSector:QuestionInstance:Outcome {uuid: '698c2812-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service(Product & Service) -> Service? (H/Sftware/ICT Solutions) -> Sector? (Edu) -> EduTech Lot 1
(ansGrpProductAndServiceHdSftwareICTSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceHdSftwareICTSectorEdu'}),
(qiProductAndServiceHdSftwareICTSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceHdSftwareICTSectorEdu),
(ansGrpProductAndServiceHdSftwareICTSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceHdSftwareICTSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot1),

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
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpProductAndServiceHdSftwareICTSectorNonEdu)-[:HAS_OUTCOME]->(lotTePASLot1),

// Product / Service(Product & Service) -> Service? (AV) -> Sector?
(ansGrpProductAndServiceAV:AnswerGroup {name: 'ansGrpProductAndServiceAV'}),
(qiProductAndServiceWhichService)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceAV),
(ansGrpProductAndServiceAV)-[:HAS_ANSWER {order: 16}]->(ansAV),
(ansGrpProductAndServiceAV)-[:HAS_OUTCOME]->(qiProductAndServiceAVSector:QuestionInstance:Outcome {uuid: '698c2998-7fc8-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Product / Service(Product & Service) -> Service? (AV) -> Sector? (Edu) -> EduTech Lot 5
(ansGrpProductAndServiceAVSectorEdu:AnswerGroup {name: 'ansGrpProductAndServiceAVSectorEdu'}),
(qiProductAndServiceAVSector)-[:HAS_ANSWER_GROUP]->(ansGrpProductAndServiceAVSectorEdu),
(ansGrpProductAndServiceAVSectorEdu)-[:HAS_ANSWER {order: 1}]->(ansSectorEdu),
(ansGrpProductAndServiceAVSectorEdu)-[:HAS_OUTCOME]->(lotEduTechLot5),

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
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_ANSWER {order: 10}]->(ansSectorWPS),
(ansGrpProductAndServiceAVSectorNonEdu)-[:HAS_OUTCOME]->(lotTePASLot2);
