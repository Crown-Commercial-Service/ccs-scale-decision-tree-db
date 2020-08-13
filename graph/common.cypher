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
(:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Do you need any additional facility management services?', hint: "<p>These are services related to managing a facility, such as security, grounds maintenance, catering or pest control.</p><p>Select all that apply.</p>", type: 'LIST'}),
(:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'Which sector are you buying for?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '4d9acc00-13eb-4854-8455-3213f381e0de', text: 'What type of housing services do you need', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Which service do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'e415219f-f3e9-40a6-ab2b-ba73f44ce56d', text: 'Which service do you need?', hint: "Choose one option. Where you need multiple services, select your main service.", type: 'LIST'}),
(:Question {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Which services do you need?', hint: "Choose one or more options:", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Do you require nationwide or regional services?', hint: 'Nationwide suppliers are able to work across the country. Regional suppliers work in their own area.', type: 'BOOLEAN'}),
(:Question {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What kind of security do you need?', type: 'LIST'}),
(:Question {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003', text: 'Where do you need this service?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '59561c74-8d8f-4863-a01d-5cca0a289986', text: 'Which service area do you need?', hint: "Select all that apply.", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e', text: 'How much is your budget?', hint: 'An estimate is fine (£)', type: 'NUMBER', unit: 'CURRENCY'}),
(:Question {uuid: '754c6fbb-4525-4468-89d6-148ac26ec7f9', text: 'How long will the contract be for?', hint: 'Enter a time period in months. An estimate is fine.', type: 'NUMBER', unit: 'MONTHS'}),

// Answer definitions
// Yes, No, Other
(:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003', text: 'Yes'}),
(:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003', text: 'No'}),
(:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003', text: 'Other', hint: 'An item not listed here'}),

// Product / Service
(:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: "A product is an item you can buy, such as a laptop. It's a one-off purchase and involves no ongoing contract."}),
(:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. Some contracts may involve hiring a product as part of the service, such as leasing a company car.'}),
(:Answer {uuid: '17877ddd-910d-48cc-b219-fb910fb696a3', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. Some contracts may involve hiring a product as part of the service, such as leasing a company car. Where this is the case, select the service option.'}),
(:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003', text: 'Both, product and service', hint: 'Some contracts involve buying products and a related service. For example, buying an office coffee machine with an extended warranty'}),

// Sectors
(:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003', text: 'Ministry of Defence or defence infrastructure organisation', hint: 'Ministry of Defence projects and operations'}),
(:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003', text: 'Central Government', hint: 'Central government must use the Crown Commercial Service'}),
(:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003', text: 'Devolved', hint: 'Devolved government organisations such as those in Scotland and Wales'}),
(:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003', text: 'Education', hint: 'Schools, universities and other places of learning'}),
(:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003', text: 'Health', hint: 'Hospitals, clinics and work related to public health and medicine'}),
(:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003', text: 'Local Government', hint: 'Councils and other local government funded bodies'}),
(:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003', text: 'Blue light', hint: 'Emergency services, such as fire brigade, ambulance and police'}),
(:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003', text: 'Housing', hint: 'National and regional housing works'}),
(:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003', text: 'Charities', hint: 'Charities and charitible foundations'}),

// locations
(:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'Nationwide'}),
(:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003', text: 'Regional'}),

(:Answer {uuid: 'ccb5c046-75b5-11ea-bc55-0242ac130003', text: 'England or Wales'}),
(:Answer {uuid: 'ccb5c104-75b5-11ea-bc55-0242ac130003', text: 'Scotland'}),
(:Answer {uuid: 'ccb5c1cc-75b5-11ea-bc55-0242ac130003', text: 'Northern Ireland'}),

// Security
(:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003', text: 'Physical and Technical', hint: 'This had both a physical presence and technical requirement'}),
(:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003', text: 'Physical', hint: 'This has a physical presence such as guards'}),
(:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003', text: 'Technical', hint: 'This has a technology element such as CCTV'}),

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

// Reusable outcome types
(:Support:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003', text: 'CCS Escape Page'});
