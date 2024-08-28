MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
// Questions
(qstnType:Question {uuid: 'e5a261bf-428b-4b77-a75c-407713664b32', text: 'Select type of Logistics and warehousing solutions you need?', type: 'LIST'}),
(qstnStorage:Question {uuid: 'bc0fc514-bffd-4b5e-b7ba-ae63663419f8', text: 'Select type of storage, distribution or kitting service you need?', type: 'LIST'}),
(qstnInternational:Question {uuid: '639700ec-b0a9-4332-8cf9-3ad6010a405b', text: 'Which International method/mode of Transportation do you need?', type: 'LIST'}),
(qstnPacking:Question {uuid: '7e0e5e2d-d98f-44fd-8cca-720e89e0c8bd', text: 'Which packing solution do you need?', type: 'LIST'}),

// Answer
(ansLAndWSolutions:Answer {
    uuid: '822085f6-73b9-4907-9ae4-9ad66ada1a3f',
    text: 'Logistics and warehousing solutions',
    hint: 'A full range of solution and services, including:
    <ul>
        <li>collection</li>
        <li>receipt</li>
        <li>warehousing and storage management</li>
        <li>processing</li>
        <li>onward distribution</li>
    </ul>'
}),

(ansStorage:Answer {
    uuid: 'f72c6b01-9780-4783-9c36-0c4789d9aad2',
    text: 'Storage, distribution and kitting solutions services',
    hint: 'A full range of of solutions and services including; 
    <ul>
        <li>international air charter and transport freight services (transporting items by aircraft, rail, sea)</li>
        <li>quality control of items being delivered into the UK</li>
        <li>storage, fulfilment, transport and distribution within the UK and international destinations</li>
        <li>collection and delivery of specialist items such as medical samples, specimens and pharmaceuticals including residential collections and drop off points</li>
        <li>recycling and disposal services</li>
        <li>print services such as brochures</li>
        <li>cardboard and corrugated boxes</li>
        <li>tamper proof seals and plastic mailing bags</li>
        <li>medical packaging such as absorbent pads</li>
    </ul>'
}),

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


(ansSS:Answer {
    uuid: '54b72380-8093-410f-8315-c7bf66df279a',
    text: 'Storage solutions',
    hint: 'Access a range of storage and fulfillment solutions and services. Including UK and international storage. Services include but are not limited to:
    <ul>
        <li>inbound warehousing processes</li>
        <li>warehouse storage</li>
        <li>fulfillment services, order consolidation, merge in transit</li>
        <li>packaging and goods/material handling equipment</li>
        <li>stock control</li>
        <li>inventory and asset management systems (including asset traceability)</li>
    </ul>'
}),

(ansIFS:Answer {
    uuid: '89ff4ad6-479e-4ca7-a212-0e716073a797',
    text: 'International freight solutions',
    hint: 'A range of services for chartering or organising international freight transportation'
}),

(ansQuality:Answer {
    uuid: '13429e2f-3277-41c8-8733-b413867f3248',
    text: 'Quality Control',
    hint: 'A full range of services to support the quality and control of goods such as test kits and Personal protective equipment (PPE) being delivered from international locations or within the UK. Services include:
    <ul>
        <li>independent supplier assurance testing services, such as, testing items produced by suppliers conform with the specification provided</li>
        <li>accuracy testing in line with manufacturers guidelines</li>
        <li>identifying non-conformance</li>
    </ul>'
}),

(ansKitting:Answer {
    uuid: '02f52bef-9858-41b2-bfe9-f3fa88974422',
    text: 'Kitting and fulfillment solution',
    hint: 'Pick, pack, unpack and preparation for dispatch. A range of fulfillment and kitting solutions and services:
    <ul>
        <li>picking and packaging of products</li>
        <li>unpacking received products into individual cases</li>
        <li>preparing items for dispatch according to buyer needs </li>
    </ul>'
}),

(ansDisposal:Answer {
    uuid: 'e429a2e0-3f11-4413-afb0-64fd5856535a',
    text: 'Disposal and recycling solutions',
    hint: 'A range of services for the recycling and disposal of items which may include incineration, resale, donation and auctioning.
    <ul>
        <li>medical equipment</li>
        <li>packaging</li>
        <li>Personal protective equipment (PPE)</li>
        <li>IT equipment</li>
    </ul>'
}),

(ansPackaging:Answer {
    uuid: 'c3015cff-d5f5-41bb-a5e3-92e85c743897',
    text: 'Packaging solution',
    hint: 'Providing packaging services and associated items'
}),


(ansAir:Answer {
    uuid: '98925307-6923-48eb-8f05-11625f4ecc80',
    text: 'Air',
    hint: 'Services for managing the transportation of goods from international locations using air freight and air charter services.
    <ul>
        <li>charter booking services</li>
        <li>air freight management</li>
        <li>airport ground handling services for items arriving into the UK, such as loading and unloading cargo items</li>
    </ul>'
}),

(ansRail:Answer {
    uuid: '7d76f8b3-5055-4435-88e2-0e0f4492f6f2',
    text: 'Rail',
    hint: 'Services to help you transport goods by rail from international destinations.
    <ul>
        <li>managing and booking rail freight transportation</li>
        <li>customs services and clearance, this includes preparing documents to allow items to be imported into the UK</li>
        <li>shipping container movement and management</li>
        <li>onward transportation of items arriving into the UK</li>
    </ul>'
}),

(ansRoad:Answer {
    uuid: '63ab4b0e-4e19-43ad-824c-e36bf7fb14c2',
    text: 'Road',
    hint: 'Services to transport goods by road from international destinations.
    <ul>
        <li>managing road freight services</li>
        <li>providing specialist vehicles such as temperature controlled or vehicles capable of transporting bulky items</li>
        <li>customs services and clearance, this includes preparing documents to allow items to be imported into the UK</li>
        <li>onward transportation of items arriving into the UK</li>
    </ul>'
}),

(ansSea:Answer {
    uuid: 'ec9b8e5c-dad5-4f70-ab51-cb141332a251',
    text: 'Sea',
    hint: 'Services for transporting goods by sea from international destinations.
    <ul>
        <li>managing and booking freight services</li>
        <li>container management and transportation</li>
        <li>customs services and clearance, this includes preparing documents to allow items to be imported into the UK</li>
        <li>onward transportation of items arriving into the UK</li>
    </ul>'
}),


(ansCardboardPackaging:Answer {
    uuid: '472d79ca-9d82-43e1-bff5-12925a9350af',
    text: 'Cardboard Packaging',
    hint: 'Cardboard packaging, which may include but is not limited to:
    <ul>
        <li>individual mailing boxes</li>
        <li>large cardboard boxes</li>
    </ul>'
}),


(ansCorrugatedPackaging:Answer {
    uuid: '49b22f7a-5218-4f50-bebb-8f775b2fd488',
    text: 'Corrugated Packaging',
    hint: 'Corrugated packaging, which may include but is not limited to:
    <ul>
        <li>a3 size boxes</li>
        <li>a4 size boxes</li>
    </ul>'
}),


(ansPlastic:Answer {
    uuid: '99970773-1373-46d6-82d8-4db05a594bee',
    text: 'Plastic and Security Packaging',
    hint: 'Plastic and Security Packaging which may include but is not limited to:
    <ul>
        <li>double grip seal bags</li>
        <li>mailing bags</li>
        <li>document wallets</li>
        <li>tamper proof seals</li>
    </ul>'
}),

(ansMedicalPackaging:Answer {
    uuid: '5a28e7ab-6f21-4636-9630-fcbdf6cddce2',
    text: 'Medical Packaging',
    hint: 'A a range of absorbent pads which will allow for the safe transportation of specimens and samples.These items will vary in size and shape'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyLogistics:Journey {uuid: '8ec87935-7acd-4f9d-92bb-212523eb72e2', name: 'Logistics & Warehousing'}),
(jrnyLogistics)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '55107e14-40e5-4105-934b-46d619b688c5'})-[:DEFINED_BY]->(qstnService),

(ansGrpLAndWSolutions:AnswerGroup {name: 'ansGrpLAndWSolutions'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpLAndWSolutions),
(ansGrpLAndWSolutions)-[:HAS_ANSWER {order: 1}]->(ansLAndWSolutions),
(ansGrpLAndWSolutions)-[:HAS_OUTCOME]->(qiLAndWSolutions:QuestionInstance:Outcome {uuid: '6cd1078a-a2ba-4afb-9747-c493eb0ee242'})-[:DEFINED_BY]->(qstnType),

    (ansGrpTransport:AnswerGroup {name: 'ansGrpTransport'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpTransport),
    (ansGrpTransport)-[:HAS_ANSWER {order: 1}]->(ansTransport),
    (ansGrpTransport)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpWarehousing:AnswerGroup {name: 'ansGrpWarehousing'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpWarehousing),
    (ansGrpWarehousing)-[:HAS_ANSWER {order: 2}]->(ansWarehousing),
    (ansGrpWarehousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpWaste:AnswerGroup {name: 'ansGrpWaste'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpWaste),
    (ansGrpWaste)-[:HAS_ANSWER {order: 3}]->(ansWaste),
    (ansGrpWaste)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpRemovals:AnswerGroup {name: 'ansGrpRemovals'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpRemovals),
    (ansGrpRemovals)-[:HAS_ANSWER {order: 4}]->(ansRemovals),
    (ansGrpRemovals)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicle:AnswerGroup {name: 'ansGrpVehicle'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpVehicle),
    (ansGrpVehicle)-[:HAS_ANSWER {order: 5}]->(ansVehicle),
    (ansGrpVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpConstruction:AnswerGroup {name: 'ansGrpConstruction'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpConstruction),
    (ansGrpConstruction)-[:HAS_ANSWER {order: 6}]->(ansConstruction),
    (ansGrpConstruction)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpHealthcare:AnswerGroup {name: 'ansGrpHealthcare'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpHealthcare),
    (ansGrpHealthcare)-[:HAS_ANSWER {order: 7}]->(ansHealthcare),
    (ansGrpHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpDesign:AnswerGroup {name: 'ansGrpDesign'}),
    (qiLAndWSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpDesign),
    (ansGrpDesign)-[:HAS_ANSWER {order: 8}]->(ansDesign),
    (ansGrpDesign)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

(ansGrpStorage:AnswerGroup {name: 'ansGrpStorage'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpStorage),
(ansGrpStorage)-[:HAS_ANSWER {order: 2}]->(ansStorage),
(ansGrpStorage)-[:HAS_OUTCOME]->(qiStorage:QuestionInstance:Outcome {uuid: 'c7e60997-47e5-4051-8ccb-fd51b99c5987'})-[:DEFINED_BY]->(qstnStorage),

    (ansGrpSS:AnswerGroup {name: 'ansGrpSS'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpSS),
    (ansGrpSS)-[:HAS_ANSWER {order: 1}]->(ansSS),
    (ansGrpSS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

    (ansGrpIFS:AnswerGroup {name: 'ansGrpIFS'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpIFS),
    (ansGrpIFS)-[:HAS_ANSWER {order: 2}]->(ansIFS),
    (ansGrpIFS)-[:HAS_OUTCOME]->(qiIFS:QuestionInstance:Outcome {uuid: '9ce5278b-87d0-4270-89f6-f56a911a22ae'})-[:DEFINED_BY]->(qstnInternational),

        (ansGrpAir:AnswerGroup {name: 'ansGrpAir'}),
        (qiIFS)-[:HAS_ANSWER_GROUP]->(ansGrpAir),
        (ansGrpAir)-[:HAS_ANSWER {order: 1}]->(ansAir),
        (ansGrpAir)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

        (ansGrpRail:AnswerGroup {name: 'ansGrpRail'}),
        (qiIFS)-[:HAS_ANSWER_GROUP]->(ansGrpRail),
        (ansGrpRail)-[:HAS_ANSWER {order: 2}]->(ansRail),
        (ansGrpRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

        (ansGrpRoad:AnswerGroup {name: 'ansGrpRoad'}),
        (qiIFS)-[:HAS_ANSWER_GROUP]->(ansGrpRoad),
        (ansGrpRoad)-[:HAS_ANSWER {order: 3}]->(ansRoad),
        (ansGrpRoad)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '1d', url: '', type: 'CAT', scale: true}),

        (ansGrpSea:AnswerGroup {name: 'ansGrpSea'}),
        (qiIFS)-[:HAS_ANSWER_GROUP]->(ansGrpSea),
        (ansGrpSea)-[:HAS_ANSWER {order: 4}]->(ansSea),
        (ansGrpSea)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '1e', url: '', type: 'CAT', scale: true}),

    (ansGrpQuality:AnswerGroup {name: 'ansGrpQuality'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpQuality),
    (ansGrpQuality)-[:HAS_ANSWER {order: 3}]->(ansQuality),
    (ansGrpQuality)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpKitting:AnswerGroup {name: 'ansGrpKitting'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpKitting),
    (ansGrpKitting)-[:HAS_ANSWER {order: 4}]->(ansKitting),
    (ansGrpKitting)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '3b', url: '', type: 'CAT', scale: true}),

    (ansGrpDisposal:AnswerGroup {name: 'ansGrpDisposal'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpDisposal),
    (ansGrpDisposal)-[:HAS_ANSWER {order: 5}]->(ansDisposal),
    (ansGrpDisposal)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpPackaging:AnswerGroup {name: 'ansGrpPackaging'}),
    (qiStorage)-[:HAS_ANSWER_GROUP]->(ansGrpPackaging),
    (ansGrpPackaging)-[:HAS_ANSWER {order: 6}]->(ansPackaging),
    (ansGrpPackaging)-[:HAS_OUTCOME]->(qiPacking:QuestionInstance:Outcome {uuid: '06aaf2e5-8dd6-4c1b-a26a-38cf5398b5d7'})-[:DEFINED_BY]->(qstnPacking),

        (ansGrpCardboardPackaging:AnswerGroup {name: 'ansGrpCardboardPackaging'}),
        (qiPacking)-[:HAS_ANSWER_GROUP]->(ansGrpCardboardPackaging),
        (ansGrpCardboardPackaging)-[:HAS_ANSWER {order: 1}]->(ansCardboardPackaging),
        (ansGrpCardboardPackaging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '7a', url: '', type: 'CAT', scale: true}),

        (ansGrpCorrugatedPackaging:AnswerGroup {name: 'ansGrpCorrugatedPackaging'}),
        (qiPacking)-[:HAS_ANSWER_GROUP]->(ansGrpCorrugatedPackaging),
        (ansGrpCorrugatedPackaging)-[:HAS_ANSWER {order: 2}]->(ansCorrugatedPackaging),
        (ansGrpCorrugatedPackaging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '7b', url: '', type: 'CAT', scale: true}),

        (ansGrpPlastic:AnswerGroup {name: 'ansGrpPlastic'}),
        (qiPacking)-[:HAS_ANSWER_GROUP]->(ansGrpPlastic),
        (ansGrpPlastic)-[:HAS_ANSWER {order: 3}]->(ansPlastic),
        (ansGrpPlastic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '7c', url: '', type: 'CAT', scale: true}),

        (ansGrpMedicalPackaging:AnswerGroup {name: 'ansGrpMedicalPackaging'}),
        (qiPacking)-[:HAS_ANSWER_GROUP]->(ansGrpMedicalPackaging),
        (ansGrpMedicalPackaging)-[:HAS_ANSWER {order: 4}]->(ansMedicalPackaging),
        (ansGrpMedicalPackaging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'})-[:HAS_LOT]->(:Lot {number: '7d', url: '', type: 'CAT', scale: true});