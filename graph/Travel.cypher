Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
//Answer
(ansTravel:Answer {
    uuid: 'b9362efa-7718-4907-93a6-12f46647cc40',
    text: 'Travel',
    hint: 'Access a range of travel solutions and support services for your organisation. Includes:
    <ul>
        <li>domestic and international air, water and ground travel including planes, ferries, euro tunnel, rail and car hire</li>
        <li>supporting services such as traveller tracking and additional passport, visa, currency and covid services</li>
        <li>crisis management services including repatriation, emergency accommodation, MEDEVAC and security and risk management services</li>
    </ul>'
}),

(ansTravelAndVenue:Answer {
    uuid: 'b1077a6c-dc4f-42c2-8df3-1e08e04dce3a',
    text: 'Travel and venue services',
    hint: 'Use our travel and venue solution to find and book travel and meeting spaces for your organisation. You can book:
    <ul>
        <li>domestic and international travel from within the uk including air, rail, ferry, taxi and vehicle hire</li>
        <li>accommodation </li>
        <li>meeting venues</li>
    </ul>'
}),

(ansVenueServices:Answer {
    uuid: 'c464da50-3249-4ff3-9047-b62b85d53d1a',
    text: 'Venue services',
    hint: 'Book the type of venue or event booking solution you need. Includes access to:
    <ul>
        <li>venues for virtual, digital and hybrid meetings</li>
        <li>booking group accommodation</li>
        <li>supporting services such as covid test kits</li>
    </ul>'
}),

(ansOnlineOnly:Answer {
    uuid: '86a9cff2-daf8-4985-83b1-edf6bfb89d2c',
    text: 'Online booking solutions for standard UK and overseas travel',
    hint: 'Book domestic and international travel using an online booking site. You will need to book services from within the UK using GBP (pound sterling). Services include:
    <ul>
        <li>air, rail, ferry and Euro tunnel travel</li>
        <li>accommodation</li>
        <li>ground transport including car hire, coach hire with driver and taxis</li>
        <li>supporting services such as a traveller tracking platform, risk alerts and mobile trip booking </li>
        <li>optional passport and visa services</li>
    </ul>'
}),

(ansOnlineAndOfflineUK:Answer {
    uuid: '40e3217a-096c-4052-93d8-d841bc368a4d',
    text: 'Online and offline booking solutions for standard UK and overseas travel',
    hint: 'Book and pay for travel and accommodation in the UK and international countries where you have a departmental presence. Services include:
    <ul>
        <li>access to online (website) and offline booking services and support (such as booking travel by telephone)</li>
        <li>air, rail, ferry, Euro tunnel, car hire, coach hire with driver and taxi travel</li>
        <li>air, boat and helicopter chartering</li>
        <li>supporting services such as passenger traveller tracking and passport, visa, currency and covid services including test kits and managed quarantine</li>
        <li>crisis management services including emergency accommodation, MEDEVAC and security and risk management services</li>
    </ul>'
}),

(ansOnlineAndOfflineMOD:Answer {
    uuid: 'd6731fe7-26e8-44b9-aa6c-ea2b7d1e83ac',
    text: 'Online and offline booking services for MOD',
    hint: 'Designed to help you book more complex travel needs. Services you can access include:
    <ul>
        <li>online (website) and offline booking services and support (such as booking travel by telephone)</li>
        <li>air, rail, ferry, Euro tunnel, car hire, coach hire with driver and taxi travel</li>
        <li>air, boat and helicopter chartering</li>
        <li>supporting services such as passenger traveller tracking and passport, visa, currency and covid services including test kits and managed quarantine</li>
        <li>crisis management services including emergency accommodation, MEDEVAC and security and risk management services</li>
    </ul>'
}),

(ansPublic:Answer {
    uuid: '12db5d0e-2c16-48b4-8366-40db2db21e79',
    text: 'Public sector global travel management service',
    hint: 'Access our travel management service which will allow you to book travel and meeting venues both in the UK and overseas. Services include:
    <ul>
        <li>access to a single supplier who will provide complex travel services locally</li>
        <li>domestic and international travel including air, rail, ferry, vehicle hire and taxis</li>
        <li>booking meeting venues and accommodation both in the UK and overseas</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure

(jrnyTravel:Journey {uuid: 'd0a7534a-c5bd-42d1-a023-b34b29ab840e', name: 'Travel'}),
(jrnyTravel)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '2d37c4d3-0e35-495a-9d85-2ed342d09a52'})-[:DEFINED_BY]->(qstnService),

(ansGrpTravel:AnswerGroup {name: 'ansGrpTravel'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTravel),
(ansGrpTravel)-[:HAS_ANSWER {order: 1}]->(ansTravel),
(ansGrpTravel)-[:HAS_OUTCOME]->(qiService:QuestionInstance:Outcome {uuid: '88b0d70e-4de5-4d6d-950d-bcc9b66072ff'})-[:DEFINED_BY]->(qstnService),

    (ansGrpOnlineOnly:AnswerGroup {name: 'ansGrpOnlineOnly'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpOnlineOnly),
    (ansGrpOnlineOnly)-[:HAS_ANSWER {order: 1}]->(ansOnlineOnly),
    (ansGrpOnlineOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6217'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpOnlineAndOfflineUK:AnswerGroup {name: 'ansGrpOnlineAndOfflineUK'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpOnlineAndOfflineUK),
    (ansGrpOnlineAndOfflineUK)-[:HAS_ANSWER {order: 2}]->(ansOnlineAndOfflineUK),
    (ansGrpOnlineAndOfflineUK)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6217'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),


    (ansGrpOnlineAndOfflineMOD:AnswerGroup {name: 'ansGrpOnlineAndOfflineMOD'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpOnlineAndOfflineMOD),
    (ansGrpOnlineAndOfflineMOD)-[:HAS_ANSWER {order: 3}]->(ansOnlineAndOfflineMOD),
    (ansGrpOnlineAndOfflineMOD)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6217'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),


    (ansGrpPublic:AnswerGroup {name: 'ansGrpPublic'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpPublic),
    (ansGrpPublic)-[:HAS_ANSWER {order: 4}]->(ansPublic),
    (ansGrpPublic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6164'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),


(ansGrpTravelAndVenue:AnswerGroup {name: 'ansGrpTravelAndVenue'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTravelAndVenue),
(ansGrpTravelAndVenue)-[:HAS_ANSWER {order: 2}]->(ansTravelAndVenue),
(ansGrpTravelAndVenue)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6164'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),


(ansGrpVenueServices:AnswerGroup {name: 'ansGrpVenueServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVenueServices),
(ansGrpVenueServices)-[:HAS_ANSWER {order: 3}]->(ansVenueServices),
(ansGrpVenueServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6217'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true});