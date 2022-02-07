MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
// Answer
(ansWwwSupply:Answer {uuid: 'b2dbbbdd-6677-47e5-b478-0ef783b85a38', text: 'Water and waste water supply', hint: 'Buy water supply and sewage services. Includes: 
<ul>
<li>meter installation, removal and reading services</li>
<li>management of water meters (including the switching of water retailers and billing)</li>
<li>road and property draining services</li>
<li>emergency support</li>
</ul>
'}),
(ansAncillary:Answer {uuid: '561cb9be-aacc-4dac-a39f-5f4dba43f2bc', text: 'Ancillary (supporting) services', hint: 'Buy supporting services such as contingency planning, water audit surveys, water footprint assessments and leak detection and repair services. Also includes bill validation and cost recovery services'}),
(ansWwAncillary:Answer {uuid: '8eae0130-4075-42a3-9583-4f2fc2136835', text: 'Water and waste water and ancillary services', hint: 'Buy water and waste water supply and ancillary (supporting) services. Includes management of sites and meters such as switching water retailers, billing, meter installation or removal. Also includes automated meter readings, water audit surveys and leak detection and repair services'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyWaterAndWastewater:Journey {uuid: 'ba6a6091-aeaf-431e-825d-4087ed9885ef', name: 'Water and Wastewater'}),
(jrnyWaterAndWastewater)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '29567dcc-cc5e-4109-989d-84ab84c5995c'})-[:DEFINED_BY]->(qstnService),
    
    (ansGrpWwwSupply:AnswerGroup {name: 'ansGrpWwwSupply'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWwwSupply),
    (ansGrpWwwSupply)-[:HAS_ANSWER {order: 1}]->(ansWwwSupply),
    (ansGrpWwwSupply)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6178'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpAncillary:AnswerGroup {name: 'ansGrpAncillary'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpAncillary),
    (ansGrpAncillary)-[:HAS_ANSWER {order: 2}]->(ansAncillary),
    (ansGrpAncillary)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6178'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpWwAncillary:AnswerGroup {name: 'ansGrpWwAncillary'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWwAncillary),
    (ansGrpWwAncillary)-[:HAS_ANSWER {order: 3}]->(ansWwAncillary),
    (ansGrpWwAncillary)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6178'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true});
