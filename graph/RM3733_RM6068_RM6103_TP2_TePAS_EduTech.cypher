MATCH
// Required QuestionDefinition nodes:
(qstnProductOrService:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnSector:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003'}),
(ansService:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003'}),
(ansProductService:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003'}),

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
(lotEduTechLot3:Lot:Outcome {uuid: 'ccb618e8-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 3 - Broadband Services', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'BAT'}),
(lotEduTechLot4:Lot:Outcome {uuid: 'ccb61a32-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 4 - Hardware', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'BAT'}),
(lotEduTechLot5:Lot:Outcome {uuid: 'ccb61b7c-75b5-11ea-bc55-0242ac130003', agreementName: 'Education Technology', lotName: 'Lot 5 - Audio Visual', description: 'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.', agreementId: 'RM6103', url: '', type: 'BAT'}),

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

// TODO - HERE!!

// Tech/EduTech specific answers
(ansStandardWash:Answer {uuid: '', text: 'Standard wash', hint: 'Laundry service including washing, finishing, collection and return of Buyer’s own linen items.'}),
(ansLinenHireStandardWash:Answer {uuid: '', text: 'Linen hire with standard wash', hint: 'Hire of linen, such as bed sheets and blankets, and includes washing, finishing, collection and return.'}),
(ansTheatrePacksGowns:Answer {uuid: '', text: 'Theatre pack and gowns', hint: 'Laundry services for re-useable Theatre packs such as surgical gowns, drapes and packs. Includes washing, finishing, collection and return.'}),
(ansCleanroomServices:Answer {uuid: '', text: 'Cleanroom services', hint: 'Specialist Cleanroom laundry services including washing, finishing, collection and return of cleanroom garments at the required ISO classification. '}),

(ansSecurity:Answer {uuid: '', text: 'Security'}),
(ansGroundsMaintenance:Answer {uuid: '', text: 'Grounds maintenance'}),
(ansCatering:Answer {uuid: '', text: 'Catering'}),
(ansPestControl:Answer {uuid: '', text: 'Pest Control'}),

// Tree Structure
(jrnyTechEduTach)-[:FIRST_QUESTION]->(qiProdService:QuestionInstance:Outcome {uuid: 'ccb5a43a-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnProductOrService),

// Product - End GM - Route to FM
(ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
(ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Service
(ansGrpService:AnswerGroup {name: 'ansGrpService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpService),
(ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
(ansGrpService)-[:HAS_OUTCOME]->(qiBudget:QuestionInstance:Outcome {uuid: 'ccb5a4f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnBudget),
