MATCH
(qstnFirstQuestion:Question {uuid: 'e212194f-7780-43c3-a028-277e168d5951'})

CREATE

// Answers - level 1

(ansStorageLogisticsTransport:Answer {
    uuid: '749a0fb8-c298-4da7-8e20-1e4255e212b2',
    text: 'Storage, Logistics and Transport',
    hint: 'Transportation, logistics, distribution, storage,  warehousing, and fulfilment services. Specific construction and healthcare logistics services
'}),

(ansWasteDisposal:Answer {
    uuid: '42a8048d-7b23-4f85-9395-c3ede4c37dd8',
    text: 'Waste Logistics, Transport and Disposal',
    hint: 'Secure collection, transportation and delivery of waste and waste related services, such as the collection of waste material from origin (wholesaler, manufacturer, storage, field operations, laboratory) and delivery to point of storage or processor'
}),

(ansRemovalsRelocations:Answer {
    uuid: 'af43ddf0-a7c7-43a3-a3ff-4656ac8fbe6d',
    text: 'Removals and Relocations',
    hint: 'Removal, relocation and related services through the deployment of fit for purpose vehicles, such as lorries, vans and any other appropriate means of transportation'
}),

(ansDesignSupport:Answer {
    uuid: '183b5373-f02a-44d7-9680-88750c5dfc3d',
    text: 'Design, Support and Logistics Services',
    hint: 'Logistics and warehousing design and support services including supply chain integration, optimisation and resource management'
}),


// Answers - level 2
(ansTransportLogisticsDistribution:Answer {
    uuid: '823c74f4-ce6c-4f6a-9438-3f29f114348b',
    text: 'Transport, Logistics, and Distribution',
    hint: 'Secure collection, transportation and delivery using road transportation through the provision of lorries, vans, motorcycles, bicycles and other appropriate means of transportation'
}),

(ansWarehousingStorageFulfilment:Answer {
    uuid: 'db007df7-69eb-43eb-b994-6d190c2242b3',
    text: 'Warehousing, Storage, and Fulfilment',
    hint: 'Internal storage, external storage and warehousing. Managed operations and facilities at the buyer\'s premises is available'
}),

(ansVehiclePlantIndustrialEquipment:Answer {
    uuid: '955bfebd-d77f-4684-a23f-f7d1ae5eadb0',
    text: 'Vehicle, Plant and Industrial Equipment',
    hint: 'Transportation and storage of vehicles (including aviation, maritime, military), plant and industrial equipment'
}),

(ansConstructionLogistics:Answer {
    uuid: '62c4151e-1720-4da2-b5c6-7d865181bad8',
    text: 'Construction Logistics',
    hint: 'Transportation, storage and management of construction material and related services, such as secure storage capacity at supplier premises including temporary \'Lay Down\' facilities'
}),

(ansHealthcareLogistics:Answer {
    uuid: '323ba277-08ce-4477-a5ce-8bafa794c69e',
    text: 'Healthcare Logistics',
    hint: 'Transportation, storage and management of pharmaceuticals, blood, tissue, biological samples, healthcare materials, medical equipment and other healthcare-related services'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyLogisticsWarehousing:Journey {uuid: 'd3a0e130-b099-4570-a7d4-6316be75fe7a', name: 'Logistics and Warehousing'}),
(jrnyLogisticsWarehousing)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'bfc52171-f3bd-4b43-9dfb-9c437bb3f1a7'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpStorageLogisticsTransport:AnswerGroup {name: 'ansGrpStorageLogisticsTransport'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpStorageLogisticsTransport),
    (ansGrpStorageLogisticsTransport)-[:HAS_ANSWER {order: 1}]->(ansStorageLogisticsTransport),
    (ansGrpStorageLogisticsTransport)-[:HAS_OUTCOME]->(qiFirstQuestion_2:QuestionInstance:Outcome {uuid:'b825b5cb-bda9-4d76-94cd-4cc3a08b8267'})-[:DEFINED_BY]->(qstnFirstQuestion),

        (ansGrpTransportLogisticsDistribution:AnswerGroup {name: 'ansGrpTransportLogisticsDistribution'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpTransportLogisticsDistribution),
        (ansGrpTransportLogisticsDistribution)-[:HAS_ANSWER {order: 1}]->(ansTransportLogisticsDistribution),
        (ansGrpTransportLogisticsDistribution)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpWarehousingStorageFulfilment:AnswerGroup {name: 'ansGrpWarehousingStorageFulfilment'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpWarehousingStorageFulfilment),
        (ansGrpWarehousingStorageFulfilment)-[:HAS_ANSWER {order: 2}]->(ansWarehousingStorageFulfilment),
        (ansGrpWarehousingStorageFulfilment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpVehiclePlantIndustrialEquipment:AnswerGroup {name: 'ansGrpVehiclePlantIndustrialEquipment'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpVehiclePlantIndustrialEquipment),
        (ansGrpVehiclePlantIndustrialEquipment)-[:HAS_ANSWER {order: 3}]->(ansVehiclePlantIndustrialEquipment),
        (ansGrpVehiclePlantIndustrialEquipment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        (ansGrpConstructionLogistics:AnswerGroup {name: 'ansGrpConstructionLogistics'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionLogistics),
        (ansGrpConstructionLogistics)-[:HAS_ANSWER {order: 4}]->(ansConstructionLogistics),
        (ansGrpConstructionLogistics)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpHealthcareLogistics:AnswerGroup {name: 'ansGrpHealthcareLogistics'}),
        (qiFirstQuestion_2)-[:HAS_ANSWER_GROUP]->(ansGrpHealthcareLogistics),
        (ansGrpHealthcareLogistics)-[:HAS_ANSWER {order: 5}]->(ansHealthcareLogistics),
        (ansGrpHealthcareLogistics)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpWasteDisposal:AnswerGroup {name: 'ansGrpWasteDisposal'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpWasteDisposal),
    (ansGrpWasteDisposal)-[:HAS_ANSWER {order: 2}]->(ansWasteDisposal),
    (ansGrpWasteDisposal)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpRemovalsRelocations:AnswerGroup {name: 'ansGrpRemovalsRelocations'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRemovalsRelocations),
    (ansGrpRemovalsRelocations)-[:HAS_ANSWER {order: 3}]->(ansRemovalsRelocations),
    (ansGrpRemovalsRelocations)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),
    
    (ansGrpDesignSupport:AnswerGroup {name: 'ansGrpDesignSupport'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDesignSupport),
    (ansGrpDesignSupport)-[:HAS_ANSWER {order: 4}]->(ansDesignSupport),
    (ansGrpDesignSupport)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true});


