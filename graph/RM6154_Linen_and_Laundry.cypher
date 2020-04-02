MATCH
// Required QuestionDefinition nodes:
(qstnProductOrService:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnBudget:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),
(qstnContractLength:QuestionDefinition {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnAdditionalServices:QuestionDefinition {uuid: 'b879c342-654e-11ea-bc55-0242ac130003'}),
(qstnNeedsCapturedMandatoryList:QuestionDefinition {uuid: 'ccb59d82-75b5-11ea-bc55-0242ac130003'}),
(qstnServiceRelatedMandatoryList:QuestionDefinition {uuid: 'ccb59e40-75b5-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansYes:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003'}),
(ansNo:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003'}),

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
(lotLinenLaundryLot1bDA:Lot:Outcome {uuid: 'ccb59bfc-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 1b - Direct Award)', description: 'Standard Wash Linen and Laundry Services', agreementId: 'RM6154', url: ''}),
(lotLinenLaundryLot1bFC:Lot:Outcome {uuid: 'ccb59cc4-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 1b - Further Competition)', description: 'Standard Wash Linen and Laundry Services', agreementId: 'RM6154', url: ''}),
(lotLinenLaundryLot1aDA:Lot:Outcome {uuid: 'ccb5a002-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 1a - Direct Award)', description: 'Linen Hire with Standard Wash Linen and Laundry Services', agreementId: 'RM6154', url: ''}),
(lotLinenLaundryLot1aFC:Lot:Outcome {uuid: 'ccb5a1e2-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 1a - Further Competition)', description: 'Linen Hire with Standard Wash Linen and Laundry Services', agreementId: 'RM6154', url: ''}),
(lotLinenLaundryLot2:Lot:Outcome {uuid: 'ccb5a2b4-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 2)', description: 'Specialist Laundry Services (Theatre Packs)', agreementId: 'RM6154', url: ''}),
(lotLinenLaundryLot3:Lot:Outcome {uuid: 'ccb5a37c-75b5-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services (Lot 3)', description: 'Specialist Cleanroom Laundry Services', agreementId: 'RM6154', url: ''}),


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
(ansGrpProduct)-[:HAS_ANSWER]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Service
(ansGrpService:AnswerGroup {name: 'ansGrpService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpService),
(ansGrpService)-[:HAS_ANSWER]->(ansService),
(ansGrpService)-[:HAS_OUTCOME]->(qiBudget:QuestionInstance:Outcome {uuid: 'ccb5a4f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnBudget),

// Service - Small Projects Branch
(ansGrpBudgetLTMillion:AnswerGroup {name: 'ansGrpBudgetLTMillion'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetLTMillion),
(ansGrpBudgetLTMillion)-[:HAS_ANSWER]->(ansBudgetLTMillion),
(ansGrpBudgetLTMillion)-[:HAS_OUTCOME]->(qiContractLengthSP:QuestionInstance:Outcome {uuid: 'ccb5a6ec-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnContractLength),

// Contract Length
(ansGrpContractLengthLT12Months:AnswerGroup {name: 'ansGrpContractLengthLT12Months'}),
(qiContractLengthSP)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthLT12Months),
(ansGrpContractLengthLT12Months)-[:HAS_ANSWER]->(ansContractLengthLT12Months),
(ansGrpContractLengthLT12Months)-[:HAS_OUTCOME]->(qiServiceSP:QuestionInstance:Outcome {uuid: 'ccb5a872-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

(ansGrpContractLengthGT12Months:AnswerGroup {name: 'ansGrpContractLengthGT12Months'}),
(qiContractLengthSP)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthGT12Months),
(ansGrpContractLengthGT12Months)-[:HAS_ANSWER]->(ansContractLengthGT12Months),
(ansGrpContractLengthGT12Months)-[:HAS_OUTCOME]->(qiServiceBP:QuestionInstance:Outcome {uuid: 'ccb5a930-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// SP (< 12 months)
// SP - Standard Wash
(ansGrpSPServiceStdWash:AnswerGroup {name: 'ansGrpSPServiceStdWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWash),
(ansGrpSPServiceStdWash)-[:HAS_ANSWER]->(ansStandardWash),
(ansGrpSPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPStndWash:QuestionInstance:Outcome {uuid: 'ccb5a9f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpSPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvYes),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpSPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(qiNeedsCapturedMandatoryList:QuestionInstance:Outcome {uuid: 'ccb5bca4-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnNeedsCapturedMandatoryList),

// Needs captured mandatory list - Yes
(ansGrpNeedsCapturedMandatoryListYes:AnswerGroup {name: 'ansGrpNeedsCapturedMandatoryListYes'}),
(qiNeedsCapturedMandatoryList)-[:HAS_ANSWER_GROUP]->(ansGrpNeedsCapturedMandatoryListYes),
(ansGrpNeedsCapturedMandatoryListYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpNeedsCapturedMandatoryListYes)-[:HAS_OUTCOME]->(lotLinenLaundryLot1bDA),

// Needs captured mandatory list - No
(ansGrpNeedsCapturedMandatoryListNo:AnswerGroup {name: 'ansGrpNeedsCapturedMandatoryListNo'}),
(qiNeedsCapturedMandatoryList)-[:HAS_ANSWER_GROUP]->(ansGrpNeedsCapturedMandatoryListNo),
(ansGrpNeedsCapturedMandatoryListNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpNeedsCapturedMandatoryListNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1bFC),

// SP - Linen hire + standard Wash
(ansGrpSPLinenHireStandardWash:AnswerGroup {name: 'ansGrpSPLinenHireStandardWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_ANSWER]->(ansLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b326-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpSPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvYes),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpSPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(qiServiceRelatedMandatoryList:QuestionInstance:Outcome {uuid: 'ccb5bbdc-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServiceRelatedMandatoryList),

// Service related mandatory list - Yes
(ansGrpServiceRelatedMandatoryListYes:AnswerGroup {name: 'ansGrpServiceRelatedMandatoryListYes'}),
(qiServiceRelatedMandatoryList)-[:HAS_ANSWER_GROUP]->(ansGrpServiceRelatedMandatoryListYes),
(ansGrpServiceRelatedMandatoryListYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpServiceRelatedMandatoryListYes)-[:HAS_OUTCOME]->(lotLinenLaundryLot1aDA),

// Service related mandatory list - No
(ansGrpServiceRelatedMandatoryListNo:AnswerGroup {name: 'ansGrpServiceRelatedMandatoryListNo'}),
(qiServiceRelatedMandatoryList)-[:HAS_ANSWER_GROUP]->(ansGrpServiceRelatedMandatoryListNo),
(ansGrpServiceRelatedMandatoryListNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpServiceRelatedMandatoryListNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1aFC),

// SP - Theatre packs and gowns
(ansGrpSPTheatrePacksGowns:AnswerGroup {name: 'ansGrpSPTheatrePacksGowns'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_ANSWER]->(ansTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesSPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5b5a6-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpSPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvYes),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpSPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot2),

// SP - Cleanroom services
(ansGrpSPCleanroomServices:AnswerGroup {name: 'ansGrpSPCleanroomServices'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServices),
(ansGrpSPCleanroomServices)-[:HAS_ANSWER]->(ansCleanroomServices),
(ansGrpSPCleanroomServices)-[:HAS_OUTCOME]->(qiAdditionalServicesSPClnRmSvcs:QuestionInstance:Outcome {uuid: 'ccb5b678-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpSPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvYes),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpSPCleanroomServicesAddSrvNo:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvNo'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvNo),
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot3),

// BP (> 12 months)
// Service - Big Projects Branch
(ansGrpBudgetGTMillion:AnswerGroup {name: 'ansGrpBudgetGTMillion'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetGTMillion),
(ansGrpBudgetGTMillion)-[:HAS_ANSWER]->(ansBudgetGTMillion),
(ansGrpBudgetGTMillion)-[:HAS_OUTCOME]->(qiServiceBP),

// BP - Standard Wash
(ansGrpBPServiceStdWash:AnswerGroup {name: 'ansGrpBPServiceStdWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWash),
(ansGrpBPServiceStdWash)-[:HAS_ANSWER]->(ansStandardWash),
(ansGrpBPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPStndWash:QuestionInstance:Outcome {uuid: 'ccb5b754-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpBPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvYes),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

(ansGrpBPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1bFC),

// BP - Linen hire + standard Wash
(ansGrpBPLinenHireStandardWash:AnswerGroup {name: 'ansGrpBPLinenHireStandardWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_ANSWER]->(ansLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b81c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpBPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvYes),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpBPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot1aFC),

// BP - Theatre packs and gowns
(ansGrpBPTheatrePacksGowns:AnswerGroup {name: 'ansGrpBPTheatrePacksGowns'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_ANSWER]->(ansTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesBPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5ba4c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpBPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvYes),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpBPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot2),

// BP - Cleanroom services
(ansGrpBPCleanroomServices:AnswerGroup {name: 'ansGrpBPCleanroomServices'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServices),
(ansGrpBPCleanroomServices)-[:HAS_ANSWER]->(ansCleanroomServices),
(ansGrpBPCleanroomServices)-[:HAS_OUTCOME]->(qiAdditionalServicesBPClnRmSvcs:QuestionInstance:Outcome {uuid: 'ccb5bb14-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - Yes
(ansGrpBPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvYes),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER]->(ansYes),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(resultGMEndRouteToFM),

// Add srv - No
(ansGrpBPCleanroomServicesAddSrvNo:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvNo'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvNo),
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_ANSWER]->(ansNo),
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(lotLinenLaundryLot3);
