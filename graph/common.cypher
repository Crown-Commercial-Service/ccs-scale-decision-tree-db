// SCALE Guided Match Decision Tree pre-population
// Common constraints & nodes used across multiple frameworks

// Label Unique Constraints (implicitly also creates indexes)
CREATE CONSTRAINT unique_answer_uuid ON (a:Answer) ASSERT a.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_uuid ON (qd:Question) ASSERT qd.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_instance_uuid ON (qi:QuestionInstance) ASSERT qi.uuid IS UNIQUE;
CREATE CONSTRAINT unique_journey_uuid ON (j:Journey) ASSERT j.uuid IS UNIQUE;
CREATE CONSTRAINT unique_multi_select_uuid ON (ms:MultiSelect) ASSERT ms.uuid IS UNIQUE;

CREATE
// Question definitions
(:Question {uuid: 'b879c040-654e-11ea-bc55-0242ac130003', text: 'Are you looking for a product, service or both?', type: 'LIST'}),
(:Question {uuid: '00888ff8-4327-4f46-a03b-8c6556b1fcac', text: 'Are you looking for a product, service or both?', hint: "If you're looking for both, select a service.", type: 'LIST'}),
(:Question {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003', text: 'Do you know your budget?', type: 'BOOLEAN', conditionalInput: true, hint: "This helps us match you to your best buying options. An estimate is fine."}),
(:Question {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003', text: 'Do you know how long the contract will be for?', type: 'BOOLEAN', conditionalInput: true, hint: "This helps us match you to your best buying options. An estimate is fine. The contract might also be known as a ‘Statement of Work’."}),
(:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Do you need any additional facility management services?', hint: "<p>These are services related to managing a facility, such as security, grounds maintenance, catering or pest control.</p><p>Select all that apply.</p>", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: '1ecbbf8d-7d40-4711-b9e8-9e4e710d8ced', text: 'Do you need any additional facility management services?', hint: "<p>Choose one option.</p><p>Where you need multiple services, select your main service.</p>", type: 'LIST'}),
(:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'Which sector are you buying for?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '4d9acc00-13eb-4854-8455-3213f381e0de', text: 'What type of housing services do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Which service do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'e415219f-f3e9-40a6-ab2b-ba73f44ce56d', text: 'Which service do you need?', hint: "Choose one option. Where you need multiple services, select your main service.", type: 'LIST'}),
(:Question {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Which services do you need?', hint: "Choose one or more options:", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Do you require nationwide or regional services?', hint: 'Nationwide suppliers are able to work across the country. Regional suppliers work in their own area.', type: 'BOOLEAN'}),
(:Question {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What type of security do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '1b99e1a4-432f-4700-bcc2-7cbb2538fc20', text: 'What type of security services do you need?', hint: "Select all that apply.", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: '9a6301b0-e9f7-46b4-ad64-14da3396b2c7', text: 'What type of technical security do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003', text: 'Where do you need this service?', hint: "Select all that apply", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: '59561c74-8d8f-4863-a01d-5cca0a289986', text: 'Which service area do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e', text: 'How much is your budget?', hint: 'An estimate is fine (£)', type: 'NUMBER', unit: 'CURRENCY'}),
(:Question {uuid: '754c6fbb-4525-4468-89d6-148ac26ec7f9', text: 'How long will the contract be for?', hint: 'Enter a time period in months. An estimate is fine.', type: 'NUMBER', unit: 'MONTHS'}),
(:Question {uuid: 'd3a82a1e-ed20-11ea-adc1-0242ac120002', text: 'Do you know your budget?', type: 'BOOLEAN', conditionalInput: true, hint: "This question refers to your fees per legal matter"}),
(:Question {uuid: '6a122d52-ed20-11ea-adc1-0242ac120002', text: 'How much are your legal fees per matter?', hint: 'An estimate is fine (£)', type: 'NUMBER', unit: 'CURRENCY'}),
(:Question {uuid: '2efb026a-f85c-42d1-b294-3d72f2b95736', text: 'Which area best matches your needs?', hint: 'Select one option:', type: 'LIST'}),
(:Question {uuid: '22462bd6-9323-4f8a-9672-a724e19eafeb', text: 'You chose buildings. Select the area which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
(:Question {uuid: 'd180386a-fe18-42ac-add8-2e1341c750a5', text: 'You chose corporate solutions. Select the area which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
(:Question {uuid: '6c166ea3-63a3-4e0e-82a1-f36ce6040122', text: 'You chose people. Select the area which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
(:Question {uuid: '95d78c62-141b-4621-8431-6c94c97bb0ea', text: 'You chose technology. Select the area which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
(:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a', text: 'What type of service do you need?', hint: 'Select one option:', type: 'LIST'}),

(:Question {uuid: 'b74c2815-db1c-49ee-b6dc-ce7cfb4f8d8b', text: 'What product do you need?', type: 'LIST'}),
(:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92', text: 'What service do you need?', type: 'LIST'}),

// Answer definitions
// Yes, No, Other
(:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003', text: 'Yes'}),
(:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003', text: 'No'}),
(:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003', text: 'Other', hint: 'An item not listed here'}),
(:Answer {uuid: '26883201-a99f-4ac7-8ac7-a2840b16f7a0', text: 'No, I have everything I need'}),

// Product / Service
(:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: "A product is an item you can buy, such as a laptop. It's a one-off purchase and involves no ongoing contract."}),
(:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. Some contracts may involve hiring a product as part of the service, such as leasing a company car'}),
(:Answer {uuid: '17877ddd-910d-48cc-b219-fb910fb696a3', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. Some contracts may involve hiring a product as part of the service, such as leasing a company car. Where this is the case, select the service option'}),
(:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003', text: 'Both, product and service', hint: 'Some contracts involve buying products and a related service. For example, buying an office coffee machine with an extended warranty'}),

// Pillar
(:Answer {uuid: 'b52be1f7-b621-4f2f-888e-cadbe70103ea', text: 'Buildings', hint: "Anything you need to build, power or manage a building like construction materials, electricity, water, furniture, maintenance and security."}),
(:Answer {uuid: '19fdb85e-f224-4842-b856-6119039c3acd', text: 'Corporate Solutions', hint: "Anything you need to run your organisation like office supplies, post, payments, travel, vehicle, marketing and communications services."}),
(:Answer {uuid: 'cf484bfe-13a9-4ac9-8489-bb39239751a6', text: 'People', hint: "Anyone who gets work done like employees, apprentices or experts in legal, language, consultancy and recruitment services."}),
(:Answer {uuid: '023a7ca0-d772-4471-ba3c-12df811cf816', text: 'Technology', hint: "Anything that helps you work digitally, protect and manage information like AI, cloud, network, software and cyber security."}),

// Sectors
(:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003', text: 'Ministry of Defence or defence infrastructure organisation', hint: 'Ministry of Defence projects and operations'}),
(:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003', text: 'Central Government', hint: 'CCS is the default route to market for central government departments'}),
(:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003', text: 'Devolved', hint: 'Devolved government organisations in Scotland, Wales and Northern Ireland'}),
(:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003', text: 'Education', hint: 'Universities, schools and other places of learning'}),
(:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003', text: 'Health', hint: 'Hospitals, clinics and work related to public health and medicine'}),
(:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003', text: 'Local Government', hint: 'Councils and other local government funded bodies'}),
(:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003', text: 'Blue light', hint: 'Emergency services, such as fire brigade, ambulance and police'}),
(:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003', text: 'Housing', hint: 'National and regional housing'}),
(:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003', text: 'Charities', hint: 'Charities and charitable foundations'}),

// locations
(:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'Nationwide'}),
(:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003', text: 'Regional'}),

(:Answer {uuid: 'ccb5c046-75b5-11ea-bc55-0242ac130003', text: 'England or Wales'}),
(:Answer {uuid: 'ccb5c104-75b5-11ea-bc55-0242ac130003', text: 'Scotland'}),
(:Answer {uuid: 'ccb5c1cc-75b5-11ea-bc55-0242ac130003', text: 'Northern Ireland'}),

(:Answer {uuid: '5523f058-843a-11ec-a8a3-0242ac120002', text: 'North West of England'}),
(:Answer {uuid: '5523f2ba-843a-11ec-a8a3-0242ac120002', text: 'North East of England'}),
(:Answer {uuid: '5523f3f0-843a-11ec-a8a3-0242ac120002', text: 'Midlands'}),
(:Answer {uuid: '5523f602-843a-11ec-a8a3-0242ac120002', text: 'East Anglia'}),
(:Answer {uuid: '5523f71a-843a-11ec-a8a3-0242ac120002', text: 'London and South East'}),
(:Answer {uuid: '5523f832-843a-11ec-a8a3-0242ac120002', text: 'South of England'}),
(:Answer {uuid: '5523f936-843a-11ec-a8a3-0242ac120002', text: 'South West of England'}),
(:Answer {uuid: '5523fd3c-843a-11ec-a8a3-0242ac120002', text: 'North Wales'}),
(:Answer {uuid: '5523fe40-843a-11ec-a8a3-0242ac120002', text: 'South Wales'}),
(:Answer {uuid: '55240106-843a-11ec-a8a3-0242ac120002', text: 'North Scotland'}),
(:Answer {uuid: '5524020a-843a-11ec-a8a3-0242ac120002', text: 'West Scotland'}),
(:Answer {uuid: '5523ff58-843a-11ec-a8a3-0242ac120002', text: 'Central Scotland'}),
(:Answer {uuid: '55240494-843a-11ec-a8a3-0242ac120002', text: 'South Scotland'}),

(:Answer {uuid: '2d47d7f7-629e-4488-947d-06ee2786d609', text: 'North East'}),
(:Answer {uuid: 'cf844cbe-e78b-4119-8502-0654c8564427', text: 'North West'}),
(:Answer {uuid: 'ffb0e33c-9ead-49ff-984a-78393e11c182', text: 'Yorkshire and Humberside'}),
(:Answer {uuid: '43db3900-dac7-44bf-b2d4-6757582df5bf', text: 'East Midlands'}),
(:Answer {uuid: '38bbf94a-5e01-4184-84da-be871aae9157', text: 'West Midlands'}),
(:Answer {uuid: '6737ac40-254d-4b82-be3a-81727c9ddf78', text: 'Multiple Regions'}),
(:Answer {uuid: '93bb4bc5-85a3-4c8d-ae29-ef53f9a37209', text: 'East of England'}),
(:Answer {uuid: '3065fb18-9ff7-42cb-b0f7-a093486bc3e5', text: 'London'}),
(:Answer {uuid: 'ad0473fa-865c-4b30-a119-aecde4ee7ba6', text: 'South East'}),
(:Answer {uuid: '04475d43-532b-4a95-8b0e-78db40051bd7', text: 'South West'}),
(:Answer {uuid: '481c2d3d-3fa3-4449-8898-5ce3ae220e54', text: 'Wales'}),
(:Answer {uuid: '3a92a0fa-5e95-4525-a4a3-1067d7b82598', text: 'Northern Ireland'}),
(:Answer {uuid: '601af67d-0055-4e63-9941-70ab799d4194', text: 'National'}),

// Security
(:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003', text: 'Security services', hint: 'For example guarding, patrols, CCTV monitoring and alarm response'}),
(:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003', text: 'Technical security', hint: 'For example risk assessments, and the design and installation of electronic or physical security systems'}),
(:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003', text: 'Security services and technical security', hint: 'Security services and technical security combined and delivered from the same supplier'}),
(:Answer {uuid: 'f3d45e3d-4c73-41c6-a9d7-92ac422129e4', text: 'Security software', hint: 'Computer programs designed to enhance IT security'}),

// Facilities management services
(:Answer {uuid: '1596bd37-bc03-4f3e-abb8-560c1160cc30', text: 'Maintenance services', hint: 'Maintenance of building assets such as ventilation, security systems and plumbing systems'}),
(:Answer {uuid: '2e57ca18-5cb5-43d6-86eb-61eff804ab0e', text: 'Grounds maintenance and horticultural services', hint: 'Including hard and soft landscaping, tree surgery, snow and ice clearance and planting'}),
(:Answer {uuid: '61e636e8-8019-4a03-83dc-4a1e16177253', text: 'Statutory inspections and testing', hint: 'Including condition surveys, water hygiene, asbestos management and appliance testing'}),
(:Answer {uuid: '3f3cd237-77e7-4211-b8e0-61af9f40dfee', text: 'Catering services', hint: 'Meeting hospitality, event catering, full restaurant services and vending services'}),
(:Answer {uuid: '06807bdd-8e02-4c56-9e20-802f5c3865cd', text: 'Cleaning services', hint: 'Routine and reactive cleaning services, including pest control'}),
(:Answer {uuid: '484725a9-829c-4bbe-91a4-9b1bbd6ef90b', text: 'Reception services', hint: 'Taxi booking, car park management and voice announcements'}),
(:Answer {uuid: '2918104d-a410-41f8-9096-22dd80858649', text: 'Security and guarding services', hint: 'Guarding services such as alarm response, access control, passes, and perimeter guarding'}),
(:Answer {uuid: '2ed4e18d-0886-4472-be10-e5fb1a6c5dd1', text: 'Waste services', hint: 'Collection, storage and removal of general, recycled, classified, clinical and medical waste'}),
(:Answer {uuid: '6c0ff503-4aac-4e80-84d1-26c9c106c992', text: 'Computer Aided Facility Management (CAFM) and helpdesk provision', hint: 'CAFM to support service delivery, and helpdesk services for ad-hoc requests and reporting faults'}),
(:Answer {uuid: '6a6b0c54-2bee-4a73-864d-beb1f7a3ef1e', text: 'Anything else', hint: 'A facilities management services not listed here'}),

// Something else
(:Answer {uuid: '4cd9f791-1ca4-43d3-8f25-c3edfccf6e29', text: 'Something else', hint: 'What I need is not listed here'}),

// Reusable outcome types
(:Support:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003', text: 'CCS Escape Page'});
