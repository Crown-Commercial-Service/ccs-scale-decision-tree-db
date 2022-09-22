CREATE

// QUESTIONS

// Questions: level 1

(qstnFirstQ:Question {
    uuid: 'e40d4dee-53fc-493b-a1d3-3e86d17add1e',
    text: 'What Service or  Product  are you looking for?',
    type: 'LIST'
}),


// Questions: level 2
(qstnWhatProduct:Question {
    uuid: '25e5d903-2f2a-4a55-9382-5fb935dab79d',
    text: 'What product do you need? Error: Select the product you need?',
    type: 'LIST'
}),

(qstnWhatService:Question {
    uuid: '06a14aa8-7b90-4e2a-a249-a55e8458e644',
    text: 'What service do you need? Error: Select the service you need?',
    type: 'LIST'
}),


// Questions: level 3
(qstnTypeOfficeFurniture:Question {
    uuid: '8f0e8b24-b61f-4b4b-9bc4-99197d9253ae',
    text: 'Select type of office furniture:',
    type: 'LIST'
}),


// ANSWERS

// Answers: level 1
(ansProduct:Answer {
    uuid: '518afdfd-c077-41f5-842c-c42b35ad4c3b',
    text: 'Product',
    hint: 'A product is an item you can buy. It\'s a one-off purchase and involves no ongoing contract.'
}),

(ansService:Answer {
    uuid: '856a42b7-b828-4811-9901-dfd0d0544fb6',
    text: 'Service',
    hint: 'A service is a contract for something to happen, either once or on a regular basis.'
}),

// Answers: level 2 (Product)

(ansOfficeFurniture:Answer {
    uuid: '6a0d6b93-d944-43d3-aab1-5316af8b0060',
    text: 'Office Furniture (1)',
    hint: 'Provides the supply, delivery and installation of a range of office furniture including:
    <ul>
    <li>office desks and workstations</li>
    <li>office seating and storage</li>
    <li>furniture for break out and conference rooms</li>
    <li>government hub design guide furniture</li>
    </ul>'
}),

(ansResidentialFurniture:Answer {
    uuid: 'd8d98691-6533-4ca0-b1fe-4486c755c080',
    text: 'Residential Furniture (2)',
    hint: 'Provides the supply, delivery and installation of a range of residential furniture including:
    <ul>
    <li>beds and bedroom furniture</li>
    <li>living room furniture such as sofas and chairs</li>
    <li>dining room furniture such as dinner tables</li>
    </ul>'
}),

(ansSecurityFurniture:Answer {
    uuid: '1d134e34-3504-46e1-b91c-614eebf429f0',
    text: 'Higher Standard Security Furniture (3)',
    hint: 'Provides the supply, delivery and installation of a range of furniture for sites or organisations with heightened security storage needs. All furniture is centre for protection of national infrastructure (CPNI) compliant and includes:
    <ul>
    <li>key and document boxes</li>
    <li>filing cabinets</li>
    <li>security cupboards and fitments</li>
    <li>office cupboards and computer containers</li>
    <li>ammunition storage</li>
    <ul>'
}),

(ansBespokeAndFittedFurniture:Answer {
    uuid: '4e5968b8-45f1-4126-b749-f6ec4006b5cd',
    text: 'Bespoke and Fitted Furniture (4)',
    hint: 'Provides the supply, delivery and installation of fitted and custom made furniture including beam seating and witness screens.'
}),

(ansEducationalFurniture:Answer {
    uuid: 'a3996d30-219d-4735-8da1-a4d142fae234',
    text: 'Educational Furniture (5)',
    hint: 'Provides the supply, delivery and installation of furniture for use in education settings including:
    <ul>
    <li>chairs and tables for pupils and teachers</li>
    <li>storage solutions</li>
    <li>teacher pedestals</li>
    </ul>'
}),

(ansHighDensitySteelStorage:Answer {
    uuid: '4c419e1f-ec4c-4e2c-8763-4e429ccac509',
    text: 'High Density Steel Storage (6)',
    hint: 'Provides the supply, delivery and installation of a range of steel storage solutions including:
    <ul>
    <li>static and mobile storage systems</li>
    <li>gondola library shelving</li>
    <li>custom made storage solutions</li>
    </ul>'
}),

// Answers: level 2 (Service)

(ansRepairAndInnovation:Answer {
    uuid: 'e52aeefb-62e9-466b-8477-0c038164d83d',
    text: 'Repair and Renovation (1)',
    hint: 'Buy repair and renovation services to maintain the condition of a range of furniture products.'
}),

// Answers: level 3 (Type of Office Furniture)

(ansGeneralOfficeFurniture:Answer {
    uuid: '212bd8fb-9f78-4fda-9bca-80c0280e747e',
    text: 'General office furniture (1)',
    hint: 'Buy general office furniture including office desks, seating and storage.'
}),
 

(ansHigherSpecOfficeFurniture:Answer {
    uuid: '1e00eb44-b4ea-4580-bcf1-eff23d2bb844',
    text: 'Higher specification office furniture (2)',
    hint: 'Buy a range of office furniture including desks, seating and storage that meets the government hub design guide.'
}),
 


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyFurnitureAndAssociatedServices:Journey {uuid: '085df7f9-8014-4350-b3a4-b1eadf5c3766', name: 'Furniture and Associated Services'}),
    
    (jrnyFurnitureAndAssociatedServices)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '21ee1f95-49cc-4615-a5a6-d8c33ad54d8e'})-[:DEFINED_BY]->(qstnFirstQ),

        (ansGrpProduct:AnswerGroup {name: 'ansGrpProduct'}),
        (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpProduct),
        (ansGrpProduct)-[:HAS_ANSWER {order: 1}]->(ansProduct),
        (ansGrpProduct)-[:HAS_OUTCOME]->(qiWhatProduct:QuestionInstance:Outcome {uuid: 'd4b6e226-64c4-414c-82d9-935900ee6878'})-[:DEFINED_BY]->(qstnWhatProduct),

            (ansGrpOfficeFurniture:AnswerGroup {name: 'ansGrpOfficeFurniture'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpOfficeFurniture),
            (ansGrpOfficeFurniture)-[:HAS_ANSWER {order: 1}]->(ansOfficeFurniture),
            (ansGrpOfficeFurniture)-[:HAS_OUTCOME]->(qiTypeOfficeFurniture:QuestionInstance:Outcome {uuid: '220f5982-e415-48d8-8bcd-0f2aeb3c46e4'})-[:DEFINED_BY]->(qstnTypeOfficeFurniture),
            
                (ansGrpGeneralOfficeFurniture:AnswerGroup {name: 'ansGrpGeneralOfficeFurniture'}),
                (qiTypeOfficeFurniture)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralOfficeFurniture),
                (ansGrpGeneralOfficeFurniture)-[:HAS_ANSWER {order: 1}]->(ansGeneralOfficeFurniture),
                (ansGrpGeneralOfficeFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

                (ansGrpHigherSpecOfficeFurniture:AnswerGroup {name: 'ansGrpHigherSpecOfficeFurniture'}),
                (qiTypeOfficeFurniture)-[:HAS_ANSWER_GROUP]->(ansGrpHigherSpecOfficeFurniture),
                (ansGrpHigherSpecOfficeFurniture)-[:HAS_ANSWER {order: 2}]->(ansHigherSpecOfficeFurniture),
                (ansGrpHigherSpecOfficeFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),
                // (ansGrpHigherSpecOfficeFurniture)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: '52e6dfcf-2cc7-4fa1-81cf-204ced15fdd3'})-[:DEFINED_BY]->(qstn*****),

            (ansGrpResidentialFurniture:AnswerGroup {name: 'ansGrpResidentialFurniture'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpResidentialFurniture),
            (ansGrpResidentialFurniture)-[:HAS_ANSWER {order: 2}]->(ansResidentialFurniture),
            // (ansGrpResidentialFurniture)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: 'd6d29c20-1c62-471e-ba8b-a48a04df3158'})-[:DEFINED_BY]->(qstn*****),

            (ansGrpSecurityFurniture:AnswerGroup {name: 'ansGrpSecurityFurniture'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityFurniture),
            (ansGrpSecurityFurniture)-[:HAS_ANSWER {order: 3}]->(ansSecurityFurniture),
            // (ansGrpSecurityFurniture)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: 'c938c1f3-b087-49c8-b92f-188063bd5c8f'})-[:DEFINED_BY]->(qstn*****),

            (ansGrpBespokeAndFittedFurniture:AnswerGroup {name: 'ansGrpBespokeAndFittedFurniture'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpBespokeAndFittedFurniture),
            (ansGrpBespokeAndFittedFurniture)-[:HAS_ANSWER {order: 4}]->(ansBespokeAndFittedFurniture),
            // (ansGrpBespokeAndFittedFurniture)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: 'e0e35555-188a-4415-b202-2c9f173660da'})-[:DEFINED_BY]->(qstn*****),

            (ansGrpEducationalFurniture:AnswerGroup {name: 'ansGrpEducationalFurniture'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpEducationalFurniture),
            (ansGrpEducationalFurniture)-[:HAS_ANSWER {order: 5}]->(ansEducationalFurniture),
            // (ansGrpEducationalFurniture)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: 'aa18d8b8-c08c-4410-adc9-dc8ccca1da22'})-[:DEFINED_BY]->(qstn*****),

            (ansGrpHighDensitySteelStorage:AnswerGroup {name: 'ansGrpHighDensitySteelStorage'}),
            (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpHighDensitySteelStorage),
            (ansGrpHighDensitySteelStorage)-[:HAS_ANSWER {order: 6}]->(ansHighDensitySteelStorage),
            // (ansGrpHighDensitySteelStorage)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: '1931fe5d-3a9f-4ed3-b3a8-78bec0843b78'})-[:DEFINED_BY]->(qstn*****),

        (ansGrpService:AnswerGroup {name: 'ansGrpService'}),
        (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpService),
        (ansGrpService)-[:HAS_ANSWER {order: 2}]->(ansService),
        (ansGrpService)-[:HAS_OUTCOME]->(qiWhatService:QuestionInstance:Outcome {uuid: '4f40a9e8-f1cf-435c-bc50-7c033e94da9a'})-[:DEFINED_BY]->(qstnWhatService),
        
            (ansGrpRepairAndInnovation:AnswerGroup {name: 'ansGrpRepairAndInnovation'}),
            (qiWhatService)-[:HAS_ANSWER_GROUP]->(ansGrpRepairAndInnovation),
            (ansGrpRepairAndInnovation)-[:HAS_ANSWER {order: 6}]->(ansRepairAndInnovation);
            // (ansGrpRepairAndInnovation)-[:HAS_OUTCOME]->(qi*****:QuestionInstance:Outcome {uuid: 'd4b6e226-64c4-414c-82d9-935900ee6878'})-[:DEFINED_BY]->(qstn*****),