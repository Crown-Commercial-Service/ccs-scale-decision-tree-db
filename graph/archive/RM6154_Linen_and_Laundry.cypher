MATCH
// Questions
(qstnProductOrService:Question {uuid: '00888ff8-4327-4f46-a03b-8c6556b1fcac'}),
(qstnService:Question {uuid: 'e415219f-f3e9-40a6-ab2b-ba73f44ce56d'}),
(qstnAdditionalServices:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003'}),
(qstnBudgetKnown:Question {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),
(qstnBudgetValue:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e'}),
(qstnContractLengthKnown:Question {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003'}),
(qstnContractLengthValue:Question {uuid: '754c6fbb-4525-4468-89d6-148ac26ec7f9'}),

// Answers
(ansNo:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003'}),
(ansProduct:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003'}),
(ansService:Answer {uuid: '17877ddd-910d-48cc-b219-fb910fb696a3'}),

// Outcomes
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Additional answer nodes for conditional input
(ansYesBudgetKnown:Answer {uuid: '1144b698-c399-4b89-adb6-eb78bc3941ad', text: 'Yes'}),
(ansYesContractKnown:Answer {uuid: '01e3a952-0083-4cae-9b2c-bf4065d5884b', text: 'Yes'}),
(ansNoAddFacSvcsRqd:Answer {uuid: '90b98728-07a9-4bbb-acc6-ef7052cd4e3b', text: 'No, I have everything I need'}),

// Journey
(jrnyLinenLaundry:Journey {uuid: 'b87a0636-654e-11ea-bc55-0242ac130003', name: 'Linen and Laundry Services'}),

// Linen & Laundry specific answers
(ansStandardWash:Answer {uuid: 'b87a0bcc-654e-11ea-bc55-0242ac130003', text: 'Standard wash', hint: 'Laundry service including washing, finishing, collection and return of your own linen items'}),
(ansLinenHireStandardWash:Answer {uuid: 'ccb58fd6-75b5-11ea-bc55-0242ac130003', text: 'Linen hire with standard wash', hint: 'Hire of linen, such as bed sheets and blankets. Service includes washing, finishing, collection and return'}),
(ansTheatrePacksGowns:Answer {uuid: 'ccb5924c-75b5-11ea-bc55-0242ac130003', text: 'Theatre pack and gowns', hint: 'Laundry services for re-useable theatre packs such as surgical gowns, drapes and packs. Service includes washing, finishing, collection and return'}),
(ansCleanroomServices:Answer {uuid: 'ccb59350-75b5-11ea-bc55-0242ac130003', text: 'Cleanroom services', hint: 'Specialist cleanroom laundry services including washing, finishing, collection and return of cleanroom garments at the required ISO classification'}),

(ansSecurity:Answer {uuid: 'ccb5958a-75b5-11ea-bc55-0242ac130003', text: 'Security', hint: 'For example, guards or CCTV'}),
(ansGroundsMaintenance:Answer {uuid: 'ccb59666-75b5-11ea-bc55-0242ac130003', text: 'Grounds maintenance', hint: 'For example, regular window cleaning or path resurfacing'}),
(ansCatering:Answer {uuid: 'ccb59742-75b5-11ea-bc55-0242ac130003', text: 'Catering', hint: 'For example, regular pre-made food delivery or on-site cooking'}),
(ansPestControl:Answer {uuid: 'ccb59800-75b5-11ea-bc55-0242ac130003', text: 'Pest control', hint: 'For example, dealing with wasps or mice'}),
(ansAnythingElseFacManSvcs:Answer {uuid: 'bcc7cb04-0ef4-433c-8884-52bf57ccc31b', text: 'Anything else', hint: 'A facilities management item not listed here'}),

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
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpSPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpSPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpSPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesSPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpSPCleanroomServicesAddSrvYes),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(spCleanroomRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpSPCleanroomServicesAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'bd6ae0b7-d76c-4e09-8ec1-63154103ba94', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spCleanroomRM6232),

// SP - Theatre packs and gowns
(ansGrpSPTheatrePacksGowns:AnswerGroup {name: 'ansGrpSPTheatrePacksGowns'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpSPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesSPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5b5a6-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvNo),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpSPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpSPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpSPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesSPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGownsAddSrvYes),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(spTheatrePacksRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpSPTheatrePacksGownsAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'ac9febb2-ce6f-4e35-9241-ac98e5b389cf', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spTheatrePacksRM6232),

// SP - Linen hire + standard Wash
(ansGrpSPLinenHireStandardWash:AnswerGroup {name: 'ansGrpSPLinenHireStandardWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpSPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b326-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvNo),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpSPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

// Add srv - Yes
(ansGrpSPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpSPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesSPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPLinenHireStandardWashAddSrvYes),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(spLinenHireRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpSPLinenHireStandardWashAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'c2dd62a6-30f4-4ee2-b744-8f9aac63e4eb', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spLinenHireRM6232),

// SP - Standard Wash
(ansGrpSPServiceStdWash:AnswerGroup {name: 'ansGrpSPServiceStdWash'}),
(qiServiceSP)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWash),
(ansGrpSPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpSPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesSPStndWash:QuestionInstance:Outcome {uuid: 'ccb5a9f8-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpSPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvNo),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpSPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

// Add srv - Yes
(ansGrpSPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpSPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesSPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpSPServiceStdWashAddSrvYes),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(spStdWashRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpSPServiceStdWashAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '1cd5b19b-2a85-451f-a41d-ceac170f7d64', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spStdWashRM6232),

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
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpBPCleanroomServicesAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPCleanroomServicesAddSrvYes:AnswerGroup {name: 'ansGrpBPCleanroomServicesAddSrvYes'}),
(qiAdditionalServicesBPClnRmSvcs)-[:HAS_ANSWER_GROUP]->(ansGrpBPCleanroomServicesAddSrvYes),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_OUTCOME]->(spBPCleanroomSvcsRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpBPCleanroomServicesAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'fa0789a0-b109-44c1-8925-34af716a9d99', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spBPCleanroomSvcsRM6232),

// BP - Theatre packs and gowns
(ansGrpBPTheatrePacksGowns:AnswerGroup {name: 'ansGrpBPTheatrePacksGowns'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpSPTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_ANSWER {order: 2}]->(ansTheatrePacksGowns),
(ansGrpBPTheatrePacksGowns)-[:HAS_OUTCOME]->(qiAdditionalServicesBPTPGowns:QuestionInstance:Outcome {uuid: 'ccb5ba4c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPTheatrePacksGownsAddSrvNo:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvNo'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvNo),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpBPTheatrePacksGownsAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPTheatrePacksGownsAddSrvYes:AnswerGroup {name: 'ansGrpBPTheatrePacksGownsAddSrvYes'}),
(qiAdditionalServicesBPTPGowns)-[:HAS_ANSWER_GROUP]->(ansGrpBPTheatrePacksGownsAddSrvYes),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_OUTCOME]->(spBPTheatrePacksRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpBPTheatrePacksGownsAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '5e66c2a3-2a2c-4bb9-988f-5a0530163910', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spBPTheatrePacksRM6232),

// BP - Linen hire + standard Wash
(ansGrpBPLinenHireStandardWash:AnswerGroup {name: 'ansGrpBPLinenHireStandardWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_ANSWER {order: 3}]->(ansLinenHireStandardWash),
(ansGrpBPLinenHireStandardWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPLHStndWash:QuestionInstance:Outcome {uuid: 'ccb5b81c-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPLinenHireStandardWashAddSrvNo:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvNo'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvNo),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpBPLinenHireStandardWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPLinenHireStandardWashAddSrvYes:AnswerGroup {name: 'ansGrpBPLinenHireStandardWashAddSrvYes'}),
(qiAdditionalServicesBPLHStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPLinenHireStandardWashAddSrvYes),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_OUTCOME]->(spBPLinenHireRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpBPLinenHireStandardWashAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '5bb378b7-38fd-425f-965a-85823284690c', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spBPLinenHireRM6232),

// BP - Standard Wash
(ansGrpBPServiceStdWash:AnswerGroup {name: 'ansGrpBPServiceStdWash'}),
(qiServiceBP)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWash),
(ansGrpBPServiceStdWash)-[:HAS_ANSWER {order: 4}]->(ansStandardWash),
(ansGrpBPServiceStdWash)-[:HAS_OUTCOME]->(qiAdditionalServicesBPStndWash:QuestionInstance:Outcome {uuid: 'ccb5b754-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnAdditionalServices),

// Add srv - No
(ansGrpBPServiceStdWashAddSrvNo:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvNo'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvNo),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_ANSWER {order: 6, mutex: true}]->(ansNoAddFacSvcsRqd),
(ansGrpBPServiceStdWashAddSrvNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6154'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', routeToMarket: "FC", scale: true}),

// Add srv - Yes
(ansGrpBPServiceStdWashAddSrvYes:AnswerGroup {name: 'ansGrpBPServiceStdWashAddSrvYes'}),
(qiAdditionalServicesBPStndWash)-[:HAS_ANSWER_GROUP]->(ansGrpBPServiceStdWashAddSrvYes),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 2}]->(ansGroundsMaintenance),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 3}]->(ansCatering),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 4}]->(ansPestControl),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnythingElseFacManSvcs),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_OUTCOME]->(spBPStdWashRM6232:Agreement:Outcome {number: 'RM6232'}),
(ansGrpBPServiceStdWashAddSrvYes)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '87c32eb1-2dca-4d5e-9d04-3ed69097c658', group: 'add_fac_mgmt', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(spBPStdWashRM6232);
