MATCH
(qstnServiceQ:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnBudgetQ:Question {uuid: '6076dccc-cd9b-4bbf-a70e-0fe7b48db1a0'}),
(qiPTSFirstQuestion:QuestionInstance {uuid: '94d3bf01-41f4-431b-bcdb-1e8443f205be'})

CREATE

(ansFacilitiesManagenet:Answer {
    uuid: 'a314a412-9a2b-4d9d-8151-5f0f63a1cc23',
    text: 'Facilities management (FM) services',
    hint: 'Provides services to help you maintain and manage your facility or building. Includes:
    <ul>
        <li>catering services such as meeting hospitality, event catering, full restaurant services and vending services</li>
        <li>cleaning services such as routine and reactive cleaning services, including pest control</li>
        <li>landscaping</li>
        <li>waste management such as the collection, storage and removal of waste</li>
        <li>lighting and plumbing services</li>
        <li>statutory compliance services such as portable appliance testing and condition surveys </li>
        <li>heating services</li>
    </ul>'
}),

(ansHousingMaintenance:Answer {
    uuid: 'e281ebdd-cc33-4718-bcc0-8c9b61b878b3',
    text: 'Housing maintenance and repair services',
    hint: 'Buy housing maintenance and repair services including:
    <ul>
        <li>planned maintenance and repair for both tenanted and vacant properties</li>
        <li>responsive repairs</li>
        <li>essential compliance services such as fire safety, electrical testing and asbestos management</li>
        <li>whole home retrofit which includes carrying out property improvements to ensure it is as energy efficient as possible</li>
        <li>a housing portfolio management service which manages your housing needs including move ins and outs, disposals and managing and fulfilling repair requests</li>
    </ul>'
}),


(ansHardFacilitiesManagement:Answer {
    uuid: '96fcfb85-a1e9-41f9-82cb-909da72d5eb7',
    text: 'Hard facilities management (FM) services',
    hint: 'Access services which relate to elements of a building or facility that you can not remove from the premises and are usually required by law. For example:
    <ul>
        <li>fire safety arrangements such as risk assessments, fire exit signs and fire prevention systems including fire extinguishers</li>
        <li>ventilation and lighting services including emergency lighting</li>
        <li>services to ensure your facility complies with health and safety regulations</li>
    </ul>'
}),

(ansSoftFacilitiesManagement:Answer {
    uuid: '7fa06915-abf7-4f77-8c04-a1041f15b2fc',
    text: 'Soft FM services',
    hint: 'Access services that are not required by law, but help to improve the pleasantness and security of the workplace. For example:
    <ul>
        <li>cleaning and catering services</li>
        <li>waste management </li>
        <li>visitor support and security services </li>
    </ul>'
}),

(ansBoth:Answer {
    uuid: '95abf232-c0fc-42ae-bd2a-61826bf2ea2f',
    text: 'Both hard and soft FM services',
    hint: 'Access a total facilities management solution which provides a combination of both hard and soft services. Includes:
    <ul>
        <li>cleaning and catering services</li>
        <li>ventilation and lighting</li>
        <li>services to ensure your facility complies with health and safety regulations</li>
    </ul>'
}),

(ansLinenAndLaundry:Answer {
    uuid: 'd097e35e-c0b3-4191-8ad0-c8ea2ce8c56d',
    text: 'Linen and laundry services',
    hint: 'Provides the collection, wash, finish and return of laundry. You can use the services for laundry you own or have hired from the supplier. Also provides specialist laundry and cleanroom services'
}),

(ansSecurityServices:Answer {
    uuid: 'e95d8f73-033e-481f-b0c9-0dd4dd5034a5',
    text: 'Security services',
    hint: 'Access a range of security products and services including guarding and installation of security systems. Available products and services include:
    <ul>
        <li>guarding services such as, static and mobile patrolling and manning of receptions</li>
        <li>handling visitors and access passes and monitoring video surveillance systems</li>
        <li>installation and maintenance of security systems, for example alarms, perimeter fencing and locks</li>
        <li>consultancy services</li>
        <li>risk and security assessments</li>
    </ul>'
}),

(ansCleaning:Answer {
    uuid: 'fe331c8e-7185-4693-a4da-c62f100e7fb4',
    text: 'Cleaning or medical and hazardous waste management',
    hint: 'Provides all types of contract cleaning and hazardous waste services. This includes:
    <ul>
        <li>the routine and deep cleaning of buildings</li>
        <li>window cleaning</li>
        <li>litter picking</li>
        <li>reactive cleaning or cleaning which takes place on request</li>
        <li>the collection and disposal of all types of medical and hazardous waste such as medicines and chemicals</li>
        <li>the collection and disposal or sharps such as needles</li>
        <li>an analysis of your current cleaning and waste management practices to help you identify more effiecient ways of working</li>
    </ul>'
}),


(ansZeroToOneFive:Answer {
    uuid: 'cbc08706-6682-40ca-bb46-f0d1bc1357c5',
    text: 'My budget is £0 to £1.5 million'
}),

(ansOneFiveToTen:Answer {
    uuid: '0b157c50-7700-41c6-bbe5-372b59cc03c1',
    text: 'My budget is £1.5 million to £10 million'
}),

(ansOverTen:Answer {
    uuid: '6b43835f-8eb1-4959-91da-c66e95c7defd',
    text: 'My budget is over £10 million'
}),


(ansCleanroom:Answer {
    uuid: '10b8a3d3-fed8-4678-bb66-98d69b9e8ce3',
    text: 'Cleanroom services',
    hint: 'Access specialist cleanroom laundry services at the required International Organisation for Standardisation (ISO) classification. Includes washing, finishing, collection and return of cleanroom garments'
}),
(ansTheatrePack:Answer {
    uuid: '8fe19ff2-22d7-4980-b5e7-3cc8581f34e4',
    text: 'Theatre pack and gowns',
    hint: 'Laundry services for re-useable theatre packs such as surgical gowns, drapes and packs. Services include washing, finishing, collection and return of garments'
}),
(ansStandardWash:Answer {
    uuid: '644a6d1e-f9eb-4606-8fab-7fbf35730a23',
    text: 'Standard wash',
    hint: 'Laundry service including washing, finishing, collection and return of your own linen items'
}),
(ansLinenHire:Answer {
    uuid: 'e575a386-1647-4f00-af33-7f11da6109fc',
    text: 'Linen hire with standard wash',
    hint: 'Hire linen items, such as bed sheets and blankets. Service also includes washing, finishing, collection and return of items'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyFacilities:Journey {uuid: '4f7a5b6b-a5d8-48fd-ac81-8040badd1760', name: 'Facilities'}),
(jrnyFacilities)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '8bd46965-0896-4901-b829-4698c86c62fd'})-[:DEFINED_BY]->(qstnServiceQ),

(ansGrpFacilitiesManagenet:AnswerGroup {name: 'ansGrpFacilitiesManagenet'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFacilitiesManagenet),
(ansGrpFacilitiesManagenet)-[:HAS_ANSWER {order: 1}]->(ansFacilitiesManagenet),
(ansGrpFacilitiesManagenet)-[:HAS_OUTCOME]->(qiService:QuestionInstance:Outcome {uuid: '39b728c0-8bcc-4604-aa29-f81136d46b0e'})-[:DEFINED_BY]->(qstnServiceQ),

    (ansGrpHardFacilitiesManagement:AnswerGroup {name: 'ansGrpHardFacilitiesManagement'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpHardFacilitiesManagement),
    (ansGrpHardFacilitiesManagement)-[:HAS_ANSWER {order: 1}]->(ansHardFacilitiesManagement),
    (ansGrpHardFacilitiesManagement)-[:HAS_OUTCOME]->(qiBudget:QuestionInstance:Outcome {uuid: '189fa990-2e56-4f54-955b-080e5d18f774'})-[:DEFINED_BY]->(qstnBudgetQ),

        (ansGrpZeroToOneFive:AnswerGroup {name: 'ansGrpZeroToOneFive'}),
        (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpZeroToOneFive),
        (ansGrpZeroToOneFive)-[:HAS_ANSWER {order: 1}]->(ansZeroToOneFive),
        (ansGrpZeroToOneFive)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpZeroToOneFive)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),

        (ansGrpOneFiveToTen:AnswerGroup {name: 'ansGrpOneFiveToTen'}),
        (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpOneFiveToTen),
        (ansGrpOneFiveToTen)-[:HAS_ANSWER {order: 2}]->(ansOneFiveToTen),
        (ansGrpOneFiveToTen)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOneFiveToTen)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),

        (ansGrpOverTen:AnswerGroup {name: 'ansGrpOverTen'}),
        (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpOverTen),
        (ansGrpOverTen)-[:HAS_ANSWER {order: 3}]->(ansOverTen),
        (ansGrpOverTen)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOverTen)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true}),

    (ansGrpSoftFacilitiesManagement:AnswerGroup {name: 'ansGrpSoftFacilitiesManagement'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpSoftFacilitiesManagement),
    (ansGrpSoftFacilitiesManagement)-[:HAS_ANSWER {order: 2}]->(ansSoftFacilitiesManagement),
    (ansGrpSoftFacilitiesManagement)-[:HAS_OUTCOME]->(qiBudget1:QuestionInstance:Outcome {uuid: '6fb2f4ba-d620-4543-a279-20483dc13495'})-[:DEFINED_BY]->(qstnBudgetQ),

        (ansGrpZeroToOneFive_1:AnswerGroup {name: 'ansGrpZeroToOneFive_1'}),
        (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpZeroToOneFive_1),
        (ansGrpZeroToOneFive_1)-[:HAS_ANSWER {order: 1}]->(ansZeroToOneFive),
        (ansGrpZeroToOneFive_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpZeroToOneFive_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '3a', url: '', type: 'CAT', scale: true}),

        (ansGrpOneFiveToTen_1:AnswerGroup {name: 'ansGrpOneFiveToTen_1'}),
        (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpOneFiveToTen_1),
        (ansGrpOneFiveToTen_1)-[:HAS_ANSWER {order: 2}]->(ansOneFiveToTen),
        (ansGrpOneFiveToTen_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOneFiveToTen_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '3b', url: '', type: 'CAT', scale: true}),

        (ansGrpOverTen_1:AnswerGroup {name: 'ansGrpOverTen_1'}),
        (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpOverTen_1),
        (ansGrpOverTen_1)-[:HAS_ANSWER {order: 3}]->(ansOverTen),
        (ansGrpOverTen_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOverTen_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '3c', url: '', type: 'CAT', scale: true}),

    (ansGrpBoth:AnswerGroup {name: 'ansGrpBoth'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpBoth),
    (ansGrpBoth)-[:HAS_ANSWER {order: 3}]->(ansBoth),
    (ansGrpBoth)-[:HAS_OUTCOME]->(qiBudget2:QuestionInstance:Outcome {uuid: 'c4b843bf-f213-43d3-8762-d00f11802ad4'})-[:DEFINED_BY]->(qstnBudgetQ),

        (ansGrpZeroToOneFive_2:AnswerGroup {name: 'ansGrpZeroToOneFive_2'}),
        (qiBudget2)-[:HAS_ANSWER_GROUP]->(ansGrpZeroToOneFive_2),
        (ansGrpZeroToOneFive_2)-[:HAS_ANSWER {order: 1}]->(ansZeroToOneFive),
        (ansGrpZeroToOneFive_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpZeroToOneFive_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

        (ansGrpOneFiveToTen_2:AnswerGroup {name: 'ansGrpOneFiveToTen_2'}),
        (qiBudget2)-[:HAS_ANSWER_GROUP]->(ansGrpOneFiveToTen_2),
        (ansGrpOneFiveToTen_2)-[:HAS_ANSWER {order: 2}]->(ansOneFiveToTen),
        (ansGrpOneFiveToTen_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOneFiveToTen_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

        (ansGrpOverTen_2:AnswerGroup {name: 'ansGrpOverTen_2'}),
        (qiBudget2)-[:HAS_ANSWER_GROUP]->(ansGrpOverTen_2),
        (ansGrpOverTen_2)-[:HAS_ANSWER {order: 3}]->(ansOverTen),
        (ansGrpOverTen_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),
        (ansGrpOverTen_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

    (ansGrpLinenAndLaundry:AnswerGroup {name: 'ansGrpLinenAndLaundry'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpLinenAndLaundry),
    (ansGrpLinenAndLaundry)-[:HAS_ANSWER {order: 4}]->(ansLinenAndLaundry),
    (ansGrpLinenAndLaundry)-[:HAS_OUTCOME]->(qiService1:QuestionInstance:Outcome {uuid: 'cecb1c0a-973d-463d-a145-4fc7992b4636'})-[:DEFINED_BY]->(qstnServiceQ),

        (ansGrpCleanroom:AnswerGroup {name: 'ansGrpCleanroom'}),
        (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpCleanroom),
        (ansGrpCleanroom)-[:HAS_ANSWER {order: 1}]->(ansCleanroom),
        (ansGrpCleanroom)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

        (ansGrpTheatrePack:AnswerGroup {name: 'ansGrpTheatrePack'}),
        (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpTheatrePack),
        (ansGrpTheatrePack)-[:HAS_ANSWER {order: 2}]->(ansTheatrePack),
        (ansGrpTheatrePack)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

        (ansGrpStandardWash:AnswerGroup {name: 'ansGrpStandardWash'}),
        (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpStandardWash),
        (ansGrpStandardWash)-[:HAS_ANSWER {order: 3}]->(ansStandardWash),
        (ansGrpStandardWash)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

        (ansGrpLinenHire:AnswerGroup {name: 'ansGrpLinenHire'}),
        (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpLinenHire),
        (ansGrpLinenHire)-[:HAS_ANSWER {order: 4}]->(ansLinenHire),
        (ansGrpLinenHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

    (ansGrpSecurityServices:AnswerGroup {name: 'ansGrpSecurityServices'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityServices),
    (ansGrpSecurityServices)-[:HAS_ANSWER {order: 5}]->(ansSecurityServices),
    (ansGrpSecurityServices)-[:HAS_OUTCOME]->(qiPTSFirstQuestion), // SWITCH TREES

    (ansGrpCleaning:AnswerGroup {name: 'ansGrpCleaning'}),
    (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpCleaning),
    (ansGrpCleaning)-[:HAS_ANSWER {order: 6}]->(ansCleaning),
    (ansGrpCleaning)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

(ansGrpHousingMaintenance:AnswerGroup {name: 'ansGrpHousingMaintenance'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHousingMaintenance),
(ansGrpHousingMaintenance)-[:HAS_ANSWER {order: 2}]->(ansHousingMaintenance),
(ansGrpHousingMaintenance)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6241'});

