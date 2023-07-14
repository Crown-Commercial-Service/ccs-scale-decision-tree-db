Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnBudgetQ:Question {uuid: '6076dccc-cd9b-4bbf-a70e-0fe7b48db1a0'})

CREATE
(qstnBuyOrHire:Question {uuid: '4053d451-e5dc-41a6-9c6a-add98b677eba', text: 'Do you want to buy or hire your 3D solution?', type: 'LIST'}),

(ansBuild:Answer {
    uuid: '1b84265c-2f18-47e7-b134-3d83aedcea33',
    text: 'Build estate including education sector',
    hint: 'Buy or hire a range of permanent or temporary pre-manufactured buildings for general or educational purposes. Includes the following services for 3D and 2D structures:
    <ul>
        <li>planning and design of your prefabricated building</li>
        <li>offsite manufacturing </li>
        <li>physical delivery of the building to your site</li>
        <li>onsite construction or installation</li>
        <li>maintenance services</li>
    </ul>'
}),

(ansHealthSector:Answer {
    uuid: '227280a1-85cd-4e50-8475-1d73ef446e54',
    text: 'Health sector solution',
    hint: 'Buy or hire a range of permanent or temporary pre-manufactured buildings for general and healthcare purposes. Includes the following services for 3D and 2D structures:
    <ul>
        <li>planning and design of your prefabricated building</li>
        <li>offsite manufacturing </li>
        <li>physical delivery of the building to your site</li>
        <li>onsite construction or installation</li>
        <li>maintenance services</li>
    </ul>'
}),

(ansResidential:Answer {
    uuid: '84e41565-cc9c-4757-b8ed-7aaee5a8908b',
    text: 'Residential building solution',
    hint: 'Buy a range of permanent or temporary pre-manufactured building solutions for residential properties. This can include, but is not limited to affordable house, regeneration and mixed use buildings. Includes the following services for 3D and 2D structures:
    <ul>
        <li>planning and design of your prefabricated building</li>
        <li>offsite manufacturing</li>
        <li>physical delivery of the building to your site</li>
        <li>onsite construction or installation</li>
        <li>maintenance services</li>
    </ul>'
}),

(ansJustice:Answer {
    uuid: '4f695582-b4a9-48d3-b023-a6a95d8e8654',
    text: 'Justice building solution',
    hint: 'Buy a range of permanent or temporary pre-manufactured buildings for justice related accommodation. This also includes other building types that are within a justice of custodial related environment. Includes the following services for 3D and 2D structures:
    <ul>
        <li>planning and design of your prefabricated building</li>
        <li>offsite manufacturing</li>
        <li>physical delivery of the building to your site</li>
        <li>onsite construction or installation</li>
        <li>maintenance services</li>
    </ul>'
}),

(ansDefence:Answer {
    uuid: 'b740baea-c1fc-4248-9a40-a9cf8f5845c0',
    text: 'Defence building solution',
    hint: 'Buy a range of pre-manufactured buildings for defence related needs on sites that may be within a defence or military related environment. Includes the following services for 3D and 2D structures:
    <ul>
        <li>planning and design of your prefabricated building</li>
        <li>offsite manufacturing </li>
        <li>physical delivery of the building to your site</li>
        <li>onsite construction or installation</li>
        <li>maintenance services</li>
    </ul>'
}),

(ansThermal:Answer {
    uuid: 'ea9ab67a-d62e-41d1-94d4-39a1d2118f99',
    text: 'Thermal efficiency upgrades',
    hint: 'Improves the thermal efficiency within existing buildings. Suppliers can provide thermally efficient upgrades to the exteriors of bespoke designs and buildings that are fabricated off site before onsite installation.'
}),

(ans2D:Answer {uuid: '28d312ac-a751-4c5e-a721-dd6116b49d34', text: '2D Turnkey Solutions', hint: 'Buy prefabricated 2D panelised structures. This refers to individual walls and floors of a building being built at offsite facilities and then put together on site to create a building'}),

(ans3D:Answer {uuid: '745549ed-beb6-497c-b035-9a69aca92cc3', text: '3D Turnkey Solutions', hint: 'Buy or hire prefabricated 3D building structures. This includes entire units or rooms being built to a \'finish\' in offsite factories. These structures are then physically delivered and craned into place onsite. The extent of work that is carried out to the structure can vary'}),

(ansBuy:Answer {uuid: 'a2d354b8-3698-42d6-ac36-f478009a17ae', text: 'Buy', hint: 'I want to buy a 3D solution'}),

(ansHire:Answer {uuid: '574059fd-3d4c-4a4d-8a67-ef150371d5d9', text: 'Hire', hint: 'I want to hire a 3D solution'}),

(ansZeroTo15:Answer {uuid: 'cec3382b-747a-4ac8-925f-856af129925a', text: '£0m > £15m purchase of 3D turnkey solutions only', hint: 'Buy solutions for projects costing between £0 and £15 million. You can also hire 3D solutions'}),

(ans15AndAbove:Answer {uuid: '98de2a7c-9b98-426b-b63b-4e8c74dd765d', text: '£15m > 3D turnkey solutions purchase only', hint: 'Buy 3D solutions for projects costing over £15 million'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyOffsiteConstruction:Journey {uuid: '3b2732a1-e56c-4039-9b6a-7ff51b412041', name: 'Offsite Construction Solutions'}),
(jrnyOffsiteConstruction)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'df4db314-aed0-44f9-a07d-2b3d19e17148'})-[:DEFINED_BY]->(qstnService),

(ansGrpBuild:AnswerGroup {name: 'ansGrpBuild'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBuild),
(ansGrpBuild)-[:HAS_ANSWER {order: 1}]->(ansBuild),
(ansGrpBuild)-[:HAS_OUTCOME]->(qiBuild:QuestionInstance:Outcome {uuid: '50230f90-8439-4ca5-9eea-ed7ad4a94135'})-[:DEFINED_BY]->(qstnService),

    (ansGrp2D_1:AnswerGroup {name: 'ansGrp2D_1'}),
    (qiBuild)-[:HAS_ANSWER_GROUP]->(ansGrp2D_1),
    (ansGrp2D_1)-[:HAS_ANSWER {order: 1}]->(ans2D),
    (ansGrp2D_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '1.3', url: '', type: 'CAT', scale: true}),

    (ansGrp3D_1:AnswerGroup {name: 'ansGrp3D_1'}),
    (qiBuild)-[:HAS_ANSWER_GROUP]->(ansGrp3D_1),
    (ansGrp3D_1)-[:HAS_ANSWER {order: 2}]->(ans3D),
    (ansGrp3D_1)-[:HAS_OUTCOME]->(qi3D_1:QuestionInstance:Outcome {uuid: 'ba68419f-15f0-4528-9c67-b61996883c7a'})-[:DEFINED_BY]->(qstnBuyOrHire),

        (ansGrpBuy:AnswerGroup {name: 'ansGrpBuy'}),
        (qi3D_1)-[:HAS_ANSWER_GROUP]->(ansGrpBuy),
        (ansGrpBuy)-[:HAS_ANSWER {order: 1}]->(ansBuy),
        (ansGrpBuy)-[:HAS_OUTCOME]->(qiBuy:QuestionInstance:Outcome {uuid: 'fcd2f37b-06b5-4988-8938-352e5faca57e'})-[:DEFINED_BY]->(qstnBudgetQ),

            (ansGrpZeroTo15:AnswerGroup {name: 'ansGrpZeroTo15'}),
            (qiBuy)-[:HAS_ANSWER_GROUP]->(ansGrpZeroTo15),
            (ansGrpZeroTo15)-[:HAS_ANSWER {order: 1}]->(ansZeroTo15),
            (ansGrpZeroTo15)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '1.1', url: '', type: 'CAT', scale: true}),


            (ansGrp15AndAbove:AnswerGroup {name: 'ansGrp15AndAbove'}),
            (qiBuy)-[:HAS_ANSWER_GROUP]->(ansGrp15AndAbove),
            (ansGrp15AndAbove)-[:HAS_ANSWER {order: 2}]->(ans15AndAbove),
            (ansGrp15AndAbove)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '1.2', url: '', type: 'CAT', scale: true}),

        (ansGrpHire:AnswerGroup {name: 'ansGrpHire'}),
        (qi3D_1)-[:HAS_ANSWER_GROUP]->(ansGrpHire),
        (ansGrpHire)-[:HAS_ANSWER {order: 2}]->(ansHire),
        (ansGrpHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '1.1', url: '', type: 'CAT', scale: true}),

(ansGrpHealthSector:AnswerGroup {name: 'ansGrpHealthSector'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHealthSector),
(ansGrpHealthSector)-[:HAS_ANSWER {order: 2}]->(ansHealthSector),
(ansGrpHealthSector)-[:HAS_OUTCOME]->(qiHealthSector:QuestionInstance:Outcome {uuid: 'fdfdfc0e-0dd8-4452-bce7-e7e20b9e31b5'})-[:DEFINED_BY]->(qstnService),
    
    (ansGrp2D_2:AnswerGroup {name: 'ansGrp2D_2'}),
    (qiHealthSector)-[:HAS_ANSWER_GROUP]->(ansGrp2D_2),
    (ansGrp2D_2)-[:HAS_ANSWER {order: 1}]->(ans2D),
    (ansGrp2D_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '2.2', url: '', type: 'CAT', scale: true}),

    (ansGrp3D_2:AnswerGroup {name: 'ansGrp3D_2'}),
    (qiHealthSector)-[:HAS_ANSWER_GROUP]->(ansGrp3D_2),
    (ansGrp3D_2)-[:HAS_ANSWER {order: 2}]->(ans3D),
    (ansGrp2D_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '2.1', url: '', type: 'CAT', scale: true}),

(ansGrpResidential:AnswerGroup {name: 'ansGrpResidential'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpResidential),
(ansGrpResidential)-[:HAS_ANSWER {order: 3}]->(ansResidential),
(ansGrpResidential)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpJustice:AnswerGroup {name: 'ansGrpJustice'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpJustice),
(ansGrpJustice)-[:HAS_ANSWER {order: 4}]->(ansJustice),
(ansGrpJustice)-[:HAS_OUTCOME]->(qiJustice:QuestionInstance:Outcome {uuid: 'f85d2b96-5a8f-4e49-8848-38bbc342b293'})-[:DEFINED_BY]->(qstnService),

    (ansGrp2D_3:AnswerGroup {name: 'ansGrp2D_3'}),
    (qiJustice)-[:HAS_ANSWER_GROUP]->(ansGrp2D_3),
    (ansGrp2D_3)-[:HAS_ANSWER {order: 1}]->(ans2D),
    (ansGrp2D_3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '4.2', url: '', type: 'CAT', scale: true}),

    (ansGrp3D_3:AnswerGroup {name: 'ansGrp3D_3'}),
    (qiJustice)-[:HAS_ANSWER_GROUP]->(ansGrp3D_3),
    (ansGrp3D_3)-[:HAS_ANSWER {order: 2}]->(ans3D),
    (ansGrp3D_3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '4.1', url: '', type: 'CAT', scale: true}),

(ansGrpDefence:AnswerGroup {name: 'ansGrpDefence'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDefence),
(ansGrpDefence)-[:HAS_ANSWER {order: 5}]->(ansDefence),
(ansGrpDefence)-[:HAS_OUTCOME]->(qiDefence:QuestionInstance:Outcome {uuid: 'a59792ed-b7bd-4b9a-ae4c-3540efc654ad'})-[:DEFINED_BY]->(qstnService),

    (ansGrp2D_4:AnswerGroup {name: 'ansGrp2D_4'}),
    (qiDefence)-[:HAS_ANSWER_GROUP]->(ansGrp2D_4),
    (ansGrp2D_4)-[:HAS_ANSWER {order: 1}]->(ans2D),
    (ansGrp2D_4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '5.2', url: '', type: 'CAT', scale: true}),

    (ansGrp3D_4:AnswerGroup {name: 'ansGrp3D_4'}),
    (qiDefence)-[:HAS_ANSWER_GROUP]->(ansGrp3D_4),
    (ansGrp3D_4)-[:HAS_ANSWER {order: 2}]->(ans3D),
    (ansGrp3D_4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '5.1', url: '', type: 'CAT', scale: true}),

(ansGrpThermal:AnswerGroup {name: 'ansGrpThermal'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpThermal),
(ansGrpThermal)-[:HAS_ANSWER {order: 6}]->(ansThermal),
(ansGrpThermal)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6184'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true});