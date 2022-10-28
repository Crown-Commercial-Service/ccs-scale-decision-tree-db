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
    text: 'Heavy building materials and one stop shop',
    hint: 'Buy or hire a range of building materials and products such as:
    <ul>
    <li> bricks and blocks </li>
    <li> aggregate, sand and cement </li>
    <li> roofing materials, timber and skirting boards </li>
    <li> insulation </li>
    <li> doors and flooring </li>
    <li> screws, adhesives and personal protective equipment (PPE) </li>
    </ul>'
}),

(ansPlumbingHeatingBathrooms:Answer {
    uuid: '671df648-ea5c-4847-86be-11510d12259f',
    text: 'Plumbing, heating and bathrooms',
    hint: 'Plumbing and heating products such as:
    <ul>
    <li> boilers </li>
    <li> water and immersion heaters </li>
    <li> radiators </li>
    <li> ventilation including air vents, programmers and thermostats </li>
    </ul>'
}),

(ansElectricalProducts:Answer {
    uuid: 'b89eba96-e5b3-4fca-af2e-d45cb6b80acd',
    text: 'Electrical products',
    hint: 'Buy electrical products, including:
    <ul>
    <li> residential CCTV cameras
    <li> carbon monoxide and smoke alarms </li>
    <li> air conditioners </li>
    <li> electric heating such as thermostats, smart heating hubs and free standing fan heaters </li>
    <li> lighting products </li>
    <li> meter boxes </li>
    <li> fuses, trunking, conduits, sockets and switches </li>
    </ul>'
}),

(ansFlooring:Answer {
    uuid: 'e6ab5111-d83f-431c-97ef-df07a934d319',
    text: 'Flooring',
    hint: 'Buy carpet, underlay, wood and vinyl flooring. Also includes sealants and adhesives, solutions for damp or contaminated flooring and installation services'
}),

(ansPaintsAndSolvents:Answer {
    uuid: '94818955-d71a-4164-bbda-f334c0761a38',
    text: 'Paints and Solvents',
    hint: 'Includes products such as:
    <ul>
    <li> undercoat, gloss, matt, silk, floor, metal and outdoor paints </li>
    <li> wood treatments such as oil and water preservers and wood stains </li>
    <li> wallpaper brushes and rollers </li>
    <li> decorating knives and sanding tools </li>
    </ul>'
}),

(ansKitchens:Answer {
    uuid: '4ec242b7-b0e2-4444-9031-ce244756f762',
    text: 'Kitchens (domestic)',
    hint: 'Buy basic, mid and high range kitchen cabinets, kitchen accessories and white goods such as cookers and washing machines. Also includes installation services'
}),

(ansPersonalProtectiveEquipment:Answer {
    uuid: 'cff42e8f-6dec-4b69-b445-79b334836b36',
    text: 'Personal protective equipment workwear, general and specialist)',
    hint: 'Buy personal protective equipment and associated products and services, including:
    <ul>
    <li> first aid, such as oxygen monitors, automatic defibrilators and breathing aparatus </li>
    <li> protective clothing, such as coveralls, gloves, footwear and hats </li>
    <li> protective equipment such as spectacles, goggles, face masks, earplugs and earmuffs </li>
    <li> face fitting service which ensures a respiratory protective device (RPD) properly fitts the wearer and prevents dangerous workplace exposure </li>
    </ul>'
}),

(ansBuildingConstructionToolsEquipment:Answer {
    uuid: 'e82b8ce6-e01e-407c-90a6-41815147ad6c',
    text: 'Building and Construction tools & Equipment',
    hint: 'Buy and hire a range of construction tools and equipment, including:
    <ul>
    <li> gardening machinery such as lawn mowers, trimmers and leaf blowers </li>
    <li> gardening tools such as rakes and shears </li>
    <li> fencing materials for a range of fence types including wood, wire and security barriers </li>
    <li> lighting equipment </li>
    <li> site storage </li>
    <li> surveying and location tools, including laser levels, measuring and leveling rods </li>
    </ul>'
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
(jrnyBuildingMaterials:Journey {uuid: '8b4ebcd8-4fa3-456c-a01f-af29b973d040', name: 'Building Materials and Equipment'}),
(jrnyBuildingMaterials)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '6d82d388-2e35-4b26-801e-9fd5f94912bf'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpHeavyBuildingsMaterials:AnswerGroup {name: 'ansGrpHeavyBuildingsMaterials'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHeavyBuildingsMaterials),
    (ansGrpHeavyBuildingsMaterials)-[:HAS_ANSWER {order: 1}]->(ansHeavyBuildingsMaterials),
    (ansGrpHeavyBuildingsMaterials)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPlumbingHeatingBathrooms:AnswerGroup {name: 'ansGrpPlumbingHeatingBathrooms'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPlumbingHeatingBathrooms),
    (ansGrpPlumbingHeatingBathrooms)-[:HAS_ANSWER {order: 2}]->(ansPlumbingHeatingBathrooms),
    (ansGrpPlumbingHeatingBathrooms)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6157'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpElectricalProducts:AnswerGroup {name: 'ansGrpElectricalProducts'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpElectricalProducts),
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