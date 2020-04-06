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
(:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003', text: 'How much is your budget?', type: 'BOOLEAN', hint: "An estimate is fine"}),
(:QuestionDefinition {uuid: 'b879c25c-654e-11ea-bc55-0242ac130003', text: 'How long will the contract be for?', type: 'BOOLEAN', hint: "An estimate is fine. The contract might also be known as a 'Statement of Work'"}),
(:QuestionDefinition {uuid: 'b879c342-654e-11ea-bc55-0242ac130003', text: 'Do you need additional services?', type: 'BOOLEAN'}),
(:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003', text: 'What organisation do you belong to?', type: 'LIST'}),
(:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003', text: 'Select which service is required', type: 'LIST'}),
(:QuestionDefinition {uuid: 'b87a0014-654e-11ea-bc55-0242ac130003', text: 'Select which services are required', type: 'MULTI_SELECT_LIST'}),
(:QuestionDefinition {uuid: 'b879c662-654e-11ea-bc55-0242ac130003', text: 'Select the locations where the service is required', type: 'MULTI_SELECT_LIST'}),
(:QuestionDefinition {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'What type of sub-service is required?', type: 'LIST'}),
(:QuestionDefinition {uuid: 'ccb59d82-75b5-11ea-bc55-0242ac130003', text: 'Are all your needs captured within the mandatory list?', type: 'BOOLEAN'}),
(:QuestionDefinition {uuid: 'ccb59e40-75b5-11ea-bc55-0242ac130003', text: 'Does your service relate to the mandatory list?', type: 'BOOLEAN'}),

// Answer definitions
// Yes/No
(:Answer {uuid: 'ccb598c8-75b5-11ea-bc55-0242ac130003', text: 'Yes'}),
(:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003', text: 'No'}),

// Product / Service
(:Answer {uuid: 'b879fcf4-654e-11ea-bc55-0242ac130003', text: 'Product', hint: 'A product is an item you can buy, such as a kettle.  It requires no ongoing contract.'}),
(:Answer {uuid: 'b879fe0c-654e-11ea-bc55-0242ac130003', text: 'Service', hint: 'A service is a contract for something to happen, one time or regularly, such as window cleaning. It may involve leasing a product as part of the service, for example supplying mobile phones with a network and data.'}),

// Organisations
(:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003', text: 'MoD'}),
(:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003', text: 'CG'}),
(:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003', text: 'Devolved'}),
(:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003', text: 'Education'}),
(:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003', text: 'Health'}),
(:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003', text: 'LG'}),
(:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003', text: 'Blue Light'}),
(:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003', text: 'Housing'}),
(:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003', text: 'Charities'}),
(:Answer {uuid: 'b879ab14-654e-11ea-bc55-0242ac130003', text: 'WPS'}),

// locations
(:Answer {uuid: 'b879c784-654e-11ea-bc55-0242ac130003', text: 'National'}),
(:Answer {uuid: 'b879c856-654e-11ea-bc55-0242ac130003', text: 'Wales'}),
(:Answer {uuid: 'b879c98c-654e-11ea-bc55-0242ac130003', text: 'Scotland'}),
(:Answer {uuid: 'b879cac2-654e-11ea-bc55-0242ac130003', text: 'Northern Ireland'}),
(:Answer {uuid: 'b879cb8a-654e-11ea-bc55-0242ac130003', text: 'North East'}),
(:Answer {uuid: 'b879cc98-654e-11ea-bc55-0242ac130003', text: 'North West'}),
(:Answer {uuid: 'b879cdba-654e-11ea-bc55-0242ac130003', text: 'Yorkshire and the Humber'}),
(:Answer {uuid: 'b879ce82-654e-11ea-bc55-0242ac130003', text: 'East Midlands'}),
(:Answer {uuid: 'b879cfcc-654e-11ea-bc55-0242ac130003', text: 'West Midlands'}),
(:Answer {uuid: 'b879d094-654e-11ea-bc55-0242ac130003', text: 'East of England'}),
(:Answer {uuid: 'b879d1b6-654e-11ea-bc55-0242ac130003', text: 'London'}),
(:Answer {uuid: 'b879d27e-654e-11ea-bc55-0242ac130003', text: 'South East'}),
(:Answer {uuid: 'b879d3c8-654e-11ea-bc55-0242ac130003', text: 'South West'}),

// Security
(:Answer {uuid: 'b879d490-654e-11ea-bc55-0242ac130003', text: 'Physical & Technical'}),
(:Answer {uuid: 'b879d54e-654e-11ea-bc55-0242ac130003', text: 'Physical'}),
(:Answer {uuid: 'b879d648-654e-11ea-bc55-0242ac130003', text: 'Technical'}),

// Budget
(:Answer {uuid: 'b87a0780-654e-11ea-bc55-0242ac130003', text: 'Less than £1million'}),
(:Answer {uuid: 'b87a08a2-654e-11ea-bc55-0242ac130003', text: '£1million or more'}),

// Contract length
(:Answer {uuid: 'b87a09a6-654e-11ea-bc55-0242ac130003', text: 'Up to 1 year'}),
(:Answer {uuid: 'b87a0adc-654e-11ea-bc55-0242ac130003', text: '1 year or more'}),

// Common endpoints
(:Lot:Outcome {uuid: 'b879e69c-654e-11ea-bc55-0242ac130003', name: 'Facilities Management Marketplace', description: 'UK-wide facilities management (FM) services organised regionally and available to all public sector entities. Includes maintenance, cleaning, security, helpdesk etc.', agreementId: 'RM3830', url: '', type: 'OTHER'}),
(:Lot:Outcome {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003', name: 'CCS Support', description: 'Placeholder for CCS support', type: 'SUPPORT'});
