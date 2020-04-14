MATCH
// Required QuestionDefinition nodes:
(qstnSector:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnLocation:QuestionDefinition {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003'}),
(qstnBudget:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),
(ansSectorWPS:Answer {uuid: 'b879ab14-654e-11ea-bc55-0242ac130003'}),

// Locations
(ansLocEnglandWales:Answer {uuid: 'ccb5c046-75b5-11ea-bc55-0242ac130003'}),
(ansLocScotland:Answer {uuid: 'ccb5c104-75b5-11ea-bc55-0242ac130003'}),
(ansLocNorthernIreland:Answer {uuid: 'ccb5c1cc-75b5-11ea-bc55-0242ac130003'}),

// Budget
(ansBudgetLT20k:Answer {uuid: 'ccb5c294-75b5-11ea-bc55-0242ac130003'}),
(ansBudgetGT20k:Answer {uuid: 'ccb5c4ec-75b5-11ea-bc55-0242ac130003'})

CREATE
(jrnyLegalServices:Journey {uuid: 'ccb5c730-75b5-11ea-bc55-0242ac130003', name: 'Legal Services', searchTerms: ['legal', 'property', 'solicitor']}),

// Agreement lots (journey endpoints)
(lotLegalRail:Lot:Outcome {uuid: 'ccb5c802-75b5-11ea-bc55-0242ac130003', agreementName: 'Rail Legal Services', description: 'Rail-specific legal advice only for Department for Transport, covering rail franchising. Not for use by the wider public sector. Replaces part of RM919.', agreementId: 'RM3756', url: '', type: 'CAT'}),
(lotLegalEDisclosure:Lot:Outcome {uuid: 'ccb5c9c4-75b5-11ea-bc55-0242ac130003', agreementName: 'eDisclosure Services', description: 'Provides eDisclosure services for all public sector customers. You can choose an end-to-end service up to and including top secret, or component parts of disclosure.', agreementId: 'RM3717', url: '', type: 'CAT'}),
(lotLegalCostsLawyerSvcs:Lot:Outcome {uuid: 'ccb5ca8c-75b5-11ea-bc55-0242ac130003', agreementName: 'Costs Lawyer Services', description: 'A simple and compliant costs law services for central government departments, arm’s length bodies and the wider public sector across England and Wales.', agreementId: 'RM6137', url: '', type: 'CAT'}),
(lotLegalGLAS:Lot:Outcome {uuid: 'ccb5cb54-75b5-11ea-bc55-0242ac130003', agreementName: 'General Legal Advice Services', description: 'Legal advice for central government, covering 23 most commonly required areas of law including major projects including litigation and advisory services.', agreementId: 'RM3786', url: '', type: 'CAT'}),

// WPS Lots
(lotLegalWPSLegalSvcsLot1:Lot:Outcome {uuid: 'ccb5cc12-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 1 (Regional Service Provision)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),

(lotLegalWPSLegalSvcsLot2a:Lot:Outcome {uuid: 'ccb5cfaa-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 2a (Full Service Firms - England & Wales)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),
(lotLegalWPSLegalSvcsLot2b:Lot:Outcome {uuid: 'ccb5d072-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 2b (Full Service Firms - Scotland)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),
(lotLegalWPSLegalSvcsLot2c:Lot:Outcome {uuid: 'ccb5d130-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 2c (Full Service Firms - Northern Ireland)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),

(lotLegalWPSLegalSvcsLot3:Lot:Outcome {uuid: 'ccb5cce4-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 3 (Property & Construction)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),
(lotLegalWPSLegalSvcsLot4:Lot:Outcome {uuid: 'ccb5cdac-75b5-11ea-bc55-0242ac130003', agreementName: 'WPS Legal Services', lotName: 'Lot 4 (Transport Rail)', description: 'Legal services for the wider public sector.', agreementId: 'RM3788', url: '', type: 'CAT'}),



;
