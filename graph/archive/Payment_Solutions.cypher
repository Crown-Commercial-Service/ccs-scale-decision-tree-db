MATCH
(qstnServiceType:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(ansElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'})

CREATE
// Questions
(qstnPaymentCardType:Question {uuid: 'd0d0bb91-b819-4cac-9b17-24b7b4ba8f7b', text: 'What type of payment card do you need?', type: 'LIST'}),

// Answer
(ansMakeAPayment:Answer {uuid: '7df7a9bd-1de3-43de-a4e5-cc0c88e82b43', text: 'Make a payment', hint: 'Use payment cards and prepaid solutions to buy goods and services such as vehicle fuel'}),
(ansReceiveAPayment:Answer {uuid: '3d6b6eef-8e4f-4665-a581-7095c56af59b', text: 'Receive a payment', hint: 'Accept card and alternative payment methods in person or online'}),
(ansPayConsultServ:Answer {uuid: 'f5a22f73-3b51-49ea-bafc-55c163fca7e6', text: 'Payment consultancy services', hint: 'Access strategic advice to help you define your needs for receiving and making payments'}),

(ansDieselPetrolCard:Answer {uuid: 'd2940f4b-e1b4-4d5a-b74a-c0e06d8e3622', text: 'Diesel/petrol card', hint: 'Buy diesel and petrol using a single purpose payment card'}),
(ansAlterFuelCard:Answer {uuid: '41e335ad-3085-465c-8e10-4fb4a6483264', text: 'Alternative fuel card', hint: 'Buy alternative fuels such as low pressure gas (LPG), electricity and hydrogen using a single purpose payment card'}),
(ansProcureCard:Answer {uuid: '29f3bc6d-ed05-4e4d-bc82-908cf70c4741', text: 'Procurement card', hint: 'Pay for goods and services using a card. You will need to pay the card balance in full at the end of each month'}),
(ansPrePaidCard:Answer {uuid: 'c2e82a05-9bf5-48f9-9f03-4a847a54b662', text: 'Pre-paid card', hint: 'An alternative to cash payments. You can preload money onto the card to pay for goods and services'}),
(ansFundsDisburse:Answer {uuid: 'cafd3e9c-ddf3-41e2-bbd4-4d3683280650', text: 'Funds disbursement', hint: 'Allows you to send funds to an eligible bank account or end user. An end user is an individual authorised by a contracting authority to use this service. The contracting authority will need to enter into a call off contract before they can authorise an end user'}),

(ansSolutionsForFaceToFaceAndCNP:Answer {uuid: '33e7d38c-2700-4f1f-89bc-23b2f18b1343', text: 'Solutions for face to face and cardholder not present (CNP) payments', hint: 'Provides service and equipment solutions for accepting payments through face to face, unattended Point Of Sale (POS) terminals such as, car parking machines or CNP. A CNP payment is where the cardholder and card are not present at the point of sale. For example, when a customer is paying online or over the phone'}),
(ansCardNotPresent:Answer {uuid: 'c5f3bed2-e011-457f-b1da-18d6f17fbc6b', text: 'Card not present payment services', hint: 'Access the services you need to accept card payments and other alternative payment methods when the cardholder and card are not present at the point of sale. For example, taking payments by call centre, over the phone or online'}),
(ansMerCardAcquirServ:Answer {uuid: '265858b1-d759-4ba2-872c-5f09db918af6', text: 'Merchant card acquiring services', hint: 'Use this when you already have the equipment and services you need to accept payments but need a merchant acquirer. A merchant acquirer manages the transfer of funds between account providers and merchants. For example, they can authorise transactions from a range of payment types including face to face and CNP'}),
(ansGatewayServices:Answer {uuid: '56471133-a568-40bd-83c3-b08406198f1f', text: 'Gateway services and equipment for accepting face to face and CNP payments', hint: 'Buy gateway equipment and services. A gateway service allows you to process and authorise face to face, CNP and alternative payment method transactions. You will be able to accept payment by contact centre, over the phone or online.  Includes equipment such as wireless and bluetooth terminals (card machines) and customer activated terminals (self checkout stations)'}),
(ansPaymentInitiationServ:Answer {uuid: '3eed6174-e124-453d-9f09-f0dad8ad6d12', text: 'Payment initiation service providers (PISP) open banking', hint: 'Receive faster payments paid directly out of an individual\'s or businesses bank account using online methods such as websites or other digital platforms (such as Paypal), instead of debit or credit cards'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyPayment:Journey {uuid: '43a47701-fc11-4795-b67b-ddd6548dc395', name: 'Payment solutions'}),
(jrnyPayment)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b1817b11-d743-4ccf-a66e-c760438d9eb6'})-[:DEFINED_BY]->(qstnServiceType),

(ansGrpMakeAPayment:AnswerGroup {name: 'ansGrpMakeAPayment'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpMakeAPayment),
(ansGrpMakeAPayment)-[:HAS_ANSWER {order: 1}]->(ansMakeAPayment),
(ansGrpMakeAPayment)-[:HAS_OUTCOME]->(qiPaymentCardType:QuestionInstance:Outcome {uuid: '912ff805-1d6a-49ca-82cd-b984260aed2a'})-[:DEFINED_BY]->(qstnPaymentCardType),

    (ansGrpDieselPetrolCard:AnswerGroup {name: 'ansGrpDieselPetrolCard'}),
    (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpDieselPetrolCard),
    (ansGrpDieselPetrolCard)-[:HAS_ANSWER {order: 1}]->(ansDieselPetrolCard),
    (ansGrpDieselPetrolCard)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6186'}),

    (ansGrpAlterFuelCard:AnswerGroup {name: 'ansGrpAlterFuelCard'}),
    (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpAlterFuelCard),
    (ansGrpAlterFuelCard)-[:HAS_ANSWER {order: 2}]->(ansAlterFuelCard),
    (ansGrpAlterFuelCard)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6186'}),
 
    (ansGrpProcureCard:AnswerGroup {name: 'ansGrpProcureCard'}),
    (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpProcureCard),
    (ansGrpProcureCard)-[:HAS_ANSWER {order: 3}]->(ansProcureCard),
    (ansGrpProcureCard)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6248'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPrePaidCard:AnswerGroup {name: 'ansGrpPrePaidCard'}),
    (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpPrePaidCard),
    (ansGrpPrePaidCard)-[:HAS_ANSWER {order: 4}]->(ansPrePaidCard),
    (ansGrpPrePaidCard)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6248'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpFundsDisburse:AnswerGroup {name: 'ansGrpFundsDisburse'}),
    (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpFundsDisburse),
    (ansGrpFundsDisburse)-[:HAS_ANSWER {order: 5}]->(ansFundsDisburse),
    (ansGrpFundsDisburse)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6248'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpReceiveAPayment:AnswerGroup {name: 'ansGrpReceiveAPayment'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpReceiveAPayment),
(ansGrpReceiveAPayment)-[:HAS_ANSWER {order: 2}]->(ansReceiveAPayment),
(ansGrpReceiveAPayment)-[:HAS_OUTCOME]->(qiServiceType:QuestionInstance:Outcome {uuid: 'f61e2473-3a9b-40df-89bd-ad1d0afcca64'})-[:DEFINED_BY]->(qstnServiceType),

    (ansGrpSolutionsForFaceToFaceAndCNP:AnswerGroup {name: 'ansGrpSolutionsForFaceToFaceAndCNP'}),
    (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSolutionsForFaceToFaceAndCNP),
    (ansGrpSolutionsForFaceToFaceAndCNP)-[:HAS_ANSWER {order: 1}]->(ansSolutionsForFaceToFaceAndCNP),
    (ansGrpSolutionsForFaceToFaceAndCNP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpCardNotPresent:AnswerGroup {name: 'ansGrpCardNotPresent'}),
    (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpCardNotPresent),
    (ansGrpCardNotPresent)-[:HAS_ANSWER {order: 2}]->(ansCardNotPresent),
    (ansGrpCardNotPresent)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpMerCardAcquirServ:AnswerGroup {name: 'ansGrpMerCardAcquirServ'}),
    (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpMerCardAcquirServ),
    (ansGrpMerCardAcquirServ)-[:HAS_ANSWER {order: 3}]->(ansMerCardAcquirServ),
    (ansGrpMerCardAcquirServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpGatewayServices:AnswerGroup {name: 'ansGrpGatewayServices'}),
    (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpGatewayServices),
    (ansGrpGatewayServices)-[:HAS_ANSWER {order: 4}]->(ansGatewayServices),
    (ansGrpGatewayServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpPaymentInitiationServ:AnswerGroup {name: 'ansGrpPaymentInitiationServ'}),
    (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpPaymentInitiationServ),
    (ansGrpPaymentInitiationServ)-[:HAS_ANSWER {order: 5}]->(ansPaymentInitiationServ),
    (ansGrpPaymentInitiationServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpPayConsultServ:AnswerGroup {name: 'ansGrpPayConsultServ'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPayConsultServ),
(ansGrpPayConsultServ)-[:HAS_ANSWER {order: 3}]->(ansPayConsultServ),
(ansGrpPayConsultServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

(ansGrpElse:AnswerGroup {name: 'ansGrpElse'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElse),
(ansGrpElse)-[:HAS_ANSWER {order: 4}]->(ansElse),
(ansGrpElse)-[:HAS_OUTCOME]->(resultCCSEscapePage);
