MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(ansElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'})

CREATE

// Questions
(qstnProductOrService:Question {uuid: '236fc784-2dbe-4ae5-8502-7598af1205bd', text: 'What product type or service do you need?', type: 'LIST'}),
(qstnPrintManagService:Question {uuid: 'c4793641-9cf4-4b59-a247-457cebecb3a9', text: 'Do you need a print management service?', type: 'LIST'}),
(qstnPreferredRoute:Question {uuid: '6e4cb6ba-0df3-44ac-a2e5-11c038cd53e9', text: 'What is your preferred route to market?', type: 'LIST'}),

// Answer
(ansCommAndHousePapers:Answer {uuid: '25b3e691-c0c7-4825-b7a6-55d5bb618bde', text: 'Command and house papers', hint: 'For government organisations who need to lay documents before parliament. Provides an end-to-end service including all pre-production services (art-working, design and editorial services), printing services and delivery into parliament'}),
(ansDirectMail:Answer {uuid: '34d37985-8b11-4deb-a922-8784d55b44f3', text: 'Direct mail', hint: 'Marketing materials that are usually mailed directly to the homes of customers or to business premises. Can include: election material for marketing and promotion and public information material such as brochures'}),
(ansOperationPrint:Answer {uuid: 'ed26eb8d-0cd9-44b9-9c1c-9247249ddb59', text: 'Operational print', hint: 'Items such as envelopes, books, business cards, labels, letterheads, compliment slips'}),
(ansTransactPrint:Answer {uuid: '36599a8f-eefd-4fe0-8043-75efc96d860f', text: 'Transactional print', hint: 'Use our print marketplace digital service to buy simple print products that do not need a managed service. This can include items such as books, brochures, flyers, newsletters, posters, cards and stationary'}),
(ansOtherPrint:Answer {uuid: '2d532810-fe22-44e5-ad23-824ee374eaf1', text: 'Other print', hint: 'Pre-production services such as art-working, typesetting, proofreading and translation services. As well as secure print services and items, alternative formats and election print'}),

(ansYes:Answer {uuid: '0f8e3f75-e307-4fd4-ae28-9581adf10854', text: 'Yes', hint: 'Access an account management team who can provide expertise and support with print products and services'}),
(ansNo:Answer {uuid: '4019328d-0347-44da-a469-a94530cad9e1', text: 'No', hint: 'Buy printed material using our print marketplace digital service'}),

(ansDirectAward:Answer {uuid: '60db311e-28a4-4b84-97f1-4a1049d0254f', text: 'Direct award', hint: 'Place an award directly with a supplier'}),
(ansFurtherComp:Answer {uuid: '091e9350-2e01-4b61-a930-f7142afb93ff', text: 'Further competition', hint: 'Invite suppliers to bid for your tender to achieve the best possible value for money'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyPrintMarketplace:Journey {uuid: '2578175a-713c-4df5-9b0f-0ab746bba928', name: 'Print Marketplace'}),
(jrnyPrintMarketplace)-[:FIRST_QUESTION]->(qiProductOrService:QuestionInstance:Outcome {uuid: 'f01ebfe0-08f9-40b5-a7b2-b2d8583fd261'})-[:DEFINED_BY]->(qstnProductOrService),

(qiPrintManagService:QuestionInstance:Outcome {uuid: '311ab063-f26d-4c82-8516-96db334d325e'})-[:DEFINED_BY]->(qstnPrintManagService),

//Level 1
(ansGrpCommAndHousePapers:AnswerGroup {name: 'ansGrpCommAndHousePapers'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpCommAndHousePapers),
(ansGrpCommAndHousePapers)-[:HAS_ANSWER {order: 1}]->(ansCommAndHousePapers),
(ansGrpCommAndHousePapers)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6170'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpDirectMail:AnswerGroup {name: 'ansGrpDirectMail'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpDirectMail),
(ansGrpDirectMail)-[:HAS_ANSWER {order: 2}]->(ansDirectMail),
(ansGrpDirectMail)-[:HAS_OUTCOME]->(qiPrintManagService),

(ansGrpOperationPrint:AnswerGroup {name: 'ansGrpOperationPrint'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpOperationPrint),
(ansGrpOperationPrint)-[:HAS_ANSWER {order: 3}]->(ansOperationPrint),
(ansGrpOperationPrint)-[:HAS_OUTCOME]->(qiPrintManagService),

(ansGrpTransactPrint:AnswerGroup {name: 'ansGrpTransactPrint'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpTransactPrint),
(ansGrpTransactPrint)-[:HAS_ANSWER {order: 4}]->(ansTransactPrint),
(ansGrpTransactPrint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6071'}),

(ansGrpOtherPrint:AnswerGroup {name: 'ansGrpOtherPrint'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpOtherPrint),
(ansGrpOtherPrint)-[:HAS_ANSWER {order: 5}]->(ansOtherPrint),
(ansGrpOtherPrint)-[:HAS_OUTCOME]->(qiPrintManagService),

(ansGrpElse:AnswerGroup {name: 'ansGrpElse'}),
(qiProductOrService)-[:HAS_ANSWER_GROUP]->(ansGrpElse),
(ansGrpElse)-[:HAS_ANSWER {order: 6}]->(ansElse),
(ansGrpElse)-[:HAS_OUTCOME]->(resultCCSEscapePage), // move to RM6174 MFDs but that tree has not been set up yet

    //Level 2 
    (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
    (qiPrintManagService)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
    (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
    (ansGrpYes)-[:HAS_OUTCOME]->(qiPreferredRoute:QuestionInstance:Outcome {uuid: '2aea8d5b-e383-4dea-9f5b-6729e6ed6b96'})-[:DEFINED_BY]->(qstnPreferredRoute),

    (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
    (qiPrintManagService)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
    (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
    (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6071'}),
            
            //Level 3
            (ansGrpDirectAward:AnswerGroup {name: 'ansGrpDirectAward'}),
            (qiPreferredRoute)-[:HAS_ANSWER_GROUP]->(ansGrpDirectAward),
            (ansGrpDirectAward)-[:HAS_ANSWER {order: 1}]->(ansDirectAward),
            (ansGrpDirectAward)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6170'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpFurtherComp:AnswerGroup {name: 'ansGrpFurtherComp'}),
            (qiPreferredRoute)-[:HAS_ANSWER_GROUP]->(ansGrpFurtherComp),
            (ansGrpFurtherComp)-[:HAS_ANSWER {order: 2}]->(ansFurtherComp),
            (ansGrpFurtherComp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6170'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true})
;