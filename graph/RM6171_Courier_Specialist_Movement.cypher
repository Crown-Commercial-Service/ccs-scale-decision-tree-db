MATCH 
(qstnFirstQ:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnService:Question {uuid: 'c09d4ce9-1e93-4120-a336-6a1d2058499f'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Questions
(qstnCourier:Question {uuid: 'aa0e9cd1-e1d6-4391-ba91-9360bfde5b0b', text: 'What courier service do you need?', type: 'LIST'}),
(qstnIncreasedSecurity:Question {uuid: 'e1437fe4-7165-4a82-91a0-664eb76d2e6f', text: 'Do you need increased security for your collection/delivery?', type: 'LIST'}),
(qstnPostal:Question {uuid: '086c494d-086f-43e2-948b-04ed9317eadc', text: 'What postal service do you need?', type: 'LIST'}),

// Answer
(ansCourier:Answer {uuid: '8ce61925-c382-4c77-8201-5ff5eb8ee41d', text: 'Courier', hint:'A wide range of courier services from simple parcel deliveries to complex and large scale specialist projects'}),
(ansPostal:Answer {uuid: '2d7f4ee4-77ce-4d4e-96b9-01d194d169fa', text: 'Postal', hint:'Postal services to the UK public sector and third sector organisations'}),
(ansSomethingElse:Answer {uuid: '751bb5aa-5db4-45ad-8863-e8bf61acad28', text: 'Something else', hint:'What I need is not listed here. I want to return to the agreement search page'}),

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



(ansMailroom:Answer {
    uuid: 'a5320b24-895a-480e-9af1-e710bc7dfa1f',
    text: 'Mailroom equipment',
    hint: 'Mailroom equipment and consumables, services include:
    <ul>
        <li>low, medium and large scale franking machines,</li>
        <li>ink cartridges and labels</li>
        <li>mailroom equipment (including X-Ray machines)</li>
        <li>associated consumables and software (for both lease and outright purchase)</li>
        <li>basic equipment maintenance</li>
    </ul>'
}),
(ansPhysical:Answer {uuid: '4b75a809-abe7-45ad-94b4-4bca1285200d', text: 'Physical services', hint: 'Traditional postal services including the physical collection and delivery of letters and parcels as well as security screening services'}),
(ansAudits:Answer {uuid: 'a7176eaa-a4bd-47da-affa-f20d9e2836bf', text: 'Audits, efficiency reviews and niche consultancy', hint: 'Audit and consultancy services for mailroom operations and associated document and data management to help and support development and implementing your postal services strategy'}),
(ansDigital:Answer {
    uuid: 'eec917dc-1fc9-4fa6-aea7-a943b3f0b503',
    text: 'Digital',
    hint: 'Digital mailroom solutions to help you increase the use of digital technologies and move to a paper-lite strategy. This includes:
    <ul>
        <li>outsourced services for mailroom management</li>
        <li>digital mailroom management</li>
        <li>document and data management services, either your premises (on-site) or at the supplier\'s premises (off-site)</li>
    </ul>'
}),
(ansPhysicalAndDigital:Answer {uuid: 'ff87344e-4aec-4e1d-b563-9caad00bb003', text: 'Physical and digital services', hint:'A combination of physical and digital services. Includes the digital scanning of physical mail for storage and digital mailing'}),
(ansSSS:Answer {uuid: '35184913-b4c4-4b96-9c50-a12da3ea8700', text: 'Security screening services', hint:'Screening of inbound mail items including documents and parcels for hazardous items and materials'}),


(ansNationalMailroom:Answer {
    uuid: '72e70cb9-68bf-4f8f-ae28-34a53d9fc884',
    text: 'National mailroom collection and delivery',
    hint: 'Collection and delivery service of all mail items for delivery within the UK. Services include:
    <ul>
        <li>high volume services</li>
        <li>low to medium volume services</li>
        <li>sorted and unsorted services</li>
        <li>secure services</li>
        <li>collection services</li>
        <li>services to manage undelivered items</li>
        <li>track and trace services</li>
        <li>the provision of consumables and equipment</li>
    </ul>'
}),

(ansInternationalCollection:Answer {
    uuid: 'c792368d-8acb-4612-ba52-a86468bd50d6',
    text: 'International collection and delivery service for all mail items',
    hint: 'International delivery including EU, non-EU and rest of world destinations. Services include:
    <ul>
        <li>premium services (next day), standard services and economy services</li>
        <li>sorted and unsorted services</li>
        <li>secure and tracked services</li>
        <li>collection services</li>
        <li>services to manage undelivered items</li>
    </ul>'
}),

(ansHybridMailDTC:Answer {
    uuid: '46a47d67-2be8-478c-b45e-de395ea115cf',
    text: 'Hybrid mail, digital and transformational communications',
    hint: 'This gives you access to hybrid mail solutions using a combination of electronic and physical delivery. This includes:
    <ul>
        <li>click, print, post solutions</li>
        <li>email</li>
        <li>SMS (text messaging)</li>
        <li>other web-based communications</li>
    </ul>'
}),

(ansInboundDelivery:Answer {
    uuid: 'eed4c7c5-dd69-45ea-8869-339623cbd7ad',
    text: 'Inbound delivery, mail opening and digital scanning services',
    hint: 'Inbound delivery, mail opening and digital scanning services which can take place either at your premises (on-site), at the supplier\'s premises (off-site) or both. Services include 
    <ul>
        <li>timed delivery services</li>
        <li>pre-sorted deliveries</li>
        <li>reply services </li>
        <li>numbered box services</li>
        <li>tracked and signed for services</li>
        <li>mail opening services </li>
        <li>scanning services </li>
        <li>electronic distribution of items within the buyer organisation </li>
        <li>archiving services and solutions (physical and digital) </li>
        <li>indexing services </li>
        <li>secure destruction of physical items</li>
        <li>banking services for cashable items received by the buyer</li>
    </ul>'
}),

// Tree Structure
(jrnyPostandCourier:Journey {uuid: '18940bd6-0c0c-4b3b-8790-72af82150118', name: 'Post and Courier'}),
(jrnyPostandCourier)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '4ff68c15-1088-4fc3-9550-9056c6084eb4'})-[:DEFINED_BY]->(qstnFirstQ),


(ansGrpCourier:AnswerGroup {name: 'ansGrpCourier'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCourier),
(ansGrpCourier)-[:HAS_ANSWER {order: 1}]->(ansCourier),
(ansGrpCourier)-[:HAS_OUTCOME]->(qiCourier:QuestionInstance:Outcome {uuid: '91b110ab-0af8-49a0-8cd2-c96a2f8eb30b'})-[:DEFINED_BY]->(qstnCourier),

    (ansGrpCollectionAndDelivery:AnswerGroup {name: 'ansGrpCollectionAndDelivery'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpCollectionAndDelivery),
    (ansGrpCollectionAndDelivery)-[:HAS_ANSWER {order: 1}]->(ansCollectionAndDelivery),
    (ansGrpCollectionAndDelivery)-[:HAS_OUTCOME]->(qiIncreasedSecurity:QuestionInstance:Outcome {uuid: '01d5d08a-86a0-40fb-8cf3-6ce1fdb631f7'})-[:DEFINED_BY]->(qstnIncreasedSecurity),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiIncreasedSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiIncreasedSecurity)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureAndDelivery:AnswerGroup {name: 'ansGrpSecureAndDelivery'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpSecureAndDelivery),
    (ansGrpSecureAndDelivery)-[:HAS_ANSWER {order: 2}]->(ansSecureAndDelivery),
    (ansGrpSecureAndDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureCollecAndDeliveryForExam:AnswerGroup {name: 'ansGrpSecureCollecAndDeliveryForExam'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpSecureCollecAndDeliveryForExam),
    (ansGrpSecureCollecAndDeliveryForExam)-[:HAS_ANSWER {order: 3}]->(ansSecureCollecAndDeliveryForExam),
    (ansGrpSecureCollecAndDeliveryForExam)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpSecureCollecAndDeliveryForMedical:AnswerGroup {name: 'ansGrpSecureCollecAndDeliveryForMedical'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpSecureCollecAndDeliveryForMedical),
    (ansGrpSecureCollecAndDeliveryForMedical)-[:HAS_ANSWER {order: 4}]->(ansSecureCollecAndDeliveryForMedical),
    (ansGrpSecureCollecAndDeliveryForMedical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpFirearmsAndWeapons:AnswerGroup {name: 'ansGrpFirearmsAndWeapons'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpFirearmsAndWeapons),
    (ansGrpFirearmsAndWeapons)-[:HAS_ANSWER {order: 5}]->(ansFirearmsAndWeapons),
    (ansGrpFirearmsAndWeapons)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpAssetRecovery:AnswerGroup {name: 'ansGrpAssetRecovery'}),
    (qiCourier)-[:HAS_ANSWER_GROUP]->(ansGrpAssetRecovery),
    (ansGrpAssetRecovery)-[:HAS_ANSWER {order: 6}]->(ansAssetRecovery),
    (ansGrpAssetRecovery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6171'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

(ansGrpPostal:AnswerGroup {name: 'ansGrpPostal'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPostal),
(ansGrpPostal)-[:HAS_ANSWER {order: 2}]->(ansPostal),
(ansGrpPostal)-[:HAS_OUTCOME]->(qiPostal:QuestionInstance:Outcome {uuid: '56e28be4-c4b8-44b1-8b14-d23984b1e86b'})-[:DEFINED_BY]->(qstnPostal),

    (ansGrpMailroom:AnswerGroup {name: 'ansGrpMailroom'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpMailroom),
    (ansGrpMailroom)-[:HAS_ANSWER {order: 1}]->(ansMailroom),
    (ansGrpMailroom)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPhysical:AnswerGroup {name: 'ansGrpPhysical'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpPhysical),
    (ansGrpPhysical)-[:HAS_ANSWER {order: 2}]->(ansPhysical),
    (ansGrpPhysical)-[:HAS_OUTCOME]->(qiPhysical:QuestionInstance:Outcome {uuid: '7daa42ff-4e17-4e4a-b2ef-98e229e7e503'})-[:DEFINED_BY]->(qstnService),

        (ansGrpNationalMailroom:AnswerGroup {name: 'ansGrpNationalMailroom'}),
        (qiPhysical)-[:HAS_ANSWER_GROUP]->(ansGrpNationalMailroom),
        (ansGrpNationalMailroom)-[:HAS_ANSWER {order: 1}]->(ansNationalMailroom),
        (ansGrpNationalMailroom)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpInternationalCollection:AnswerGroup {name: 'ansGrpInternationalCollection'}),
        (qiPhysical)-[:HAS_ANSWER_GROUP]->(ansGrpInternationalCollection),
        (ansGrpInternationalCollection)-[:HAS_ANSWER {order: 2}]->(ansInternationalCollection),
        (ansGrpInternationalCollection)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpAudits:AnswerGroup {name: 'ansGrpAudits'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpAudits),
    (ansGrpAudits)-[:HAS_ANSWER {order: 3}]->(ansAudits),
    (ansGrpAudits)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpDigital:AnswerGroup {name: 'ansGrpDigital'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpDigital),
    (ansGrpDigital)-[:HAS_ANSWER {order: 4}]->(ansDigital),
    (ansGrpDigital)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpPhysicalAndDigital:AnswerGroup {name: 'ansGrpPhysicalAndDigital'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpPhysicalAndDigital),
    (ansGrpPhysicalAndDigital)-[:HAS_ANSWER {order: 5}]->(ansPhysicalAndDigital),
    (ansGrpPhysicalAndDigital)-[:HAS_OUTCOME]->(qiPhysicalAndDigital:QuestionInstance:Outcome {uuid: '94a6e455-bd1b-4b17-9f7b-0db81e7989dc'})-[:DEFINED_BY]->(qstnService),

        (ansGrpHybridMailDTC:AnswerGroup {name: 'ansGrpHybridMailDTC'}),
        (qiPhysicalAndDigital)-[:HAS_ANSWER_GROUP]->(ansGrpHybridMailDTC),
        (ansGrpHybridMailDTC)-[:HAS_ANSWER {order: 1}]->(ansHybridMailDTC),
        (ansGrpHybridMailDTC)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpInboundDelivery:AnswerGroup {name: 'ansGrpInboundDelivery'}),
        (qiPhysicalAndDigital)-[:HAS_ANSWER_GROUP]->(ansGrpInboundDelivery),
        (ansGrpInboundDelivery)-[:HAS_ANSWER {order: 2}]->(ansInboundDelivery),
        (ansGrpInboundDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpSSS:AnswerGroup {name: 'ansGrpSSS'}),
    (qiPostal)-[:HAS_ANSWER_GROUP]->(ansGrpSSS),
    (ansGrpSSS)-[:HAS_ANSWER {order: 6}]->(ansSSS),
    (ansGrpSSS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

(ansGrpSomethingElse:AnswerGroup {name: 'ansGrpSomethingElse'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSomethingElse),
(ansGrpSomethingElse)-[:HAS_ANSWER {order: 3}]->(ansSomethingElse),
(ansGrpSomethingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage);