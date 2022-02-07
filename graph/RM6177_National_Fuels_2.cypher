MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(qstnProduct:Question {uuid: 'b74c2815-db1c-49ee-b6dc-ce7cfb4f8d8b'}),
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),

(ansElse:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29'}),

(ansNorthEngland:Answer {uuid: '5523f058-843a-11ec-a8a3-0242ac120002'}),
(ansNorthEastEngland:Answer {uuid: '5523f2ba-843a-11ec-a8a3-0242ac120002'}),
(ansMidlands:Answer {uuid: '5523f3f0-843a-11ec-a8a3-0242ac120002'}),
(ansEastAnglia:Answer {uuid: '5523f602-843a-11ec-a8a3-0242ac120002'}),
(ansLondonAndSouthEast:Answer {uuid: '5523f71a-843a-11ec-a8a3-0242ac120002'}),
(ansSouthEngland:Answer {uuid: '5523f832-843a-11ec-a8a3-0242ac120002'}),
(ansSouthWestofEngland:Answer {uuid: '5523f936-843a-11ec-a8a3-0242ac120002'}),

(ansNorthWales:Answer {uuid: '5523fd3c-843a-11ec-a8a3-0242ac120002'}),
(ansSouthWales:Answer {uuid: '5523fe40-843a-11ec-a8a3-0242ac120002'}),

(ansNorthScotland:Answer {uuid: '55240106-843a-11ec-a8a3-0242ac120002'}),
(ansWestScotland:Answer {uuid: '5524020a-843a-11ec-a8a3-0242ac120002'}),
(ansCentralScotland:Answer {uuid: '5523ff58-843a-11ec-a8a3-0242ac120002'}),
(ansSouthScotland:Answer {uuid: '55240494-843a-11ec-a8a3-0242ac120002'}),

(ansNorthernIreland:Answer {uuid: 'ccb5c1cc-75b5-11ea-bc55-0242ac130003'})

CREATE
// Questions
(qstnProductOrService:Question {uuid: '53051f51-c1ea-4b45-b8c0-cbb60f6a0446', text: 'Do you need a product or service?', type: 'LIST'}),
(qstnLocation:Question {uuid: 'eb910af9-a2e8-46c2-8537-c0853b72dc7c', text: 'Where do you need the fuel to be delivered?', type: 'LIST'}),

// Answer
(ansProduct:Answer {uuid: 'b237073c-accc-4305-9f21-bfa2ab6f262f', text: 'Product', hint: 'A product is an item you can buy. It\'s a one-off purchase and involves no ongoing contract'}),
(ansService:Answer {uuid: 'b3a6e609-5b61-4e88-82d4-4241fc8cfa93', text: 'Service', hint: 'A service is a contract for something to happen, either once or on a regular basis'}),

(ansAssociatedServices:Answer {uuid: 'd85a5157-0dfb-4034-a9a4-5340f65d427b', text: 'Associated services', hint: 'Buy products and services associated with using solid fuels such as fuel testing and spillage kits and tank replacement and maintenance services'}),

(ansLiquidFuels:Answer {uuid: 'bf6f812f-88a8-45d8-acac-83f32f58bcc9', text: 'Liquid fuels', hint: 'Liquid fuels for heating and transport. Includes items such as heating oil (biodiesel, kerosene), road fuel additives (for example, ad blue), diesel, petrol and aviation fuels'}),
(ansSolidFuels:Answer {uuid: '02e1f446-c695-4be2-a97b-42346b7bfbba', text: 'Solid fuels', hint: 'Materials such as wood pellets and wood chips that can be burnt to provide energy'}),
(ansLiquefiedGas:Answer {uuid: '18a8a12a-73c0-4fe3-b940-b37e9119b308', text: 'Liquefied gas', hint: 'Products such as liquid petroleum gas (LPG) in butane, propane or hydrogen cylinders and liquified natural gasses (LNG)'}),
(ansGlAndAntifreeze:Answer {uuid: '3d384381-89ac-4ca0-a1ef-aa7a6ca72e05', text: 'Greases, lubricants and antifreeze', hint: 'Lubricants and antifreeze products to use in vehicles such as cars, vans and buses'}),

(ansEngland:Answer {uuid: 'd9ce52ee-bfa5-442b-8de7-dc0e76186d83', text: 'England', hint: 'You can select the region where you would like your fuel to be delivered. '}),
(ansWales:Answer {uuid: '5a5b32c8-70bb-47fb-901b-c0f9eb60a3f4', text: 'Wales', hint: 'You can select the region where you would like your fuel to be delivered. '}),
(ansScotland:Answer {uuid: '8e4e23a8-1a8c-400b-a3c8-8c9dc9aac043', text: 'Scotland', hint: 'You can select the region where you would like your fuel to be delivered. '}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyNationalFuelsTwo:Journey {uuid: '44e30745-7220-41b0-8a64-c706d46de505', name: 'National Fuels 2'}),
(jrnyNationalFuelsTwo)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '7c9af933-11fd-41df-9709-423aa09307d8'})-[:DEFINED_BY]->(qstnProductOrService),

    (ansGrpService:AnswerGroup {name: 'ansGrpService'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpService),
    (ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
    (ansGrpService)-[:HAS_OUTCOME]->(qiService:QuestionInstance:Outcome {uuid: 'e191fc3b-6823-44e6-967f-89b03ea326e4'})-[:DEFINED_BY]->(qstnService),
    
        (ansGrpAssociatedServices:AnswerGroup {name: 'ansGrpAssociatedServices'}),
        (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpAssociatedServices),
        (ansGrpAssociatedServices)-[:HAS_ANSWER {order: 1}]->(ansAssociatedServices),
        (ansGrpAssociatedServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        (ansGrpElse:AnswerGroup {name: 'ansGrpElse'}),
        (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpElse),
        (ansGrpElse)-[:HAS_ANSWER {order: 2}]->(ansElse),
        (ansGrpElse)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    (ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
    (ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
    (ansGrpProduct)-[:HAS_OUTCOME]->(qiProduct:QuestionInstance:Outcome {uuid: '4e38e744-840c-4981-b5ee-5934d02cb4cc'})-[:DEFINED_BY]->(qstnProduct),

        (ansGrpSolidFuels:AnswerGroup {name: 'ansGrpSolidFuels'}),
        (qiProduct)-[:HAS_ANSWER_GROUP]->(ansGrpSolidFuels),
        (ansGrpSolidFuels)-[:HAS_ANSWER {order: 2}]->(ansSolidFuels),
        (ansGrpSolidFuels)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpLiquefiedGas:AnswerGroup {name: 'ansGrpLiquefiedGas'}),
        (qiProduct)-[:HAS_ANSWER_GROUP]->(ansGrpLiquefiedGas),
        (ansGrpLiquefiedGas)-[:HAS_ANSWER {order: 3}]->(ansLiquefiedGas),
        (ansGrpLiquefiedGas)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpGlAndAntifreeze:AnswerGroup {name: 'ansGrpGlAndAntifreeze'}),
        (qiProduct)-[:HAS_ANSWER_GROUP]->(ansGrpGlAndAntifreeze),
        (ansGrpGlAndAntifreeze)-[:HAS_ANSWER {order: 4}]->(ansGlAndAntifreeze),
        (ansGrpGlAndAntifreeze)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpLiquidFuels:AnswerGroup {name: 'ansGrpLiquidFuels'}),
        (qiProduct)-[:HAS_ANSWER_GROUP]->(ansGrpLiquidFuels),
        (ansGrpLiquidFuels)-[:HAS_ANSWER {order: 1}]->(ansLiquidFuels),
        (ansGrpLiquidFuels)-[:HAS_OUTCOME]->(qiLocation:QuestionInstance:Outcome {uuid: '87614314-4b22-4fec-a9d5-f99ff95c7abe'})-[:DEFINED_BY]->(qstnLocation),

                (ansGrpNorthernIreland:AnswerGroup {name: 'ansGrpNorthernIreland'}),
                (qiLocation)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland),
                (ansGrpNorthernIreland)-[:HAS_ANSWER {order: 4}]->(ansNorthernIreland),
                (ansGrpNorthernIreland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '114', url: '', type: 'CAT', scale: true}),

                (ansGrpEngland:AnswerGroup {name: 'ansGrpEngland'}),
                (qiLocation)-[:HAS_ANSWER_GROUP]->(ansGrpEngland),
                (ansGrpEngland)-[:HAS_ANSWER {order: 1}]->(ansEngland),
                (ansGrpEngland)-[:HAS_OUTCOME]->(qiLocationEngland:QuestionInstance:Outcome {uuid: 'bbe6686a-691c-484c-aed7-2f512e4b74bd'})-[:DEFINED_BY]->(qstnLocation),

                        (ansGrpNorthEngland:AnswerGroup {name: 'ansGrpNorthEngland'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland),
                        (ansGrpNorthEngland)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                        (ansGrpNorthEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '105', url: '', type: 'CAT', scale: true}),

                        (ansGrpNorthEastEngland:AnswerGroup {name: 'ansGrpNorthEastEngland'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEastEngland),
                        (ansGrpNorthEastEngland)-[:HAS_ANSWER {order: 2}]->(ansNorthEastEngland),
                        (ansGrpNorthEastEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '106', url: '', type: 'CAT', scale: true}),

                        (ansGrpMidlands:AnswerGroup {name: 'ansGrpMidlands'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpMidlands),
                        (ansGrpMidlands)-[:HAS_ANSWER {order: 3}]->(ansMidlands),
                        (ansGrpMidlands)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '107', url: '', type: 'CAT', scale: true}),

                        (ansGrpEastAnglia:AnswerGroup {name: 'ansGrpEastAnglia'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpEastAnglia),
                        (ansGrpEastAnglia)-[:HAS_ANSWER {order: 4}]->(ansEastAnglia),
                        (ansGrpEastAnglia)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '108', url: '', type: 'CAT', scale: true}),

                        (ansGrpLondonAndSouthEast:AnswerGroup {name: 'ansGrpLondonAndSouthEast'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpLondonAndSouthEast),
                        (ansGrpLondonAndSouthEast)-[:HAS_ANSWER {order: 5}]->(ansLondonAndSouthEast),
                        (ansGrpLondonAndSouthEast)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '109', url: '', type: 'CAT', scale: true}),

                        (ansGrpSouthEngland:AnswerGroup {name: 'ansGrpSouthEngland'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland),
                        (ansGrpSouthEngland)-[:HAS_ANSWER {order: 6}]->(ansSouthEngland),
                        (ansGrpSouthEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '110', url: '', type: 'CAT', scale: true}),

                        (ansGrpSouthWestofEngland:AnswerGroup {name: 'ansGrpSouthWestofEngland'}),
                        (qiLocationEngland)-[:HAS_ANSWER_GROUP]->(ansGrpSouthWestofEngland),
                        (ansGrpSouthWestofEngland)-[:HAS_ANSWER {order: 7}]->(ansSouthWestofEngland),
                        (ansGrpSouthWestofEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '111', url: '', type: 'CAT', scale: true}),

                (ansGrpWales:AnswerGroup {name: 'ansGrpWales'}),
                (qiLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWales),
                (ansGrpWales)-[:HAS_ANSWER {order: 2}]->(ansWales),
                (ansGrpWales)-[:HAS_OUTCOME]->(qiLocationWales:QuestionInstance:Outcome {uuid: '790916ef-9cf9-4037-b8c9-e7fbcfcb9f98'})-[:DEFINED_BY]->(qstnLocation),

                        (ansGrpNorthWales:AnswerGroup {name: 'ansGrpNorthWales'}),
                        (qiLocationWales)-[:HAS_ANSWER_GROUP]->(ansGrpNorthWales),
                        (ansGrpNorthWales)-[:HAS_ANSWER {order: 1}]->(ansNorthWales),
                        (ansGrpNorthWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '113', url: '', type: 'CAT', scale: true}),

                        (ansGrpSouthWales:AnswerGroup {name: 'ansGrpSouthWales'}),
                        (qiLocationWales)-[:HAS_ANSWER_GROUP]->(ansGrpSouthWales),
                        (ansGrpSouthWales)-[:HAS_ANSWER {order: 2}]->(ansSouthWales),
                        (ansGrpSouthWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '112', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland:AnswerGroup {name: 'ansGrpScotland'}),
                (qiLocation)-[:HAS_ANSWER_GROUP]->(ansGrpScotland),
                (ansGrpScotland)-[:HAS_ANSWER {order: 3}]->(ansScotland),
                (ansGrpScotland)-[:HAS_OUTCOME]->(qiLocationScotland:QuestionInstance:Outcome {uuid: '2698e523-9227-4636-8ad2-a9e0e5fa2a4b'})-[:DEFINED_BY]->(qstnLocation),

                    (ansGrpNorthScotland:AnswerGroup {name: 'ansGrpNorthScotland'}),
                    (qiLocationScotland)-[:HAS_ANSWER_GROUP]->(ansGrpNorthScotland),
                    (ansGrpNorthScotland)-[:HAS_ANSWER {order: 1}]->(ansNorthScotland),
                    (ansGrpNorthScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '101', url: '', type: 'CAT', scale: true}),

                    (ansGrpWestScotland:AnswerGroup {name: 'ansGrpWestScotland'}),
                    (qiLocationScotland)-[:HAS_ANSWER_GROUP]->(ansGrpWestScotland),
                    (ansGrpWestScotland)-[:HAS_ANSWER {order: 2}]->(ansWestScotland),
                    (ansGrpWestScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '102', url: '', type: 'CAT', scale: true}),

                    (ansGrpCentralScotland:AnswerGroup {name: 'ansGrpCentralScotland'}),
                    (qiLocationScotland)-[:HAS_ANSWER_GROUP]->(ansGrpCentralScotland),
                    (ansGrpCentralScotland)-[:HAS_ANSWER {order: 3}]->(ansCentralScotland),
                    (ansGrpCentralScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '103', url: '', type: 'CAT', scale: true}),

                    (ansGrpSouthScotland:AnswerGroup {name: 'ansGrpSouthScotland'}),
                    (qiLocationScotland)-[:HAS_ANSWER_GROUP]->(ansGrpSouthScotland),
                    (ansGrpSouthScotland)-[:HAS_ANSWER {order: 4}]->(ansSouthScotland),
                    (ansGrpSouthScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6177'})-[:HAS_LOT]->(:Lot {number: '104', url: '', type: 'CAT', scale: true});