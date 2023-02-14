MATCH
(qstnFirstQ:Question {uuid: 'f6fa0736-fb1c-4cb3-8636-54e8a01f372c'})

CREATE
// Answer
(ansTransport:Answer {
    uuid: '5630a7b4-0586-4360-afed-71889301d0a8',
    text: 'Transport, logistics, and distribution',
    hint: 'Provides road vehicles for secure collection, transportation and delivery services for your office and workspace. Vehicles you can access include:
    <ul>
        <li>lorries</li>
        <li>vans</li>
        <li>motorcycles</li>
        <li>bicycles</li>
        <li>other appropriate means of transport</li>
    </ul>'
}),

(ansWarehousing:Answer {
    uuid: 'bce3958b-daf5-4406-ac05-4d729d83854e',
    text: 'Warehousing, storage, and fulfilment',
    hint: 'Access UK and international warehousing and storage services for items of any size, weight or quantity. Managed operations and facilities at the buyer\'s premises is available. Includes internal and external storage for items such as:
    <ul>
        <li>cartons</li>
        <li>pallets</li>
        <li>irregularly shaped items including those which are hazardous or temperature controlled</li>
    </ul>'
}),

(ansWaste:Answer {
    uuid: 'd9e51555-0b60-4b7b-a933-0454eb2e2571',
    text: 'Waste logistics, transport and disposal services',
    hint: 'Provides secure collection, transportation and delivery of waste and waste related services. Includes:
    <ul>
        <li>collection of waste material from origin (wholesaler, manufacturer, storage, field operations, laboratory)</li>
        <li>delivery of waste material to point of storage or processor</li>
    </ul>'
}),

(ansRemovals:Answer {
    uuid: '13a92f82-443c-4d5f-959d-fcb6bd499064',
    text: 'Removals and relocations',
    hint: 'Access fit for purpose vehicles to provide removal and relocation services on a UK and international basis. Vehicles can include lorries, vans and any other appropriate means of transport. You can also access any related services and equipment such as packaging'
}),

(ansVehicle:Answer {
    uuid: 'c017d7dc-623d-4df0-937b-fa79f978625c',
    text: 'Vehicle, plant and industrial equipment',
    hint: 'Provides the collection, delivery and storage of items on a UK wide and international basis. You can also access resources and labour including qualified engineers and fitters. Items you can transport and store include:
    <ul>
        <li>vehicles (including aircraft, maritime and military)</li>
        <li>machinery and parts</li>
        <li>agricultural equipment </li>
        <li>military equipment</li>
    </ul>'
}),

(ansConstruction:Answer {
    uuid: 'c70e90c0-4a76-48bf-8299-020d87cc8b12',
    text: 'Construction logistics',
    hint: 'Provides the transportation, storage and management of construction material and related services. Includes secure storage capacity at supplier premises including temporary "lay down" facilities (temporary structures). You can also access the labour and resources needed to carry out the service including qualified engineers, fitters and site agents'
}),

(ansHealthcare:Answer {
    uuid: 'd8c8a78e-3b1a-4014-964c-aee17633acce',
    text: 'Healthcare logistics',
    hint: 'Provides the transportation, storage and management of:
    <ul>
        <li>pharmaceuticals</li>
        <li>blood</li>
        <li>tissue</li>
        <li>biological samples</li>
        <li>healthcare materials</li>
        <li>medical equipment</li>
        <li>other healthcare-related services</li>
    </ul>'
}),

(ansDesign:Answer {
    uuid: 'b7b6ca80-3a12-490c-ba3b-cbce8034f795',
    text: 'Design, support and logistics services',
    hint: 'Access logistics and warehousing design and support services including supply chain integration, optimisation and resource management'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyLogistics:Journey {uuid: '8ec87935-7acd-4f9d-92bb-212523eb72e2', name: 'Logistics & Warehousing'}),
(jrnyLogistics)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '55107e14-40e5-4105-934b-46d619b688c5'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpTransport:AnswerGroup {name: 'ansGrpTransport'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTransport),
    (ansGrpTransport)-[:HAS_ANSWER {order: 1}]->(ansTransport),
    (ansGrpTransport)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpWarehousing:AnswerGroup {name: 'ansGrpWarehousing'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWarehousing),
    (ansGrpWarehousing)-[:HAS_ANSWER {order: 2}]->(ansWarehousing),
    (ansGrpWarehousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpWaste:AnswerGroup {name: 'ansGrpWaste'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWaste),
    (ansGrpWaste)-[:HAS_ANSWER {order: 3}]->(ansWaste),
    (ansGrpWaste)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpRemovals:AnswerGroup {name: 'ansGrpRemovals'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRemovals),
    (ansGrpRemovals)-[:HAS_ANSWER {order: 4}]->(ansRemovals),
    (ansGrpRemovals)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicle:AnswerGroup {name: 'ansGrpVehicle'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicle),
    (ansGrpVehicle)-[:HAS_ANSWER {order: 5}]->(ansVehicle),
    (ansGrpVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpConstruction:AnswerGroup {name: 'ansGrpConstruction'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpConstruction),
    (ansGrpConstruction)-[:HAS_ANSWER {order: 6}]->(ansConstruction),
    (ansGrpConstruction)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpHealthcare:AnswerGroup {name: 'ansGrpHealthcare'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHealthcare),
    (ansGrpHealthcare)-[:HAS_ANSWER {order: 7}]->(ansHealthcare),
    (ansGrpHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpDesign:AnswerGroup {name: 'ansGrpDesign'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDesign),
    (ansGrpDesign)-[:HAS_ANSWER {order: 8}]->(ansDesign),
    (ansGrpDesign)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true});