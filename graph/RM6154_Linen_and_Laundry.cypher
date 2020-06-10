MATCH
// Questions
(qstnProductOrService:Question {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(qstnService:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnAdditionalServices:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003'}),
(qstnBudgetKnown:Question {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),
(qstnBudgetValue:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e'}),
(qstnContractLengthKnown:Question {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003'}),
(qstnContractLengthValue:Question {uuid: '754c6fbb-4525-4468-89d6-148ac26ec7f9'}),

// Answers
(ansNo:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003'}),
(ansOther:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003'}),
(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003'}),
(ansService:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003'}),

// Outcomes
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Additional answer nodes for conditional input
(ansYesBudgetKnown:Answer {uuid: '1144b698-c399-4b89-adb6-eb78bc3941ad', text: 'Yes'}),
(ansYesContractKnown:Answer {uuid: '01e3a952-0083-4cae-9b2c-bf4065d5884b', text: 'Yes'}),

// Journey
(jrnyLinenLaundry:Journey {uuid: 'b87a0636-654e-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services'}),

// Linen & Laundry specific answers
(ansStandardWash:Answer {uuid: 'b87a0bcc-654e-11ea-bc55-0242ac130003', text: 'Standard wash', hint: 'Laundry service including washing, finishing, collection and return of Buyer’s own linen items.'}),
(ansLinenHireStandardWash:Answer {uuid: 'ccb58fd6-75b5-11ea-bc55-0242ac130003', text: 'Linen hire with standard wash', hint: 'Hire of linen, such as bed sheets and blankets, and includes washing, finishing, collection and return.'}),
(ansTheatrePacksGowns:Answer {uuid: 'ccb5924c-75b5-11ea-bc55-0242ac130003', text: 'Theatre pack and gowns', hint: 'Laundry services for re-useable Theatre packs such as surgical gowns, drapes and packs. Includes washing, finishing, collection and return.'}),
(ansCleanroomServices:Answer {uuid: 'ccb59350-75b5-11ea-bc55-0242ac130003', text: 'Cleanroom services', hint: 'Specialist Cleanroom laundry services including washing, finishing, collection and return of cleanroom garments at the required ISO classification. '}),

(ansSecurity:Answer {uuid: 'ccb5958a-75b5-11ea-bc55-0242ac130003', text: 'Security', hint: 'For example, guards or CCTV'}),
(ansGroundsMaintenance:Answer {uuid: 'ccb59666-75b5-11ea-bc55-0242ac130003', text: 'Grounds maintenance', hint: 'For example, regular window cleaning or path resurfacing'}),
(ansCatering:Answer {uuid: 'ccb59742-75b5-11ea-bc55-0242ac130003', text: 'Catering', hint: 'For example, regular pre-made food delivery or onsite cooking'}),
(ansPestControl:Answer {uuid: 'ccb59800-75b5-11ea-bc55-0242ac130003', text: 'Pest Control', hint: 'For example, dealing with wasps or mice'}),

// Tree Structure
(jrnyLinenLaundry)-[:FIRST_QUESTION]->(qiProdService:QuestionInstance:Outcome {uuid: 'ccb5a43a-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnProductOrService),

// Product - End GM - Route to FM
(ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
(ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(resultCCSEscapePage),

// Service
(ansGrpService:AnswerGroup {name: 'ansGrpService'}),
(qiProdService)-[:HAS_ANSWER_GROUP]->(ansGrpService),
(ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
(ansGrpService)-[:HAS_OUTCOME]->(qiBudget:QuestionInstance:Outcome {uuid: 'ccb5a4f8-75b5-11ea-bc55-0242ac130003', conditionalInput: true})-[:DEFINED_BY]->(qstnBudgetKnown),

// Budget Unkown (SP branch, < £1m)
(ansGrpBudgetUnknown:AnswerGroup {name: 'ansGrpBudgetUnknown'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetUnknown),
(ansGrpBudgetUnknown)-[:HAS_ANSWER {order: 2}]->(ansNo),
(ansGrpBudgetUnknown)-[:HAS_OUTCOME]->(qiContractLengthKnown:QuestionInstance:Outcome {uuid: 'ccb5a6ec-75b5-11ea-bc55-0242ac130003', conditionalInput: true})-[:DEFINED_BY]->(qstnContractLengthKnown),

(ansGrpContractLengthKnown:AnswerGroup {name: 'ansGrpContractLengthKnown'}),
(qiContractLengthKnown)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthKnown),
(ansGrpContractLengthKnown)-[:HAS_ANSWER {order: 1}]->(ansYesContractKnown)-[:HAS_CONDITIONAL_INPUT]->(qstnContractLengthValue),
(ansGrpContractLengthKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 0, upperBoundExclusive: 12}]->(qiServiceSP:QuestionInstance:Outcome {uuid: 'ccb5a872-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),
(ansGrpContractLengthKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 12, upperBoundExclusive: 9223372036854775807}]->(qiServiceBP:QuestionInstance:Outcome {uuid: 'ccb5a930-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

(ansGrpContractLengthUnknown:AnswerGroup {name: 'ansGrpContractLengthUnknown'}),
(qiContractLengthKnown)-[:HAS_ANSWER_GROUP]->(ansGrpContractLengthUnknown),
(ansGrpContractLengthUnknown)-[:HAS_ANSWER {order: 2}]->(ansNo),
(ansGrpContractLengthUnknown)-[:HAS_OUTCOME]->(qiServiceSP),

// Budget Known (routing based on bounds)
// TODO: Remove artificial upper & lower bounds
(ansGrpBudgetKnown:AnswerGroup {name: 'ansGrpBudgetKnown'}),
(qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpBudgetKnown),
(ansGrpBudgetKnown)-[:HAS_ANSWER {order: 1}]->(ansYesBudgetKnown)-[:HAS_CONDITIONAL_INPUT]->(qstnBudgetValue),
(ansGrpBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 0, upperBoundExclusive: 1000000}]->(qiContractLengthKnown),
(ansGrpBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 1000000, upperBoundExclusive: 9223372036854775807}]->(qiServiceBP),

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
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpSPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvYes),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// SP - Theatre packs and gowns
(ansGrpSPTheatrePacksGowns:AnswerGroup {name: 'ansGrpSPTheatrePacksGowns'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesSPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5b5a6-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpSPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvYes),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// SP - Linen hire + standard Wash
(ansGrpSPLinenHireStandardWash:AnswerGroup {name: 'ansGrpSPLinenHireStandardWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b326-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Add srv - Yes
(ansGrpSPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvYes),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// SP - Standard Wash
(ansGrpSPServiceStdWash:AnswerGroup {name: 'ansGrpSPServiceStdWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWash),
(ansGrpSPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpSPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPStndWash:QuestionInstance:Outcome {uuid: 'ccb5a9f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

// Add srv - Yes
(ansGrpSPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvYes),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

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
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvYes),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// BP - Theatre packs and gowns
(ansGrpBPTheatrePacksGowns:AnswerGroup {name: 'ansGrpBPTheatrePacksGowns'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesBPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5ba4c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvYes),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// BP - Linen hire + standard Wash
(ansGrpBPLinenHireStandardWash:AnswerGroup {name: 'ansGrpBPLinenHireStandardWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b81c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvYes),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),

// BP - Standard Wash
(ansGrpBPServiceStdWash:AnswerGroup {name: 'ansGrpBPServiceStdWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWash),
(ansGrpBPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpBPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPStndWash:QuestionInstance:Outcome {uuid: 'ccb5b754-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 1}]->(ansNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvYes),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansSecurity),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansGroundsMaintenance),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansCatering),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5}]->(ansPestControl),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 6}]->(ansOther),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'});
