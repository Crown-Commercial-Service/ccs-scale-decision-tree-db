MATCH
// Required QuestionDefinition nodes:
// Level 1 question
(qstnProductOrService:Question {uuid: 'b879c040-654e-11ea-bc55-0242ac130003'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(qstnServiceType:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(ansElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'})



CREATE
(qstnProductType:Question {uuid: '77fb6b2a-630e-4154-9340-1ebe71d4ed95', text: 'What product type do you need?', type: 'LIST'}),
(qstnMailroom:Question {uuid: 'b0bc8862-4a90-4b5b-a31f-982d25f49013', text: 'Do you need mail room equipment that can print large volumes of material daily?', type: 'LIST'}),

(qstnWhereServiceNeeded:Question {uuid: '203b27fd-0754-4333-8347-b2e5cb9019e1', text: 'Where are the services needed?', type: 'LIST'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansProduct:Answer {uuid: '82b7280c-5bb6-4a34-b4a3-a13408d5f0c7', text: 'Product', hint: 'A product is an item you can buy. It\'s a one-off purchase and involves no ongoing contract.'}),
(ansService:Answer {uuid: '510654cf-5195-4d2a-a580-83512015eb2b', text: 'Service', hint: 'A service is a contract for something to happen, either once or on a regular basis.'}),
(ansBoth:Answer {uuid: '6452b7eb-daa6-4d38-a1da-81d10282dc04', text: 'Both', hint: 'Buy a product and a service. Some contracts may involve hiring a product as part of the service.'}),

(ansMailRoomEq:Answer {uuid: 'd40cce26-b1d2-43b3-a94d-5d65e195ca97', text: 'Mail Room Equipment', hint: 'Items such as low, medium and large scale franking machines, ink cartridges and labels'}),

(ansYes:Answer {uuid: 'dcd44b4e-444a-4a85-ac06-155d6555085d', text: 'Yes', hint: 'I need to print more than 200 impressions a day'}),
(ansNo:Answer {uuid: '0d73515a-617b-4d58-943f-1f611bba512c', text: 'No', hint: 'I need to print less than 200 impressions a day'}),

(ansPhysical:Answer {uuid: 'b929ae45-8d70-43f6-a340-c60da32f6c31', text: 'Physical', hint: 'Traditional postal services including the physical collection and delivery of letters and parcels as well as security screening and audit and consultancy services.'}),
(ansDigital:Answer {uuid: 'cf148727-fa61-4dcf-ba42-5a5f5472bee3', text: 'Digital', hint: 'Digital mailroom solutions to help you increase the use of digital technologies and move to a paper-lite strategy.'}),
(ansPhyAndDigitServ:Answer {uuid: '749169e5-945f-4d1f-809c-46ef7692c925', text: 'Physical and digital services', hint: 'A combination of physical and digital services. Includes the digital scanning of physical mail for storage and digital mailing.'}),

(ansInternational:Answer {uuid: '1de528c0-ee02-4995-bcc7-a76454372845', text: 'International', hint: 'Services available outside of the UK'}),
(ansNational:Answer {uuid: 'b36a0089-2726-4b4c-b6ed-cb315e98f339', text: 'National', hint: 'Services available within the UK'}),

(ansMailroomCollection:Answer {uuid: 'f89e8e0d-c4a3-4074-8535-43557b610fed', text: 'Mailroom collection and delivery', hint: 'Collection and delivery of letters and parcels.'}),
(ansInboundDeliveryServ:Answer {uuid: 'e75460ac-3782-45d3-9e68-8ff66eb82d2b', text: 'Inbound delivery services', hint: 'Delivery of physical mail items to your site(s)'}),
(ansSecurityScreeningServ:Answer {uuid: '749342c1-0adf-4b93-a578-81e74ddbc537', text: 'Security screening services', hint: 'Screening of inbound mail items including documents and parcels for hazardous items and materials.'}),
(ansAuditAndConsultancy:Answer {uuid: '8195f75a-b7b5-420a-9401-0fa4fec6741d', text: 'Audit and consultancy', hint: 'Production audits, efficiency reviews and niche consultancy services to help you develop your postal services strategy.'}),

(ansFullyOutsrc:Answer {uuid: '9e4a60c9-8b21-4d0e-88df-af7979ef0506', text: 'Fully outsourced', hint: 'Provides on or off site mailroom management, digital mailroom management and document and data management services.  Designed to increase the use of digital mailroom technologies.'}),

(ansInboundMail:Answer {uuid: '79d2f83e-733b-4323-8ca2-af71700ca31a', text: 'Inbound mail', hint: 'Mail opening and digital scanning services which can take place either at your premises (on-site), at the supplier\'s premises (off-site) or both.'}),
(ansPhyAndDigitMailProd:Answer {uuid: '94148cd8-753e-4104-8759-9728bafa212d', text: 'Physical and digital Mail Production', hint: 'Provides physical postal solutions such as printing and digital mail services including email, SMS (text messaging) and other web-based communications.'}),



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
// Journey
(jrnyPostalGoods:Journey {uuid: '4c3916b2-f894-43e7-b67a-56ee73711a66', name: 'Postal Goods'}),
(jrnyPostalGoods)-[:FIRST_QUESTION]->(qiOne:QuestionInstance:Outcome {uuid: 'ea2ded21-38e3-4cd6-ade5-98ce4c47a329'})-[:DEFINED_BY]->(qstnProductOrService),

(ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
(qiOne)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
(ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
(ansGrpProduct)-[:HAS_OUTCOME]->(qiProductType:QuestionInstance:Outcome {uuid: 'ad96b2d2-c656-4193-b8ad-ba9e74733bac'})-[:DEFINED_BY]->(qstnProductType),

  (ansGrpMailRoomEq:AnswerGroup {name: 'ansGrpMailRoomEq'}),
  (qiProductType)-[:HAS_ANSWER_GROUP]->(ansGrpMailRoomEq),
  (ansGrpMailRoomEq)-[:HAS_ANSWER {order: 1}]->(ansMailRoomEq),
  (ansGrpMailRoomEq)-[:HAS_OUTCOME]->(qiMailRoomEq:QuestionInstance:Outcome {uuid: '3af31319-75d5-4d42-82fc-f2bb370bc873'})-[:DEFINED_BY]->(qstnMailroom),

    (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
    (qiMailRoomEq)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
    (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
    (ansGrpYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
    (qiMailRoomEq)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
    (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
    (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

  (ansGrpElse:AnswerGroup {name: 'ansGrpElse'}),
  (qiProductType)-[:HAS_ANSWER_GROUP]->(ansGrpElse),
  (ansGrpElse)-[:HAS_ANSWER {order: 2}]->(ansElse),
  (ansGrpElse)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpService:AnswerGroup {name: 'ansGrpService'}),
(qiOne)-[:HAS_ANSWER_GROUP]->(ansGrpService),
(ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
(ansGrpService)-[:HAS_OUTCOME]->(qiServiceType:QuestionInstance:Outcome {uuid: '7b6314a7-4d51-45d9-a019-d0123c5713fc'})-[:DEFINED_BY]->(qstnServiceType),

  (ansGrpPhysical:AnswerGroup {name: 'ansGrpPhysical'}),
  (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpPhysical),
  (ansGrpPhysical)-[:HAS_ANSWER {order: 1}]->(ansPhysical),
  (ansGrpPhysical)-[:HAS_OUTCOME]->(qiWhereServiceNeeded:QuestionInstance:Outcome {uuid: '5b0705f1-e197-464a-a2cc-5edbdcba2ba1'})-[:DEFINED_BY]->(qstnWhereServiceNeeded),

    (ansGrpInternational:AnswerGroup {name: 'ansGrpInternational'}),
    (qiWhereServiceNeeded)-[:HAS_ANSWER_GROUP]->(ansGrpInternational),
    (ansGrpInternational)-[:HAS_ANSWER {order: 1}]->(ansInternational),
    (ansGrpInternational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpNational:AnswerGroup {name: 'ansGrpNational'}),
    (qiWhereServiceNeeded)-[:HAS_ANSWER_GROUP]->(ansGrpNational),
    (ansGrpNational)-[:HAS_ANSWER {order: 2}]->(ansNational),
    (ansGrpNational)-[:HAS_OUTCOME]->(qiServiceTypeForNational:QuestionInstance:Outcome {uuid: '2b1c8e27-e716-4de8-8b3d-d2ab55d848b1'})-[:DEFINED_BY]->(qstnServiceType),

      (ansGrpMailroomCollection:AnswerGroup {name: 'ansGrpMailroomCollection'}),
      (qiServiceTypeForNational)-[:HAS_ANSWER_GROUP]->(ansGrpMailroomCollection),
      (ansGrpMailroomCollection)-[:HAS_ANSWER {order: 1}]->(ansMailroomCollection),
      (ansGrpMailroomCollection)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

      (ansGrpInboundDeliveryServ:AnswerGroup {name: 'ansGrpInboundDeliveryServ'}),
      (qiServiceTypeForNational)-[:HAS_ANSWER_GROUP]->(ansGrpInboundDeliveryServ),
      (ansGrpInboundDeliveryServ)-[:HAS_ANSWER {order: 2}]->(ansInboundDeliveryServ),
      (ansGrpInboundDeliveryServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

      (ansGrpSecurityScreeningServ:AnswerGroup {name: 'ansGrpSecurityScreeningServ'}),
      (qiServiceTypeForNational)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityScreeningServ),
      (ansGrpSecurityScreeningServ)-[:HAS_ANSWER {order: 3}]->(ansSecurityScreeningServ),
      (ansGrpSecurityScreeningServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '10', url: '', type: 'CAT', scale: true}),

      (ansGrpAuditAndConsultancy:AnswerGroup {name: 'ansGrpAuditAndConsultancy'}),
      (qiServiceTypeForNational)-[:HAS_ANSWER_GROUP]->(ansGrpAuditAndConsultancy),
      (ansGrpAuditAndConsultancy)-[:HAS_ANSWER {order: 4}]->(ansAuditAndConsultancy),
      (ansGrpAuditAndConsultancy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

  (ansGrpDigital:AnswerGroup {name: 'ansGrpDigital'}),
  (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpDigital),
  (ansGrpDigital)-[:HAS_ANSWER {order: 2}]->(ansDigital),
  (ansGrpDigital)-[:HAS_OUTCOME]->(qiServiceTypeForDigital:QuestionInstance:Outcome {uuid: 'c5b82317-537d-461d-b999-a0101fce43ef'})-[:DEFINED_BY]->(qstnServiceType),

    (ansGrpFullyOutsrc:AnswerGroup {name: 'ansGrpFullyOutsrc'}),
    (qiServiceTypeForDigital)-[:HAS_ANSWER_GROUP]->(ansGrpFullyOutsrc),
    (ansGrpFullyOutsrc)-[:HAS_ANSWER {order: 1}]->(ansFullyOutsrc),
    (ansGrpFullyOutsrc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpElseForDigital:AnswerGroup {name: 'ansGrpElseForDigital'}),
    (qiServiceTypeForDigital)-[:HAS_ANSWER_GROUP]->(ansGrpElseForDigital),
    (ansGrpElseForDigital)-[:HAS_ANSWER {order: 2}]->(ansElse),
    (ansGrpElseForDigital)-[:HAS_OUTCOME]->(resultCCSEscapePage),

  (ansGrpPhyAndDigitServ:AnswerGroup {name: 'ansGrpPhyAndDigitServ'}),
  (qiServiceType)-[:HAS_ANSWER_GROUP]->(ansGrpPhyAndDigitServ),
  (ansGrpPhyAndDigitServ)-[:HAS_ANSWER {order: 3}]->(ansPhyAndDigitServ),
  (ansGrpPhyAndDigitServ)-[:HAS_OUTCOME]->(qiServiceTypeForPhyAndDigi:QuestionInstance:Outcome {uuid: '3509f648-3aa5-4963-b5e4-923045050aac'})-[:DEFINED_BY]->(qstnServiceType),

    (ansGrpInboundMail:AnswerGroup {name: 'ansGrpInboundMail'}),
    (qiServiceTypeForPhyAndDigi)-[:HAS_ANSWER_GROUP]->(ansGrpInboundMail),
    (ansGrpInboundMail)-[:HAS_ANSWER {order: 1}]->(ansInboundMail),
    (ansGrpInboundMail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '9', url: '', type: 'CAT', scale: true}),

    (ansGrpPhyAndDigitMailProd:AnswerGroup {name: 'ansGrpPhyAndDigitMailProd'}),
    (qiServiceTypeForPhyAndDigi)-[:HAS_ANSWER_GROUP]->(ansGrpPhyAndDigitMailProd),
    (ansGrpPhyAndDigitMailProd)-[:HAS_ANSWER {order: 2}]->(ansPhyAndDigitMailProd),
    (ansGrpPhyAndDigitMailProd)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

(ansGrpBoth:AnswerGroup {name: 'ansGrpBoth'}),
(qiOne)-[:HAS_ANSWER_GROUP]->(ansGrpBoth),
(ansGrpBoth)-[:HAS_ANSWER {order: 3}]->(ansBoth),
(ansGrpBoth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),
(ansGrpBoth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true})
;