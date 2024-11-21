MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(startingPoint:QuestionInstance {uuid: 'd186a3f1-1396-4116-bbe4-702aed8b6b54'})

CREATE
(ansHybrid:Answer {uuid: '2874e823-f74b-4c81-a3b4-37dbf4a384f5', text: 'Hybrid mail solutions', hint: 'This agreement provides postal services to the UK public sector and third sector organisations'}),
(ansLinen:Answer {uuid: '21dd4f44-5a73-4394-b41d-ce812ae25974', text: 'Linen and laundry', hint: 'Access linen and laundry services that help you reduce environmental impact'}),
(ansPrint:Answer {uuid: 'e4b2d212-7e84-429b-bf89-a79472125409', text: 'Print management service', hint: 'Bulk printing, direct mail and secure print services. All our print framework suppliers have introduced sustainable ways of working, such as the reduced waste (paper and equipment)'}),
(ansRefurb:Answer {uuid: '1b67146d-53a1-4a9f-91c3-99400c303620', text: 'Refurb and disposal of old equipment', hint: 'Sustainable furniture and technology refurbishing and disposal services. Based on the circular economy model, systems are securely cleaned, and the components reused efficiently'}),
(ansCloud:Answer {uuid: '262e06d6-089d-4592-a5eb-004e11685f2c', text: 'Cloud and hosted servers', hint: 'Access cloud-based and hosted services to significantly reduce your organisation\'s carbon emissions and operational costs. Moving to cloud services can cut building electricity use by over 50%'}),
(ansElimination:Answer {uuid: 'cc8ec4c6-1def-4060-bb1b-36f95bb6d38d', text: 'Elimination of single-use plastics', hint: 'Access solutions to reduce food packaging and single-use plastics in your supply chain. This helps reduce the 3.8% of global greenhouse gases produced by these materials'}),
(ansTechnology:Answer {uuid: 'd318b72f-44fe-431d-b186-2f28b7fb5f24', text: 'Technology products', hint: 'Access sustainable technology hardware, software, and services, including energy-efficient devices that can reduce both environmental impact and energy costs'}),
(ansFacilitiesManagement:Answer {uuid: 'c5bcffca-8acc-4dd4-b144-93338e36f75b', text: 'Facilities Management', hint: 'Access to eco-friendly cleaning, waste management and plastic reduction services to lower your organisation\'s environmental impact'}),

(ansHealthcare:Answer {uuid: '9976a3c8-6413-4d62-88e3-79c3cf28e347', text: 'Healthcare Soft Facilities Management', hint: 'Soft facilities management services designed for the healthcare sector. Includes linen and laundry, catering, waste, cleaning and security services'}),
(ansFM:Answer {uuid: '19cbda25-dba3-40db-8944-0a2093531912', text: 'Facilities Management (FM) and Workplace Services', hint: 'Access services including linen and laundry, cleaning and waste services management'}),

(ansFurniture:Answer {uuid: '8f8d9bd5-148d-4fd1-8f36-7a1991a35d6c', text: 'Furniture and Associated Services', hint: 'Access furniture, second-life furniture (refurbished furniture), sustainable repair and renovation services'}),
(ansTechnologyAndVehicle:Answer {uuid: '6e06b540-4949-4c16-8f5b-b4e1ac56eccf', text: 'Technology and Vehicle Telematics', hint: 'Access technology hardware, software, services and vehicle telematics solutions. Includes devices, infrastructure, licences and options to lease, hire or buy'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansGrpHybrid:AnswerGroup {name: 'ansGrpHybrid'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpHybrid),
(ansGrpHybrid)-[:HAS_ANSWER {order: 1}]->(ansHybrid),
(ansGrpHybrid)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6280'}),

(ansGrpLinen:AnswerGroup {name: 'ansGrpLinen'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpLinen),
(ansGrpLinen)-[:HAS_ANSWER {order: 2}]->(ansLinen),
(ansGrpLinen)-[:HAS_OUTCOME]->(qiLinen:QuestionInstance:Outcome {uuid: '17888a02-52aa-476c-b6ca-3b4b87f26752'})-[:DEFINED_BY]->(qstnService),

    (ansGrpHealthcare:AnswerGroup {name: 'ansGrpHealthcare'}),
    (qiLinen)-[:HAS_ANSWER_GROUP]->(ansGrpHealthcare),
    (ansGrpHealthcare)-[:HAS_ANSWER {order: 1}]->(ansHealthcare),
    (ansGrpHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6331'}),

    (ansGrpFM:AnswerGroup {name: 'ansGrpFM'}),
    (qiLinen)-[:HAS_ANSWER_GROUP]->(ansGrpFM),
    (ansGrpFM)-[:HAS_ANSWER {order: 2}]->(ansFM),
    (ansGrpFM)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'}),
    (ansGrpFM)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'}),

(ansGrpPrint:AnswerGroup {name: 'ansGrpPrint'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpPrint),
(ansGrpPrint)-[:HAS_ANSWER {order: 3}]->(ansPrint),
(ansGrpPrint)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6297'}),

(ansGrpRefurb:AnswerGroup {name: 'ansGrpRefurb'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpRefurb),
(ansGrpRefurb)-[:HAS_ANSWER {order: 4}]->(ansRefurb),
(ansGrpRefurb)-[:HAS_OUTCOME]->(qiRefurb:QuestionInstance:Outcome {uuid: '7fe6440e-333a-4ea0-8b70-a2d46d315b33'})-[:DEFINED_BY]->(qstnService),

    (ansGrpFurniture:AnswerGroup {name: 'ansGrpFurniture'}),
    (startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpFurniture),
    (ansGrpFurniture)-[:HAS_ANSWER {order: 1}]->(ansFurniture),
    (ansGrpFurniture)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6308'}),

    (ansGrpTechnologyAndVehicle:AnswerGroup {name: 'ansGrpTechnologyAndVehicle'}),
    (startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyAndVehicle),
    (ansGrpTechnologyAndVehicle)-[:HAS_ANSWER {order: 2}]->(ansTechnologyAndVehicle),
    (ansGrpTechnologyAndVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'}),
    (ansGrpTechnologyAndVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6315'}),

(ansGrpCloud:AnswerGroup {name: 'ansGrpCloud'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpCloud),
(ansGrpCloud)-[:HAS_ANSWER {order: 5}]->(ansCloud),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6262'}),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1557.14'}),

(ansGrpElimination:AnswerGroup {name: 'ansGrpElimination'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpElimination),
(ansGrpElimination)-[:HAS_ANSWER {order: 6}]->(ansElimination),
(ansGrpElimination)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6279'}),
//TODO

(ansGrpTechnology:AnswerGroup {name: 'ansGrpTechnology'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpTechnology),
(ansGrpTechnology)-[:HAS_ANSWER {order: 7}]->(ansTechnology),
(ansGrpTechnology)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'}),

(ansGrpFacilitiesManagement:AnswerGroup {name: 'ansGrpFacilitiesManagement'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_ANSWER {order: 8}]->(ansFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6232'}),
(ansGrpFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6264'});