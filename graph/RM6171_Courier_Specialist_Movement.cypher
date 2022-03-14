CREATE
// Questions
(qstnFirstQ:Question {uuid: 'aa0e9cd1-e1d6-4391-ba91-9360bfde5b0b', text: 'What type of service do you need?', type: 'LIST'}),
(qstnIncreasedSecurity:Question {uuid: 'e1437fe4-7165-4a82-91a0-664eb76d2e6f', text: 'Do you need increased security for your collection/delivery?', type: 'LIST'}),

// Answer
(ansCollectionAndDelivery:Answer {uuid: '6bfdc413-a256-4a56-8c16-aba2d57acc84', text: 'Collection and delivery', hint: 'Provides the collection and delivery of items. Includes overnight, economy, same day and bulk delivery of documents, parcels and pallets to the UK and international locations. Economy delivery usually takes between 5 to 7 days'}),
(ansSecureAndDelivery:Answer {uuid: '0aab563f-5707-46aa-b8d1-caeb5033a054', text: 'Secure collection and delivery services', hint: 'Secure same day and overnight delivery services of documents, parcels and pallets to the UK and international locations. Suppliers will provide extra security measures such as additional insurances and double manned vehicles to protect high value items'}),
(ansSecureCollecAndDeliveryForExam:Answer {uuid: 'aebd39a6-24f3-4b6f-ba44-4187f54e52f7', text: 'Secure collection and delivery of exam test papers and materials', hint: 'Secure overnight and same-day collection and delivery services to distribute exam papers and associated materials to test centres, awarding organisations and examiners in the UK and international locations'}),
(ansSecureCollecAndDeliveryForMedical:Answer {uuid: '9e44c099-e11f-4a31-b558-3b979649b927', text: 'Collection and delivery of medical and specialist health care items', hint: 'Secure overnight and same day delivery of specialist items to UK and international locations. Includes samples, specimens and biological substances such as:
<ul>
<li>pathogens</li>
<li>infectious and non-infectious substances</li>
<li>pharmaceuticals</li>
<li>controlled drugs</li>
<li>associated medical equipment and documents</li>
</ul>'}),
(ansFirearmsAndWeapons:Answer {uuid: '5075bf7a-5f23-4f2f-a36f-f5a52821a412', text: 'Collection, delivery, disposal and destruction of class 1 explosive substances, firearms and weapons', hint: 'A fully managed service for the secure collection, delivery and disposal of:
<ul>
<li>firearms (Sections 1,2 and 5)</li>
<li>explosives (UN Class 1)</li>
<li>CS spray</li>
<li>PAVA spray</li>
<li>weapons including knives and tools</li>
<li>fireworks</li>
<li>controlled drugs</li>
</ul>'}),
(ansAssetRecovery:Answer {uuid: '9f93cf65-b793-4361-98f9-562e97ad9d75', text: 'Asset recovery, disposal and destruction', hint: 'A fully managed service for the transportation, resale or disposal of any item or asset including:
<ul>
<li>high value items</li>
<li>electrical equipment</li>
<li>office equipment and machinery</li>
<li>vehicles including boats and aircraft</li>
<li>medical equipment</li>
</ul>This also includes anything confiscated or seized under a forfeiture order <a href="https://www.legislation.gov.uk/ukpga/2002/29/contents" target="_blank">Proceeds of Crime Act (POCA)</a>.
'}),




(ansYes:Answer {uuid: 'f499f68a-7aba-4a9f-b638-933094dff646', text: 'Yes', hint: 'I need suppliers to provide extra security and liability measures, such as additional insurances'}),
(ansNo:Answer {uuid: '05024c34-5caf-46c9-a428-d3c94a6b3758', text: 'No', hint: 'I do not need increased security'}),


// Tree Structure
(jrnyCourierAndSpecialistMovement:Journey {uuid: '18940bd6-0c0c-4b3b-8790-72af82150118', name: 'Courier and Specialist Movement'}),
(jrnyCourierAndSpecialistMovement)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '4ff68c15-1088-4fc3-9550-9056c6084eb4'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpCollectionAndDelivery:AnswerGroup {name: 'ansGrpCollectionAndDelivery'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCollectionAndDelivery),
    (ansGrpCollectionAndDelivery)-[:HAS_ANSWER {order: 1}]->(ansCollectionAndDelivery),
    (ansGrpCollectionAndDelivery)-[:HAS_OUTCOME]->(qiIncreasedSecurity:QuestionInstance:Outcome {uuid: '01d5d08a-86a0-40fb-8cf3-6ce1fdb631f7'})-[:DEFINED_BY]->(qstnIncreasedSecurity),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiIncreasedSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiIncreasedSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureAndDelivery:AnswerGroup {name: 'ansGrpSecureAndDelivery'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSecureAndDelivery),
    (ansGrpSecureAndDelivery)-[:HAS_ANSWER {order: 2}]->(ansSecureAndDelivery),
    (ansGrpSecureAndDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureCollecAndDeliveryForExam:AnswerGroup {name: 'ansGrpSecureCollecAndDeliveryForExam'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSecureCollecAndDeliveryForExam),
    (ansGrpSecureCollecAndDeliveryForExam)-[:HAS_ANSWER {order: 3}]->(ansSecureCollecAndDeliveryForExam),
    (ansGrpSecureCollecAndDeliveryForExam)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureCollecAndDeliveryForMedical:AnswerGroup {name: 'ansGrpSecureCollecAndDeliveryForMedical'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSecureCollecAndDeliveryForMedical),
    (ansGrpSecureCollecAndDeliveryForMedical)-[:HAS_ANSWER {order: 4}]->(ansSecureCollecAndDeliveryForMedical),
    (ansGrpSecureCollecAndDeliveryForMedical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpFirearmsAndWeapons:AnswerGroup {name: 'ansGrpFirearmsAndWeapons'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFirearmsAndWeapons),
    (ansGrpFirearmsAndWeapons)-[:HAS_ANSWER {order: 5}]->(ansFirearmsAndWeapons),
    (ansGrpFirearmsAndWeapons)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpAssetRecovery:AnswerGroup {name: 'ansGrpAssetRecovery'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpAssetRecovery),
    (ansGrpAssetRecovery)-[:HAS_ANSWER {order: 6}]->(ansAssetRecovery),
    (ansGrpAssetRecovery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true});
