MATCH
(qstnServiceType:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnRequirements:Question {uuid: '7a61da23-0caf-4e75-be8d-8ec9ca5680d9'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(ansElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'})

CREATE
// Answer
 (ansFinancialServices:Answer {uuid: 'd335673d-b8bb-4108-8e1b-b4b2ce734d5d', text: 'Financial Services', hint: 'I want to able to make or receive payments'}),

(ansMakeAPayment:Answer {uuid: '511b0949-1c75-4f03-84b3-d2886f83ae3c', text: 'Make a payment', hint: 'Use Procurement Cards (physical, virtual, lodged cards) to pay suppliers for goods and services. Use prepaid solutions (cards and vouchers) to make payments to individuals'}),
(ansReceiveAPayment:Answer {uuid: 'd23445dd-5f20-4dce-b2c8-1c4aa4722ed6', text: 'Receive a payment', hint: 'Accept card and alternative payment methods in person or online'}),
(ansPayConsultServ:Answer {uuid: '1cf90c12-8648-4e87-80d2-5bd58105d392', text: 'Payment consultancy services', hint: 'Access strategic advice to help you define your needs for receiving and making payments'}),

(ansDieselPetrolCard:Answer {uuid: 'd67dda42-df6b-45ca-93d9-7901664a52f8', text: 'Diesel/petrol card', hint: 'Buy diesel and petrol using a single purpose payment card'}),
(ansAlterFuelCard:Answer {uuid: '7d47d847-4e9c-4e98-b662-648470c3c9a4', text: 'Alternative fuel card', hint: 'Buy alternative fuels such as low pressure gas (LPG), electricity and hydrogen using a single purpose payment card'}),
(ansProcureCard:Answer {uuid: '71425d18-6064-4a8c-a1f8-40a49a84e14b', text: 'Procurement card', hint: 'Pay for goods and services using a card and earn an annual rebate.  You will need to pay the card balance in full each month'}),
(ansPrePaidCard:Answer {uuid: 'ef7dfc27-7c64-4d52-88a8-b531e22fc092', text: 'Pre-paid card', hint: 'An alternative solution to a cash payment. You can preload money onto the card for an individual to use at specified merchants'}),
(ansVouchers:Answer {uuid: '3177fc3b-60e1-4619-bf51-659d2a6d4811', text: 'Vouchers', hint: 'Allows you to issue a closed loop voucher to an individual for use at specified merchants. Closed loop vouchers are also known as gift cards'}),

(ansSolutionsForFaceToFaceAndCNP:Answer {uuid: '5782a8c6-99ac-4b28-886f-4e2ab250905b', text: 'Solutions for face to face and cardholder not present (CNP) payments', hint: 'Provides service and equipment solutions for accepting payments through face to face, unattended Point Of Sale (POS) terminals such as, car parking machines or CNP. A CNP payment is where the cardholder and card are not present at the point of sale. For example, when a customer is paying online or over the phone'}),
(ansCardNotPresent:Answer {uuid: 'a6d9eda2-bb62-47a4-b21b-3ebf94cba7d1', text: 'Card not present payment services', hint: 'Access the services you need to accept card payments and other alternative payment methods when the cardholder and card are not present at the point of sale. For example, taking payments by call centre, over the phone or online'}),
(ansMerCardAcquirServ:Answer {uuid: 'b2e584b7-b47a-4d3c-b8a5-9737823387ca', text: 'Merchant card acquiring services', hint: 'Use this when you already have the equipment and services you need to accept payments but need a merchant acquirer. A merchant acquirer manages the transfer of funds between account providers and merchants. For example, they can authorise transactions from a range of payment types including face to face and CNP'}),
(ansGatewayServices:Answer {uuid: '3f8881e2-cb36-444d-a6c7-5a5c93eb3ad8', text: 'Gateway services and equipment for accepting face to face and CNP payments', hint: 'Buy gateway equipment and services. A gateway service allows you to process and authorise face to face, CNP and alternative payment method transactions. You will be able to accept payment by contact centre, over the phone or online.  Includes equipment such as wireless and bluetooth terminals (card machines) and customer activated terminals (self checkout stations)'}),
(ansPaymentInitiationServ:Answer {uuid: '17d3ce0f-6e79-4960-8e1d-2ee81b431d05', text: 'Payment initiation service providers (PISP) open banking', hint: 'Receive faster payments paid directly out of an individual\'s or businesses bank account using online methods such as websites or other digital platforms (such as Paypal), instead of debit or credit cards'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyPayment2:Journey {uuid: '1f4cf853-00f9-4078-858c-82092bd88e64', name: 'Payment solutions 2'}),
(jrnyPayment2)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '208fe360-562d-4b19-bf2e-37265ea21110'})-[:DEFINED_BY]->(qstnRequirements),

(ansGrpFinancialServices:AnswerGroup {name: 'ansGrpFinancialServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFinancialServices),
(ansGrpFinancialServices)-[:HAS_ANSWER {order: 1}]->(ansFinancialServices),
(ansGrpFinancialServices)-[:HAS_OUTCOME]->(qiFinancialServices:QuestionInstance:Outcome {uuid: '5d6c1ebd-1304-4598-9068-604d7e3a30ea'})-[:DEFINED_BY]->(qstnServiceType),

    (ansGrpMakeAPayment:AnswerGroup {name: 'ansGrpMakeAPayment'}),
    (qiFinancialServices)-[:HAS_ANSWER_GROUP]->(ansGrpMakeAPayment),
    (ansGrpMakeAPayment)-[:HAS_ANSWER {order: 1}]->(ansMakeAPayment),
    (ansGrpMakeAPayment)-[:HAS_OUTCOME]->(qiPaymentCardType:QuestionInstance:Outcome {uuid: '3198b9b0-df30-4b06-95d5-a37c2e290ded'})-[:DEFINED_BY]->(qstnService),

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

        (ansGrpVouchers:AnswerGroup {name: 'ansGrpVouchers'}),
        (qiPaymentCardType)-[:HAS_ANSWER_GROUP]->(ansGrpVouchers),
        (ansGrpVouchers)-[:HAS_ANSWER {order: 5}]->(ansVouchers),
        (ansGrpVouchers)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6248'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpReceiveAPayment:AnswerGroup {name: 'ansGrpReceiveAPayment'}),
    (qiFinancialServices)-[:HAS_ANSWER_GROUP]->(ansGrpReceiveAPayment),
    (ansGrpReceiveAPayment)-[:HAS_ANSWER {order: 2}]->(ansReceiveAPayment),
    (ansGrpReceiveAPayment)-[:HAS_OUTCOME]->(resultCCSEscapePage),
        
//         (ansGrpSolutionsForFaceToFaceAndCNP:AnswerGroup {name: 'ansGrpSolutionsForFaceToFaceAndCNP'}),
//         (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpSolutionsForFaceToFaceAndCNP),
//         (ansGrpSolutionsForFaceToFaceAndCNP)-[:HAS_ANSWER {order: 1}]->(ansSolutionsForFaceToFaceAndCNP),
//         (ansGrpSolutionsForFaceToFaceAndCNP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

//         (ansGrpCardNotPresent:AnswerGroup {name: 'ansGrpCardNotPresent'}),
//         (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpCardNotPresent),
//         (ansGrpCardNotPresent)-[:HAS_ANSWER {order: 2}]->(ansCardNotPresent),
//         (ansGrpCardNotPresent)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

//         (ansGrpMerCardAcquirServ:AnswerGroup {name: 'ansGrpMerCardAcquirServ'}),
//         (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpMerCardAcquirServ),
//         (ansGrpMerCardAcquirServ)-[:HAS_ANSWER {order: 3}]->(ansMerCardAcquirServ),
//         (ansGrpMerCardAcquirServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

//         (ansGrpGatewayServices:AnswerGroup {name: 'ansGrpGatewayServices'}),
//         (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpGatewayServices),
//         (ansGrpGatewayServices)-[:HAS_ANSWER {order: 4}]->(ansGatewayServices),
//         (ansGrpGatewayServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

//         (ansGrpPaymentInitiationServ:AnswerGroup {name: 'ansGrpPaymentInitiationServ'}),
//         (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpPaymentInitiationServ),
//         (ansGrpPaymentInitiationServ)-[:HAS_ANSWER {order: 5}]->(ansPaymentInitiationServ),
//         (ansGrpPaymentInitiationServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpPayConsultServ:AnswerGroup {name: 'ansGrpPayConsultServ'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPayConsultServ),
(ansGrpPayConsultServ)-[:HAS_ANSWER {order: 2}]->(ansPayConsultServ),
(ansGrpPayConsultServ)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpElse:AnswerGroup {name: 'ansGrpElse'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElse),
(ansGrpElse)-[:HAS_ANSWER {order: 3}]->(ansElse),
(ansGrpElse)-[:HAS_OUTCOME]->(resultCCSEscapePage);
