MATCH
// Required QuestionDefinition nodes:
(qstnProductOrService:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnBudget:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),
(qstnContractLength:QuestionDefinition {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnAdditionalServices:QuestionDefinition {uuid: 'b879c342-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansYes:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003'}),
(ansNo:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003'}),
(ansOther:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003'}),

(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003'}),
(ansService:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003'}),

(ansBudgetLTMillion:Answer {uuid: 'b87a0780-654e-11ea-bc55-0242ac130003'}),
(ansBudgetGTMillion:Answer {uuid: 'b87a08a2-654e-11ea-bc55-0242ac130003'}),

(ansContractLengthLT12Months:Answer {uuid: 'b87a09a6-654e-11ea-bc55-0242ac130003'}),
(ansContractLengthGT12Months:Answer {uuid: 'b87a0adc-654e-11ea-bc55-0242ac130003'}),

// Generic endpoints
(resultGMEndRouteToFM:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003'})

CREATE
// Journey
(jrnyLinenLaundry:Journey {uuid: 'b87a0636-654e-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services', searchTerms: ['cleanroom', 'linen', 'laundry services', 'linen hire']}),

// Agreement lots (journey endpoints)
// Lots 1a & 1b (indeterminate RTM)
(lotLinenLaundryLot1b:Lot:Outcome {uuid: 'ccb59bfc-75b5-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 1b', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 1b will be responsible for providing standard wash linen and laundry services which includes the processing (wash and finish) and transportation (collection and return) of linen items to the buyer. Providing your needs meet the criteria, Lot 1b has a direct award facility. This option can be useful if you need a short term solution while you carry out a review of your needs.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true}),

(lotLinenLaundryLot1a:Lot:Outcome {uuid: 'ccb5a002-75b5-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 1a', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 1a will be responsible for providing standard wash linen and laundry services which includes the processing (wash and finish) and transportation (collection and return) of linen items to the buyer, including the hire of linen items. Providing your needs meet the criteria, Lot 1a has a direct award facility. This option can be useful if you need a short term solution while you carry out a review of your needs.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true}),

// Lots 1a & 1b (FC)
(lotLinenLaundryLot1bFC:Lot:Outcome {uuid: '698c30b4-7fc8-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 1b', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 1b will be responsible for providing standard wash linen and laundry services which includes the processing (wash and finish) and transportation (collection and return) of linen items to the buyer. Providing your needs meet the criteria, Lot 1b has a direct award facility. This option can be useful if you need a short term solution while you carry out a review of your needs.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

(lotLinenLaundryLot1aFC:Lot:Outcome {uuid: '698c317c-7fc8-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 1a', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 1a will be responsible for providing standard wash linen and laundry services which includes the processing (wash and finish) and transportation (collection and return) of linen items to the buyer, including the hire of linen items. Providing your needs meet the criteria, Lot 1a has a direct award facility. This option can be useful if you need a short term solution while you carry out a review of your needs.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

(lotLinenLaundryLot2:Lot:Outcome {uuid: 'ccb5a2b4-75b5-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 2', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 2 will be responsible for providing specialist laundry services (theater packs and drapes, CE marked) to the standard asset out in the framework specification or the customer's specification at call off. This includes the processing (wash and finish) and transportation (collection and return) of items, which are hired to the buyer from the supplier.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),

(lotLinenLaundryLot3:Lot:Outcome {uuid: 'ccb5a37c-75b5-11ea-bc55-0242ac130003', agreementName: 'Linen and Laundry Services', lotName: 'Lot 3', agreementDescription: 'Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.', lotDescription: "Suppliers appointed to Lot 3 will be responsible for the provision of Specialist Cleanroom Laundry Services including the processing (wash and finish) and transportation (collection and return) of cleanroom garments at the ISO classification specified by the buyer at further competition.", agreementId: 'RM6154', url: '', type: 'CAT', scale: true, routeToMarket: "FC"}),


// Linen & Laundry specific answers
(ansStandardWash:Answer {uuid: 'b87a0bcc-654e-11ea-bc55-0242ac130003', text: 'Standard wash', hint: 'Laundry service including washing, finishing, collection and return of Buyer’s own linen items.'}),
(ansLinenHireStandardWash:Answer {uuid: 'ccb58fd6-75b5-11ea-bc55-0242ac130003', text: 'Linen hire with standard wash', hint: 'Hire of linen, such as bed sheets and blankets, and includes washing, finishing, collection and return.'}),
(ansTheatrePacksGowns:Answer {uuid: 'ccb5924c-75b5-11ea-bc55-0242ac130003', text: 'Theatre pack and gowns', hint: 'Laundry services for re-useable Theatre packs such as surgical gowns, drapes and packs. Includes washing, finishing, collection and return.'}),
(ansCleanroomServices:Answer {uuid: 'ccb59350-75b5-11ea-bc55-0242ac130003', text: 'Cleanroom services', hint: 'Specialist Cleanroom laundry services including washing, finishing, collection and return of cleanroom garments at the required ISO classification. '}),

(ansSecurity:Answer {uuid: 'ccb5958a-75b5-11ea-bc55-0242ac130003', text: 'Security'}),
(ansGroundsMaintenance:Answer {uuid: 'ccb59666-75b5-11ea-bc55-0242ac130003', text: 'Grounds maintenance'}),
(ansCatering:Answer {uuid: 'ccb59742-75b5-11ea-bc55-0242ac130003', text: 'Catering'}),
(ansPestControl:Answer {uuid: 'ccb59800-75b5-11ea-bc55-0242ac130003', text: 'Pest Control'}),

// Tree Structure
(jrnyLinenLaundry)-[:FIRST_QUESTION]->(qiProdService:QuestionInstance:Outcome {uuid: 'ccb5a43a-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnProductOrService),

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

// Service - Small Projects Branch
// Budget < £1m
(ansGrpBudgetLTMillion:AnswerGroup {name: 'ansGrpBudgetLTMillion'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetLTMillion),
(ansGrpBudgetLTMillion)-[:HAS_ANSWER {order: 1}]->(ansBudgetLTMillion),
(ansGrpBudgetLTMillion)-[:HAS_OUTCOME]->(qiContractLengthSP:QuestionInstance:Outcome {uuid: 'ccb5a6ec-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnContractLength),

// Contract Length
(ansGrpContractLengthLT12Months:AnswerGroup {name: 'ansGrpContractLengthLT12Months'}),
(qiContractLengthSP)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthLT12Months),
(ansGrpContractLengthLT12Months)-[:HAS_ANSWER {order: 1}]->(ansContractLengthLT12Months),
(ansGrpContractLengthLT12Months)-[:HAS_OUTCOME]->(qiServiceSP:QuestionInstance:Outcome {uuid: 'ccb5a872-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

(ansGrpContractLengthGT12Months:AnswerGroup {name: 'ansGrpContractLengthGT12Months'}),
(qiContractLengthSP)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthGT12Months),
(ansGrpContractLengthGT12Months)-[:HAS_ANSWER {order: 2}]->(ansContractLengthGT12Months),
(ansGrpContractLengthGT12Months)-[:HAS_OUTCOME]->(qiServiceBP:QuestionInstance:Outcome {uuid: 'ccb5a930-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// Budget > £1m
(ansGrpBudgetGTMillion:AnswerGroup {name: 'ansGrpBudgetGTMillion'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetGTMillion),
(ansGrpBudgetGTMillion)-[:HAS_ANSWER {order: 2}]->(ansBudgetGTMillion),
(ansGrpBudgetGTMillion)-[:HAS_OUTCOME]->(qiServiceBP),

// SP (< 12 months)
// SP - Cleanroom services
(ansGrpSPCleanroomServices:AnswerGroup {name: 'ansGrpSPCleanroomServices'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServices),
(ansGrpSPCleanroomServices)-[:HAS_ANSWER {order: 1}]->(ansCleanroomServices),
(ansGrpSPCleanroomServices)-[:HAS_OUTCOME]->(qiAdditionalServicesSPClnRmSvcs:QuestionInstance:Outcome {uuid: 'ccb5b678-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPCleanroomServicesAddSrvNo:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvNo'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvNo),
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot3),

// Add srv - Yes
(ansGrpSPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvYes),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// SP - Theatre packs and gowns
(ansGrpSPTheatrePacksGowns:AnswerGroup {name: 'ansGrpSPTheatrePacksGowns'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesSPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5b5a6-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot2),

// Add srv - Yes
(ansGrpSPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvYes),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// SP - Linen hire + standard Wash
(ansGrpSPLinenHireStandardWash:AnswerGroup {name: 'ansGrpSPLinenHireStandardWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b326-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1a),

// Add srv - Yes
(ansGrpSPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvYes),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// SP - Standard Wash
(ansGrpSPServiceStdWash:AnswerGroup {name: 'ansGrpSPServiceStdWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWash),
(ansGrpSPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpSPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPStndWash:QuestionInstance:Outcome {uuid: 'ccb5a9f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1b),

// Add srv - Yes
(ansGrpSPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvYes),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// BP (> 12 months)
// Service - Big Projects Branch
// BP - Cleanroom services
(ansGrpBPCleanroomServices:AnswerGroup {name: 'ansGrpBPCleanroomServices'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServices),
(ansGrpBPCleanroomServices)-[:HAS_ANSWER {order: 1}]->(ansCleanroomServices),
(ansGrpBPCleanroomServices)-[:HAS_OUTCOME]->(qiAdditionalServicesBPClnRmSvcs:QuestionInstance:Outcome {uuid: 'ccb5bb14-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPCleanroomServicesAddSrvNo:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvNo'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvNo),
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot3),

// Add srv - Yes
(ansGrpBPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvYes),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// BP - Theatre packs and gowns
(ansGrpBPTheatrePacksGowns:AnswerGroup {name: 'ansGrpBPTheatrePacksGowns'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesBPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5ba4c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot2),

// Add srv - Yes
(ansGrpBPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvYes),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// BP - Linen hire + standard Wash
(ansGrpBPLinenHireStandardWash:AnswerGroup {name: 'ansGrpBPLinenHireStandardWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b81c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1aFC),

// Add srv - Yes
(ansGrpBPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvYes),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// BP - Standard Wash
(ansGrpBPServiceStdWash:AnswerGroup {name: 'ansGrpBPServiceStdWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWash),
(ansGrpBPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpBPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPStndWash:QuestionInstance:Outcome {uuid: 'ccb5b754-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1bFC),

// Add srv - Yes
(ansGrpBPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvYes),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM);
