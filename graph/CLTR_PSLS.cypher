Match

(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnSector:Question {uuid: '64f00811-ebd6-40b1-8870-20e5aeaf891c'})

CREATE
(qstnLegalJurisdiction:Question {uuid: 'a4d0225c-c24e-46ae-b0e2-14ca47d8e047', text: 'What legal jurisdiction do you need?', type: 'LIST'}),
(qstnEnhancedSC:Question {uuid: '2593741f-be57-4f87-9906-6cd410f4fc5b', text: 'Do you need enhanced (sensitive information) security clearance ?', type: 'LIST'}),

(ansCG:Answer {uuid: '9760b303-74c1-475f-88fc-f938f1307d1f', text: 'Central government'}),
(ansWPS:Answer {uuid: '33cb74be-1742-44aa-8527-7996ee8cca4b', text: 'Wider public sector'}),
(ansCGandWPS:Answer {uuid: '728fb764-d016-4d47-95ff-0ce9590db202', text: 'Central government and wider public sector'}),

(ansInternationalTL:Answer {
    uuid: '6ab438c7-ac93-4c58-9aa6-0fd22d8ae29c',
    text: 'International trade law',
    hint: 'Access specialist legal advice and support for international trade law, disputes and negotiations. Services include:
    <ul>
        <li>advice and support on all stages of international trade disputes</li>
        <li>services to ensure compliance with the law of the World Trade Organisation (WTO)</li>
        <li>legal advice for the creation and implementation of trade agreements </li>
    </ul>'
}),

(ansRailLegalServices:Answer {
    uuid: 'dfd743a1-7d9d-4b83-bd05-9edcaf2e4308',
    text: 'Rail legal services',
    hint: 'Advice and support for legal services specific to rail, including:
    <ul>
        <li>regulatory law</li>
        <li>rail commercial law</li>
        <li>public procurement law</li>
        <li>subsidy law</li>
    </ul>'
}),

(ansGeneral:Answer {
    uuid: 'ceec85b3-2325-429c-be8d-bd21ab853b68',
    text: 'General legal advice and services',
    hint: 'Access advice and support for legal services and areas of legal practice including:
    <ul>
        <li>competition law</li>
        <li>contracts</li>
        <li>corporate law</li>
        <li>dispute resolution and litigation</li>
        <li>employment law</li>
        <li>environmental law</li>
        <li>information technology law</li>
        <li>information law, including data protection </li>
        <li>intellectual property law</li>
        <li>pensions law</li>
        <li>tax law</li>
        <li>real estate and real estate finance</li>
    </ul>'
}),

(ansFinancialAndComplexLS:Answer {
    uuid: 'cf0ec790-92a0-41f5-bce1-78bb0fe26649',
    text: 'Financial and complex legal services',
    hint: 'Access advice and support in relation to finance and complex legal services including:
    <ul>
        <li>corporate finance</li>
        <li>debt capital markets</li>
        <li>equity capital markets</li>
        <li>finance services, market and competition regulation</li>
        <li>investment and asset management</li>
        <li>project and asset finance</li>
        <li>projects of exceptional innovation and complexity</li>
        <li>rescue, restructuring and insolvency</li>
    </ul>'
}),

(ansTradeAndDisputes:Answer {
    uuid: '4c7103fc-99fb-40b5-80c7-96a92d6ff38a',
    text: 'Trade and disputes',
    hint: 'Access specialist legal advice and support for trade and disputes. Services include:
    <ul>
        <li>advice and services for the mitigation and conduct of disputes under the WTO</li>
        <li>trade agreement dispute settlement mechanisms </li>
        <li>advice and services on compliance with international law relating to trade</li>
    </ul>'
}),

(ansTradeAndNegotiations:Answer {
    uuid: '54ff1989-b7de-4a58-b94c-a38dffad612a',
    text: 'Trade and negotiations',
    hint: 'Access specialist legal advice and support for trade and negotiations. Services include:
    <ul>
        <li>advice and services for the negotiation and implementation of trade agreements and trade relationships</li>
        <li>advice and services on compliance with international law relating to trade</li>
    </ul>'
}),

(ansLegalAdviceService:Answer {
    uuid: 'eb7d6fe7-d65d-4c07-8343-d2013a14f41b',
    text: 'Legal Advice Service',
    hint: 'Advice and support on commercial and business legal matters including:
    <ul>
        <li>administrative and public law</li>
        <li>intellectual property</li>
        <li>contracts</li>
        <li>pensions</li>
        <li>energy, natural resources and climate change</li>
        <li>employment</li>
        <li>data protection and information law</li>
        <li>litigation and dispute resolution</li>
    </ul>'
}),

(ansGeneralLegalAdviceAndServices:Answer {
    uuid: 'dcb924f4-b5ab-4135-a422-3e93077fc125',
    text: 'General legal advice and services',
    hint: 'Advice and support for legal services and areas of legal practice including:
    <ul>
        <li>property and construction</li>
        <li>social housing </li>
        <li>child law </li>
        <li>education law</li>
        <li>healthcare</li>
        <li>debt recovery</li>
        <li>licensing</li>
        <li>primary care</li>
        <li>mental health law</li>
    </ul>'
}),

(ansTransportRailLegalServices:Answer {
    uuid: '04e9c634-0dea-4517-bdd1-c3dd1da480c4',
    text: 'Transport rail legal services ',
    hint: 'Advice and support for legal services for transport Rail including:
    <ul>
        <li>rail transport law</li>
        <li>legal support and advice for rail planning and authorisation</li>
        <li>legal support and advice for rail projects and infrastructure </li>
    </ul>'
}),

(ansEnglandAndWales:Answer {uuid: 'ffb78cae-61bb-46bd-9999-0b9f46be2a01', text: 'England and Wales', hint: 'Access the full range of legal advice services in England and wales'}),
(ansScotland:Answer {uuid: '193d9f12-3f95-4a8c-b8a4-bbe2f20ff197', text: 'Scotland', hint: 'Access the full range of legal advice services in Scotland'}),
(ansNorthernIreland:Answer {uuid: '0cd80473-4958-49c0-8976-8d9783cc4416', text: 'Northern Ireland', hint: 'Access the full range of legal advice services in Northern Ireland'}),

(ansansGeneralLegalCostServices:Answer {
    uuid: '4dfe970a-854d-4fef-ade2-95f3f978ed60',
    text: 'General legal cost services',
    hint: 'Provides budgeted and un-budgeted cost services for both receiving and paying parties. Services include:
    <ul>
        <li>considering and advising on opponent\'s budgets</li>
        <li>preparing, filing, exchanging and negotiating budgets</li>
        <li>attending costs management hearing/case costs management conference if needed</li>
        <li>preparing schedules of costs and bills of costs/eBills </li>
        <li>preparing and replying to points of disputes</li>
        <li>validating costs claims upon summary provisional and detailed assessment (including qualified one way cost shifting)</li>
        <li>attending detailed assessment hearings, dealing with any other steps to begin or progress with costs proceedings</li>
    </ul>'
}),

(ansClinicalNegligenceLegal:Answer {
    uuid: '74da24a9-969d-4602-b21d-c17234cb58ea',
    text: 'Clinical negligence legal cost services',
    hint: 'Provides budgeted and un-budgeted cost services for both the receiving and paying parties. Services include:
    <ul>
        <li>considering and advising upon opponent\'s budgets</li>
        <li>preparing, filing, exchanging and negotiating budgets</li>
        <li>attending costs management hearing/case costs management conference if needed</li>
        <li>preparing schedules of costs and bills of costs/ eBills</li>
        <li>preparing and replying to points of dispute</li>
        <li>applying for detailed or provisional assessment</li>
        <li>validating costs claims upon summary provisional and detailed assessment (including qualified one way cost shifting)</li>
        <li>attending detailed assessment hearings, dealing with any other steps to begin or progress with costs proceedings</li>
    </ul>'
}),

(ansYes:Answer {uuid: '86993ad5-d108-4b7a-999b-2d63ed24586f', text: 'Yes', hint: 'You may need enhanced security clearance for proceedings involving sensitive information. You can ask for higher levels of clearance and personnel with security checks (SC) are available to fulfil all your security requirements'}),
(ansNo:Answer {uuid: 'dd8eaf62-389c-4884-829c-c30b51c1eb27', text: 'No', hint: 'Enhanced security clearance is not needed'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCLTR_PSLS:Journey {uuid: '80f5eef0-de75-4bce-b301-7b87dd87a2a7', name: 'CLTR_PSLS'}),
(jrnyCLTR_PSLS)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '7bb5099d-3618-4e21-aa6d-ac49b91ad434'})-[:DEFINED_BY]->(qstnService),

(ansGrpCG:AnswerGroup {name: 'ansGrpCG'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCG),
(ansGrpCG)-[:HAS_ANSWER {order: 1}]->(ansCG),
(ansGrpCG)-[:HAS_OUTCOME]->(qiCG:QuestionInstance:Outcome {uuid: 'dfd58cb9-ed58-42f7-b299-a4d728f8f734'})-[:DEFINED_BY]->(qstnService),

    (ansGrpInternationalTL:AnswerGroup {name: 'ansGrpInternationalTL'}),
    (qiCG)-[:HAS_ANSWER_GROUP]->(ansGrpInternationalTL),
    (ansGrpInternationalTL)-[:HAS_ANSWER {order: 1}]->(ansInternationalTL),
    (ansGrpInternationalTL)-[:HAS_OUTCOME]->(qiInternationalTL:QuestionInstance:Outcome {uuid: '9dbc7de9-d1a9-4c2b-b6b1-c2197212530b'})-[:DEFINED_BY]->(qstnService),

        (ansGrpTradeAndDisputes:AnswerGroup {name: 'ansGrpTradeAndDisputes'}),
        (qiInternationalTL)-[:HAS_ANSWER_GROUP]->(ansGrpTradeAndDisputes),
        (ansGrpTradeAndDisputes)-[:HAS_ANSWER {order: 1}]->(ansTradeAndDisputes),
        (ansGrpTradeAndDisputes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6183'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpTradeAndNegotiations:AnswerGroup {name: 'ansGrpTradeAndNegotiations'}),
        (qiInternationalTL)-[:HAS_ANSWER_GROUP]->(ansGrpTradeAndNegotiations),
        (ansGrpTradeAndNegotiations)-[:HAS_ANSWER {order: 2}]->(ansTradeAndNegotiations),
        (ansGrpTradeAndNegotiations)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6183'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpRailLegalServices:AnswerGroup {name: 'ansGrpRailLegalServices'}),
    (qiCG)-[:HAS_ANSWER_GROUP]->(ansGrpRailLegalServices),
    (ansGrpRailLegalServices)-[:HAS_ANSWER {order: 2}]->(ansRailLegalServices),
    (ansGrpRailLegalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6204'}),

    (ansGrpGeneral:AnswerGroup {name: 'ansGrpGeneral'}),
    (qiCG)-[:HAS_ANSWER_GROUP]->(ansGrpGeneral),
    (ansGrpGeneral)-[:HAS_ANSWER {order: 3}]->(ansGeneral),
    (ansGrpGeneral)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6179'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),


    (ansGrpFinancialAndComplexLS:AnswerGroup {name: 'ansGrpFinancialAndComplexLS'}),
    (qiCG)-[:HAS_ANSWER_GROUP]->(ansGrpFinancialAndComplexLS),
    (ansGrpFinancialAndComplexLS)-[:HAS_ANSWER {order: 4}]->(ansFinancialAndComplexLS),
    (ansGrpFinancialAndComplexLS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6179'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),


(ansGrpWPS:AnswerGroup {name: 'ansGrpWPS'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWPS),
(ansGrpWPS)-[:HAS_ANSWER {order: 2}]->(ansWPS),
(ansGrpWPS)-[:HAS_OUTCOME]->(qiWPS:QuestionInstance:Outcome {uuid: '5e481b36-0337-4b73-9c12-776b6c70742e'})-[:DEFINED_BY]->(qstnService),

    (ansGrpLegalAdviceService:AnswerGroup {name: 'ansGrpLegalAdviceService'}),
    (qiWPS)-[:HAS_ANSWER_GROUP]->(ansGrpLegalAdviceService),
    (ansGrpLegalAdviceService)-[:HAS_ANSWER {order: 1}]->(ansLegalAdviceService),
    (ansGrpLegalAdviceService)-[:HAS_OUTCOME]->(qiGrpLegalAdviceService:QuestionInstance:Outcome {uuid: '8db6dc03-8864-4369-b08f-10f2713201a3'})-[:DEFINED_BY]->(qstnLegalJurisdiction),

        (ansGrpEnglandAndWales:AnswerGroup {name: 'ansGrpEnglandAndWales'}),
        (qiGrpLegalAdviceService)-[:HAS_ANSWER_GROUP]->(ansGrpEnglandAndWales),
        (ansGrpEnglandAndWales)-[:HAS_ANSWER {order: 1}]->(ansEnglandAndWales),
        (ansGrpEnglandAndWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

        (ansGrpScotland:AnswerGroup {name: 'ansGrpScotland'}),
        (qiGrpLegalAdviceService)-[:HAS_ANSWER_GROUP]->(ansGrpScotland),
        (ansGrpScotland)-[:HAS_ANSWER {order: 2}]->(ansScotland),
        (ansGrpScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

        (ansGrpNorthernIreland:AnswerGroup {name: 'ansGrpNorthernIreland'}),
        (qiGrpLegalAdviceService)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland),
        (ansGrpNorthernIreland)-[:HAS_ANSWER {order: 3}]->(ansNorthernIreland),
        (ansGrpNorthernIreland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

    (ansGrpGeneralLegalAdviceAndServices:AnswerGroup {name: 'ansGrpGeneralLegalAdviceAndServices'}),
    (qiWPS)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralLegalAdviceAndServices),
    (ansGrpGeneralLegalAdviceAndServices)-[:HAS_ANSWER {order: 2}]->(ansGeneralLegalAdviceAndServices),
    (ansGrpGeneralLegalAdviceAndServices)-[:HAS_OUTCOME]->(qiGeneralLegalAdviceAndServices:QuestionInstance:Outcome {uuid: '9ecff34e-003f-4bd8-8e50-33d19d6f0ac7'})-[:DEFINED_BY]->(qstnLegalJurisdiction),

        (ansGrpEnglandAndWales_1:AnswerGroup {name: 'ansGrpEnglandAndWales_1'}),
        (qiGeneralLegalAdviceAndServices)-[:HAS_ANSWER_GROUP]->(ansGrpEnglandAndWales_1),
        (ansGrpEnglandAndWales_1)-[:HAS_ANSWER {order: 1}]->(ansEnglandAndWales),
        (ansGrpEnglandAndWales_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),

        (ansGrpScotland_1:AnswerGroup {name: 'ansGrpScotland_1'}),
        (qiGeneralLegalAdviceAndServices)-[:HAS_ANSWER_GROUP]->(ansGrpScotland_1),
        (ansGrpScotland_1)-[:HAS_ANSWER {order: 2}]->(ansScotland),
        (ansGrpScotland_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),

        (ansGrpNorthernIreland_1:AnswerGroup {name: 'ansGrpNorthernIreland_1'}),
        (qiGeneralLegalAdviceAndServices)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland_1),
        (ansGrpNorthernIreland_1)-[:HAS_ANSWER {order: 3}]->(ansNorthernIreland),
        (ansGrpNorthernIreland_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true}),

    (ansGrpTransportRailLegalServices:AnswerGroup {name: 'ansGrpTransportRailLegalServices'}),
    (qiWPS)-[:HAS_ANSWER_GROUP]->(ansGrpTransportRailLegalServices),
    (ansGrpTransportRailLegalServices)-[:HAS_ANSWER {order: 3}]->(ansTransportRailLegalServices),
    (ansGrpTransportRailLegalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6240'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpCGandWPS:AnswerGroup {name: 'ansGrpCGandWPS'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCGandWPS),
(ansGrpCGandWPS)-[:HAS_ANSWER {order: 3}]->(ansCGandWPS),
(ansGrpCGandWPS)-[:HAS_OUTCOME]->(qiCGandWPS:QuestionInstance:Outcome {uuid: '10c3cc10-609d-4b4a-a2ad-61eb2e5cecb6'})-[:DEFINED_BY]->(qstnService),

    (ansGrpansGeneralLegalCostServices:AnswerGroup {name: 'ansGrpansGeneralLegalCostServices'}),
    (qiCGandWPS)-[:HAS_ANSWER_GROUP]->(ansGrpansGeneralLegalCostServices),
    (ansGrpansGeneralLegalCostServices)-[:HAS_ANSWER {order: 1}]->(ansansGeneralLegalCostServices),
    (ansGrpansGeneralLegalCostServices)-[:HAS_OUTCOME]->(qiGeneralLegalCostServices:QuestionInstance:Outcome {uuid: '275f0dce-49ba-495c-96cc-39b974fe25df'})-[:DEFINED_BY]->(qstnEnhancedSC),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiGeneralLegalCostServices)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiGeneralLegalCostServices)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpClinicalNegligenceLegal:AnswerGroup {name: 'ansGrpClinicalNegligenceLegal'}),
    (qiCGandWPS)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalNegligenceLegal),
    (ansGrpClinicalNegligenceLegal)-[:HAS_ANSWER {order: 2}]->(ansClinicalNegligenceLegal),
    (ansGrpClinicalNegligenceLegal)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true});