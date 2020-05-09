// SCALE Guided Match Decision Tree pre-population
// Common constraints & nodes used across multiple frameworks

// Label Unique Constraints (implicitly also creates indexes)
CREATE CONSTRAINT unique_answer_uuid ON (a:Answer) ASSERT a.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_uuid ON (qd:QuestionDefinition) ASSERT qd.uuid IS UNIQUE;
CREATE CONSTRAINT unique_question_instance_uuid ON (qi:QuestionInstance) ASSERT qi.uuid IS UNIQUE;
CREATE CONSTRAINT unique_journey_uuid ON (j:Journey) ASSERT j.uuid IS UNIQUE;
CREATE CONSTRAINT unique_journey_result_uuid ON (lot:Lot) ASSERT lot.uuid IS UNIQUE;

CREATE
// Question definitions
(:QuestionDefinition {uuid: 'b879c040-654e-11ea-bc55-0242ac130003', text: 'Are you looking for a product or a service?', type: 'BOOLEAN'}),
(:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003', text: 'Do you know your budget?', type: 'CONDITIONAL_NUMERIC_INPUT', hint: "This helps us find our best buying options. An estimate is fine"}),
(:QuestionDefinition {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003', text: 'How long will the contract be for?', type: 'BOOLEAN', hint: "An estimate is fine. The contract might also be known as a 'Statement of Work.'"}),
(:QuestionDefinition {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Do you need additional services?', type: 'LIST'}),
(:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'What sector are you buying for?', type: 'LIST'}),
(:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Choose which service you need:', type: 'LIST'}),
(:QuestionDefinition {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Choose which services you need:', type: 'MULTI_SELECT_LIST'}),
(:QuestionDefinition {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Do you require nationwide or regional services?', hint: 'Nationwide suppliers are able to work across the country. Regional suppliers work in their own area.', type: 'BOOLEAN'}),
(:QuestionDefinition {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What kind of security do you need?', type: 'LIST'}),
(:QuestionDefinition {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003', text: 'Select the location you need this service', type: 'LIST'}),

// Answer definitions
// Yes, No, Other etc
(:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003', text: 'Yes'}),
(:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003', text: 'No'}),
(:Answer {uuid: 'ccb5bf88-75b5-11ea-bc55-0242ac130003', text: 'Other', hint: 'An item not listed here'}),

// Conditional 'Yes' e.g. for budget question
(:Answer {uuid: 'f2af32c0-8a66-477a-8b02-0f9dbca92288', text: 'Yes', conditionalInputText: "How much is your budget?", conditionalInputHint: "An estimate is fine"}),

// Product / Service
(:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: 'A product is an item you can buy, such as a kettle.  It requires no ongoing contract.'}),
(:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. It may involve leasing a product as part of the service, for example supplying mobile phones with a network and data.'}),
(:Answer {uuid: 'ccb61596-75b5-11ea-bc55-0242ac130003', text: 'Both, product and service', hint: 'Some contracts involve purchasing products and leasing a service, such as buying laptops and subscribing to anti-virus software on an ongoing basis.'}),

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

// Budget
(:Answer {uuid: 'b87a0780-654e-11ea-bc55-0242ac130003', text: 'Less than £1million'}),
(:Answer {uuid: 'b87a08a2-654e-11ea-bc55-0242ac130003', text: '£1million or more'}),
(:Answer {uuid: 'ccb5c294-75b5-11ea-bc55-0242ac130003', text: 'Less than £20k'}),
(:Answer {uuid: 'ccb5c4ec-75b5-11ea-bc55-0242ac130003', text: '£20k or more'}),

// Contract length
(:Answer {uuid: 'b87a09a6-654e-11ea-bc55-0242ac130003', text: 'Up to 1 year'}),
(:Answer {uuid: 'b87a0adc-654e-11ea-bc55-0242ac130003', text: '1 year or more'}),

// Common endpoints
(:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003', agreementName: 'Facilities Management Marketplace', agreementDescription: 'UK-wide facilities management (FM) services organised regionally and available to all public sector entities. Includes maintenance, cleaning, security, helpdesk etc.', agreementId: 'RM3830', url: '', type: 'OTHER', scale: false}),
(:Lot:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003', agreementName: 'CCS Support', agreementDescription: 'Placeholder for CCS support', type: 'SUPPORT', scale: false});
