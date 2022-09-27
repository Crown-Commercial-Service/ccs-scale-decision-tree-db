CREATE

// QUESTIONS

// Questions: level 1

(qstnFirstQ:Question {
    uuid: 'e40d4dee-53fc-493b-a1d3-3e86d17add1e',
    text: 'What Service or Product are you looking for?',
    type: 'LIST'
}),


// Questions: level 2
(qstnWhatProduct:Question {
    uuid: '25e5d903-2f2a-4a55-9382-5fb935dab79d',
    text: 'What product do you need?',
    type: 'LIST'
}),

(qstnWhatService:Question {
    uuid: '06a14aa8-7b90-4e2a-a249-a55e8458e644',
    text: 'What service do you need?',
    type: 'LIST'
}),

// (qstnRepairAndRenovation:Question {
//     uuid: '5d55a804-361a-465b-a515-48a87688006e',
//     text: 'Repair and Renovation',
//     type: 'LIST'
// }),


// Questions: level 3
(qstnTypeOfficeFurniture:Question {
    uuid: '8f0e8b24-b61f-4b4b-9bc4-99197d9253ae',
    text: 'What type of office furniture do you need?',
    type: 'LIST'
}),

// Questions: level 4
(qstnSpecificFurnitureNeeds:Question {
    uuid: 'a765ee32-5f0b-4022-9f22-d1765d5cd6f9',
    text: 'Do you have specific furniture needs for further or higher education?',
    type: 'LIST'
}),



// ANSWERS

// Answers: level 1
(ansProduct:Answer {
    uuid: '518afdfd-c077-41f5-842c-c42b35ad4c3b',
    text: 'Product',
    hint: 'A product is an item you can buy. It\'s a one-off purchase and involves no ongoing contract.'
}),

(ansRepairAndRenovationService:Answer {
    uuid: '856a42b7-b828-4811-9901-dfd0d0544fb6',
    text: 'Repair and renovation service',
    hint: 'Buy repair and renovation services to maintain the condition of a range of furniture products.'
}),

// Answers: level 2 (Product)

(ansOfficeFurniture:Answer {
    uuid: '6a0d6b93-d944-43d3-aab1-5316af8b0060',
    text: 'Office Furniture',
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
    text: 'Residential Furniture',
    hint: 'Provides the supply, delivery and installation of a range of residential furniture including:
    <ul>
    <li>beds and bedroom furniture</li>
    <li>living room furniture such as sofas and chairs</li>
    <li>dining room furniture such as dinner tables</li>
    </ul>'
}),

(ansSecurityFurniture:Answer {
    uuid: '1d134e34-3504-46e1-b91c-614eebf429f0',
    text: 'Higher Standard Security Furniture',
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
    text: 'Bespoke and Fitted Furniture',
    hint: 'Provides the supply, delivery and installation of fitted and custom made furniture including beam seating and witness screens. Beam or \'bench\' seeting is a type of seating that can either be freestanding or fixed to the floor of a room.'
}),

(ansEducationalFurniture:Answer {
    uuid: 'a3996d30-219d-4735-8da1-a4d142fae234',
    text: 'Educational Furniture',
    hint: 'Provides the supply, delivery and installation of furniture for use in education settings including:
    <ul>
    <li>chairs and tables for pupils and teachers</li>
    <li>storage solutions</li>
    <li>teacher pedestals</li>
    </ul>'
}),

(ansHighDensitySteelStorage:Answer {
    uuid: '4c419e1f-ec4c-4e2c-8763-4e429ccac509',
    text: 'High Density Steel Storage',
    hint: 'Provides the supply, delivery and installation of a range of steel storage solutions including:
    <ul>
    <li>static and mobile storage systems</li>
    <li>gondola library shelving</li>
    <li>custom made storage solutions</li>
    </ul>'
}),

// Answers: level 2 (Service)

(ansRepairAndRenovation:Answer {
    uuid: 'e52aeefb-62e9-466b-8477-0c038164d83d',
    text: 'Buy repair and renovation services to maintain the condition of a range of furniture products.'
}),

// Answers: level 3 (Type of Office Furniture)

(ansGeneralOfficeFurniture:Answer {
    uuid: '212bd8fb-9f78-4fda-9bca-80c0280e747e',
    text: 'General office furniture',
    hint: 'Buy general office furniture including office desks, seating and storage.'
}),


(ansHigherSpecOfficeFurniture:Answer {
    uuid: '1e00eb44-b4ea-4580-bcf1-eff23d2bb844',
    text: 'Higher specification office furniture',
    hint: 'Buy a range of office furniture including desks, seating and storage that meets the government hub design guide.'
}),

// Answers: level 3 (Higher and Primary Education Services)

(ansHigherAndFurtherEduServices:Answer {
    uuid: '42fb458e-6e15-4bea-866f-42aa263cd386',
    text: 'Higher and Further Education needs and associated services',
    hint: 'Buy furniture for higher and further education settings. Includes furniture for lecture halls and conference rooms such as fixed seating and booths.'
}),

(ansPrimaryAndSecondaryEduServices:Answer {
    uuid: '234fa47c-bcf5-4656-9150-2f9d7e8795ff',
    text: 'Primary and Secondary education needs and associated services',
    hint: 'Buy furniture for primary and secondary education settings including chairs and tables for pupil and teachers.'
}),

// Answers: level 4

(ansFixedLectureHallSeating:Answer {
    uuid: '506c0394-ecef-4232-9601-12fd14d53d98',
    text: 'I need fixed lecture hall seating'
}),

(ansBreakoutFurniture:Answer {
    uuid: '3d5943da-1813-4d81-b13f-a4bfb49577e0',
    text: 'I need breakout furniture such as booths'
}),

(ansNoSpecificNeeds:Answer {
    uuid: '5bfabaf4-a221-45e9-9fcc-595d26c987f6',
    text: 'I do not have specific furniture needs'
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

        (ansGrpResidentialFurniture:AnswerGroup {name: 'ansGrpResidentialFurniture'}),
        (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpResidentialFurniture),
        (ansGrpResidentialFurniture)-[:HAS_ANSWER {order: 2}]->(ansResidentialFurniture),
        (ansGrpResidentialFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpSecurityFurniture:AnswerGroup {name: 'ansGrpSecurityFurniture'}),
        (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityFurniture),
        (ansGrpSecurityFurniture)-[:HAS_ANSWER {order: 3}]->(ansSecurityFurniture),
        (ansGrpSecurityFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpBespokeAndFittedFurniture:AnswerGroup {name: 'ansGrpBespokeAndFittedFurniture'}),
        (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpBespokeAndFittedFurniture),
        (ansGrpBespokeAndFittedFurniture)-[:HAS_ANSWER {order: 4}]->(ansBespokeAndFittedFurniture),
        (ansGrpBespokeAndFittedFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpEducationalFurniture:AnswerGroup {name: 'ansGrpEducationalFurniture'}),
        (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpEducationalFurniture),
        (ansGrpEducationalFurniture)-[:HAS_ANSWER {order: 5}]->(ansEducationalFurniture),
        (ansGrpEducationalFurniture)-[:HAS_OUTCOME]->(qiWhatProduct2:QuestionInstance:Outcome {uuid: 'aa18d8b8-c08c-4410-adc9-dc8ccca1da22'})-[:DEFINED_BY]->(qstnWhatProduct),

            (ansGrpHigherAndFurtherEduServices:AnswerGroup {name: 'ansGrpHigherAndFurtherEduServices'}),
            (qiWhatProduct2)-[:HAS_ANSWER_GROUP]->(ansGrpHigherAndFurtherEduServices),
            (ansGrpHigherAndFurtherEduServices)-[:HAS_ANSWER {order: 1}]->(ansHigherAndFurtherEduServices),
            (ansGrpHigherAndFurtherEduServices)-[:HAS_OUTCOME]->(qiSpecificFurnitureNeeds:QuestionInstance:Outcome {uuid: 'e88fa2dd-de2a-4218-836b-79a3965039d2'})-[:DEFINED_BY]->(qstnSpecificFurnitureNeeds),

                (ansGrpFixedLectureHallSeating:AnswerGroup {name: 'ansGrpFixedLectureHallSeating'}),
                (qiSpecificFurnitureNeeds)-[:HAS_ANSWER_GROUP]->(ansGrpFixedLectureHallSeating),
                (ansGrpFixedLectureHallSeating)-[:HAS_ANSWER {order: 1}]->(ansFixedLectureHallSeating),
                (ansGrpFixedLectureHallSeating)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

                (ansGrpBreakoutFurniture:AnswerGroup {name: 'ansGrpBreakoutFurniture'}),
                (qiSpecificFurnitureNeeds)-[:HAS_ANSWER_GROUP]->(ansGrpBreakoutFurniture),
                (ansGrpBreakoutFurniture)-[:HAS_ANSWER {order: 2}]->(ansBreakoutFurniture),
                (ansGrpBreakoutFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

                (ansGrpNoSpecificNeeds:AnswerGroup {name: 'ansGrpNoSpecificNeeds'}),
                (qiSpecificFurnitureNeeds)-[:HAS_ANSWER_GROUP]->(ansGrpNoSpecificNeeds),
                (ansGrpNoSpecificNeeds)-[:HAS_ANSWER {order: 3}]->(ansNoSpecificNeeds),
                (ansGrpNoSpecificNeeds)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpPrimaryAndSecondaryEduServices:AnswerGroup {name: 'ansGrpPrimaryAndSecondaryEduServices'}),
            (qiWhatProduct2)-[:HAS_ANSWER_GROUP]->(ansGrpPrimaryAndSecondaryEduServices),
            (ansGrpPrimaryAndSecondaryEduServices)-[:HAS_ANSWER {order: 2}]->(ansPrimaryAndSecondaryEduServices),
            (ansGrpPrimaryAndSecondaryEduServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpHighDensitySteelStorage:AnswerGroup {name: 'ansGrpHighDensitySteelStorage'}),
        (qiWhatProduct)-[:HAS_ANSWER_GROUP]->(ansGrpHighDensitySteelStorage),
        (ansGrpHighDensitySteelStorage)-[:HAS_ANSWER {order: 6}]->(ansHighDensitySteelStorage),
        (ansGrpHighDensitySteelStorage)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpRepairAndRenovationService:AnswerGroup {name: 'ansGrpRepairAndRenovationService'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRepairAndRenovationService),
    (ansGrpRepairAndRenovationService)-[:HAS_ANSWER {order: 2}]->(ansRepairAndRenovationService),
    (ansGrpRepairAndRenovationService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true});