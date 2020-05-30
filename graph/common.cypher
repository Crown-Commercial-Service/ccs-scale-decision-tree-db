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
(:Question {uuid: 'b879c040-654e-11ea-bc55-0242ac130003', text: 'Are you looking for a product, service or both?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003', text: 'Do you know your budget?', type: 'BOOLEAN', conditionalInput: true, hint: "This helps us find your best buying options. An estimate is fine."}),
(:Question {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003', text: 'Do you know how long the contract will be for?', type: 'BOOLEAN', conditionalInput: true, hint: "This helps us find your best buying options. An estimate is fine. The contract might also be known as a ‘Statement of Work’"}),
(:Question {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Do you need additional facilities management services?', hint: "These are services related to managing a facility such as security, grounds maintenance, catering or pest control", type: 'LIST'}),
(:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'Which sector are you buying for?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Which service do you need?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Which services do you need?', hint: "Choose one or more options:", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Do you require nationwide or regional services?', hint: 'Nationwide suppliers are able to work across the country. Regional suppliers work in their own area.', type: 'BOOLEAN'}),
(:Question {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What kind of security do you need?', type: 'LIST'}),
(:Question {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003', text: 'Where do you need this service?', hint: "Choose one option:", type: 'LIST'}),
(:Question {uuid: '59561c74-8d8f-4863-a01d-5cca0a289986', text: 'Which service area do you need?', hint: "Choose one or more options:", type: 'MULTI_SELECT_LIST'}),
(:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e', text: 'How much is your budget?', hint: 'An estimate is fine (£)', type: 'NUMBER'}),
(:Question {uuid: '754c6fbb-4525-4468-89d6-148ac26ec7f9', text: 'How long will the contract be for?', hint: 'Enter a time period in months. An estimate is fine.', type: 'NUMBER'}),

// Answer definitions
// Yes, No, Other
(:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003', text: 'Yes'}),
(:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003', text: 'No'}),
(:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003', text: 'Other', hint: 'An item not listed here'}),

// Product / Service
(:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: 'A product is an item you can buy, such as a kettle.  It requires no ongoing contract.'}),
(:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. Some contracts may involve hiring a product as part of the service, such as leasing a company car.'}),
(:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003', text: 'Both, product and service', hint: 'Some contracts involve buying products and a related service, such as buying an office coffee machine and taking up an extended warranty'}),

// Sectors
(:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003', text: 'Ministry of Defence', hint: 'Ministry of Defence projects and operations'}),
(:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003', text: 'Central Goverment', hint: 'Central government must use the Crown Commercial Service'}),
(:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003', text: 'Devolved', hint: 'Devolved government orgs such as those in Scotland and Wales'}),
(:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003', text: 'Education', hint: 'Schools, universities and other places of learning'}),
(:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003', text: 'Health', hint: 'Hospitals, clinics and work related to public health and medicine'}),
(:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003', text: 'Local Goverment', hint: 'Councils and other local government funded bodies'}),
(:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003', text: 'Blue Light', hint: 'Emergency services'}),
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

// Reusable outcome types
(:Support:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003', text: 'CCS Escape Page'});
