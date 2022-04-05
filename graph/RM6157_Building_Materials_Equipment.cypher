CREATE

// Question
(qstnFirstQ:Question {
    uuid: 'c9d1d3c4-3d5f-4db0-837e-be9f9fb8ce55',
    text: 'What product are you looking for?',
    hint: 'Heating and electrical products, domestic kitchens, paints and solvents, flooring, tool and plant sale and hire, protective wear',
    type: 'LIST'
}),

(qstnBuyOrHire:Question {
    uuid: 'def0be6b-76a6-4e87-aa85-61165a60e08b',
    text: 'Do you want to buy or hire your construction tools?',
    type: 'LIST'
}),

// Answers
(ansHeavyBuildingsMaterials:Answer {
    uuid: '19c7975d-5b07-47b5-8a9c-864f4cd90de3',
    text: 'Heavy buildings materials',
    hint: 'Buy or hire a range of building materials and products such as:
    <br>&#8226; bricks and blocks
    <br>&#8226; aggregate, sand and cement
    <br>&#8226; roofing materials, timber and skirting boards
    <br>&#8226; insulation
    <br>&#8226; doors and flooring
    <br>&#8226; screws, adhesives and personal protective equipment (PPE)'
}),

(ansPlumbingHeatingBathrooms:Answer {
    uuid: '671df648-ea5c-4847-86be-11510d12259f',
    text: 'Plumbing, heating and bathrooms',
    hint: 'Plumbing and heating products such as:
    <br>&#8226; boilers
    <br>&#8226; water and immersion heaters
    <br>&#8226; radiators
    <br>&#8226; ventilation including air vents, programmers and thermostats'
}),

(ansElectricalProducts:Answer {
    uuid: 'b89eba96-e5b3-4fca-af2e-d45cb6b80acd',
    text: 'Electrical products',
    hint: 'Buy electrical products, including:
    <br>&#8226; residential CCTV cameras
    <br>&#8226; carbon monoxide and smoke alarms
    <br>&#8226; air conditioners
    <br>&#8226; electric heating such as thermostats, smart heating hubs and free standing fan heaters
    <br>&#8226; lighting products
    <br>&#8226; meter boxes
    <br>&#8226; fuses, trunking, conduits, sockets and switches'
}),

(ansFlooring:Answer {
    uuid: 'e6ab5111-d83f-431c-97ef-df07a934d319',
    text: 'Flooring',
    hint: 'Buy carpet, underlay, wood and vinyl flooring. Also includes sealants and adhesives, solutions for damp or contaminated flooring and installation services.'
}),

(ansPaintsAndSolvents:Answer {
    uuid: '94818955-d71a-4164-bbda-f334c0761a38',
    text: 'Paints and Solvents',
    hint: 'Includes products such as:
    <br>&#8226; undercoat, gloss, matt, silk, floor, metal and outdoor paints
    <br>&#8226; wood treatments such as oil and water preservers and wood stains
    <br>&#8226; wallpaper brushes and rollers
    <br>&#8226; decorating knives and sanding tools'
}),

(ansKitchens:Answer {
    uuid: '4ec242b7-b0e2-4444-9031-ce244756f762',
    text: 'Kitchens (domestic)',
    hint: 'Buy basic, mid and high range kitchen cabinets, kitchen accessories and white goods such as cookers and washing machines. Also includes installation services.'
}),

(ansPersonalProtectiveEquipment:Answer {
    uuid: 'cff42e8f-6dec-4b69-b445-79b334836b36',
    text: 'Personal protective equipment workwear, general and specialist)',
    hint: 'Buy personal protective equipment and associated products and services, including:
    <br>&#8226; first aid, such as oxygen monitors, automatic defibrilators and breathing aparatus
    <br>&#8226; protective clothing, such as coveralls, gloves, footwear and hats
    <br>&#8226; protective equipment such as spectacles, goggles, face masks, earplugs and earmuffs
    <br>&#8226; face fitting service which ensures a respiratory protective device (RPD) properly fitts the wearer and prevents dangerous workplace exposure'
}),

(ansBuildingConstructionToolsEquipment:Answer {
    uuid: 'e82b8ce6-e01e-407c-90a6-41815147ad6c',
    text: 'Building and Construction tools & Equipment',
    hint: 'Buy and hire a range of construction tools and equipment, including:
    <br>&#8226; gardening machinery such as lawn mowers, trimmers and leaf blowers
    <br>&#8226; gardening tools such as rakes and shears
    <br>&#8226; fencing materials for a range of fence types including wood, wire and security barriers
    <br>&#8226; lighting equipment
    <br>&#8226; site storage
    <br>&#8226; surveying and location tools, including laser levels, measuring and leveling rods'
}),

(ansBuildingConstructionBuy:Answer {
    uuid: 'e258e5ca-413b-43a3-861e-7b97b5e2412b',
    text: 'Buy'
}),

(ansBuildingConstructionHire:Answer {
    uuid: '727ec277-9d41-4426-bd97-d034103816b7',
    text: 'Hire'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyMFD:Journey {uuid: '8b4ebcd8-4fa3-456c-a01f-af29b973d040', name: 'Building Materials and Equipment'}),
(jrnyMFD)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '6d82d388-2e35-4b26-801e-9fd5f94912bf'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpHeavyBuildingsMaterials:AnswerGroup {name: 'ansGrpHeavyBuildingsMaterials'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeavyBuildingsMaterials),
    (ansGrpHeavyBuildingsMaterials)-[:HAS_ANSWER {order: 1}]->(ansHeavyBuildingsMaterials),
    (ansGrpHeavyBuildingsMaterials)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPlumbingHeatingBathrooms:AnswerGroup {name: 'ansGrpPlumbingHeatingBathrooms'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeavyBuildingsMaterials),
    (ansGrpPlumbingHeatingBathrooms)-[:HAS_ANSWER {order: 2}]->(ansPlumbingHeatingBathrooms),
    (ansGrpPlumbingHeatingBathrooms)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpElectricalProducts:AnswerGroup {name: 'ansGrpElectricalProducts'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeavyBuildingsMaterials),
    (ansGrpElectricalProducts)-[:HAS_ANSWER {order: 3}]->(ansElectricalProducts),
    (ansGrpElectricalProducts)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpFlooring:AnswerGroup {name: 'ansGrpFlooring'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFlooring),
    (ansGrpFlooring)-[:HAS_ANSWER {order: 4}]->(ansFlooring),
    (ansGrpFlooring)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpPaintsAndSolvents:AnswerGroup {name: 'ansGrpPaintsAndSolvents'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPaintsAndSolvents),
    (ansGrpPaintsAndSolvents)-[:HAS_ANSWER {order: 5}]->(ansPaintsAndSolvents),
    (ansGrpPaintsAndSolvents)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpKitchens:AnswerGroup {name: 'ansGrpKitchens'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpKitchens),
    (ansGrpKitchens)-[:HAS_ANSWER {order: 6}]->(ansKitchens),
    (ansGrpKitchens)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpPersonalProtectiveEquipment:AnswerGroup {name: 'ansGrpPersonalProtectiveEquipment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPersonalProtectiveEquipment),
    (ansGrpPersonalProtectiveEquipment)-[:HAS_ANSWER {order: 7}]->(ansPersonalProtectiveEquipment),
    (ansGrpPersonalProtectiveEquipment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpBuildingConstructionToolsEquipment:AnswerGroup {name: 'ansGrpBuildingConstructionToolsEquipment'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingConstructionToolsEquipment),
    (ansGrpBuildingConstructionToolsEquipment)-[:HAS_ANSWER {order: 8}]->(ansBuildingConstructionToolsEquipment),
    (ansGrpBuildingConstructionToolsEquipment)-[:HAS_OUTCOME]->(qiBuyOrHire:QuestionInstance:Outcome {uuid: 'b62c05b9-44da-424f-89b4-b1e44e104716'})-[:DEFINED_BY]->(qstnBuyOrHire),

        (ansGrpBuildingConstructionBuy:AnswerGroup {name: 'ansGrpBuildingConstructionBuy'}),
        (qiBuyOrHire)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingConstructionBuy),
        (ansGrpBuildingConstructionBuy)-[:HAS_ANSWER {order: 1}]->(ansBuildingConstructionBuy),
        (ansGrpBuildingConstructionBuy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

        (ansGrpBuildingConstructionHire:AnswerGroup {name: 'ansGrpBuildingConstructionHire'}),
        (qiBuyOrHire)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingConstructionHire),
        (ansGrpBuildingConstructionHire)-[:HAS_ANSWER {order: 2}]->(ansBuildingConstructionHire),
        (ansGrpBuildingConstructionHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '9', url: '', type: 'CAT', scale: true});