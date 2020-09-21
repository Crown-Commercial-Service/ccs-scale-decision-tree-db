MATCH
// Questions
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnServiceArea:Question {uuid: '59561c74-8d8f-4863-a01d-5cca0a289986'}),
(qstnLocation:Question {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003'}),
(qstnLegalFeesKnown:Question {uuid: 'd3a82a1e-ed20-11ea-adc1-0242ac120002'}),
(qstnLegalFeesValue:Question {uuid: '6a122d52-ed20-11ea-adc1-0242ac120002'}),

// Answers
(ansSectorCG:Answer {uuid: 'b879a178-654e-11ea-bc55-0242ac130003'}),
(ansSectorLG:Answer {uuid: 'b879a5ec-654e-11ea-bc55-0242ac130003'}),
(ansSectorMoD:Answer {uuid: 'b8799ee4-654e-11ea-bc55-0242ac130003'}),
(ansSectorDevolved:Answer {uuid: 'b879a286-654e-11ea-bc55-0242ac130003'}),
(ansSectorEdu:Answer {uuid: 'b879a3bc-654e-11ea-bc55-0242ac130003'}),
(ansSectorHealth:Answer {uuid: 'b879a48e-654e-11ea-bc55-0242ac130003'}),
(ansSectorBlueLight:Answer {uuid: 'b879a6b4-654e-11ea-bc55-0242ac130003'}),
(ansSectorHousing:Answer {uuid: 'b879a8d0-654e-11ea-bc55-0242ac130003'}),
(ansSectorCharities:Answer {uuid: 'b879a9de-654e-11ea-bc55-0242ac130003'}),

// Locations
(ansLocEnglandWales:Answer {uuid: 'ccb5c046-75b5-11ea-bc55-0242ac130003'}),
(ansLocScotland:Answer {uuid: 'ccb5c104-75b5-11ea-bc55-0242ac130003'}),
(ansLocNorthernIreland:Answer {uuid: 'ccb5c1cc-75b5-11ea-bc55-0242ac130003'}),

// Yes / No
(ansNo:Answer {uuid: 'ccb59b2a-75b5-11ea-bc55-0242ac130003'})

CREATE
// Additional answer nodes for conditional input
(ansYesBudgetKnown:Answer {uuid: '0b04c53c-e253-4bd8-873d-cef841bb50c1', text: 'Yes'}),

(jrnyLegalServices:Journey {uuid: 'ccb5c730-75b5-11ea-bc55-0242ac130003', name: 'Wider Public Sector Legal Services'}),

// Legal Services specific answers
(ansRail:Answer {uuid: 'ccb5d1ee-75b5-11ea-bc55-0242ac130003', text: 'Rail', hint: 'Rail-specific legal advice, for Department of Transport and its associated bodies only'}),
(ansEDisc:Answer {uuid: 'ccb5d2b6-75b5-11ea-bc55-0242ac130003', text: 'eDisclosure and eDiscovery', hint: 'Management of discovery and disclosure of electronic documents in a legal dispute'}),
(ansCostsLawyer:Answer {uuid: 'ccb5d702-75b5-11ea-bc55-0242ac130003', text: 'Costs lawyer and legal costs draftsmen', hint: 'Legal professionals responsible for legal costs'}),
(ansEmpLitigation:Answer {uuid: 'ccb5d8a6-75b5-11ea-bc55-0242ac130003', text: 'Employment litigation', hint: 'Legal services related to defence or claim against employment law'}),
(ansProperty:Answer {uuid: 'ccb5da72-75b5-11ea-bc55-0242ac130003', text: 'Property', hint: 'Legal services related to property law'}),
(ansLitigation:Answer {uuid: 'ccb5db3a-75b5-11ea-bc55-0242ac130003', text: 'Litigation', hint: 'Legal services related to the process of taking or defending legal action'}),
(ansFinanceComplex:Answer {uuid: 'ccb5dbee-75b5-11ea-bc55-0242ac130003', text: 'Finance & Complex', hint: 'Legal advice on complex corporate finance matters'}),
(ansPropertyConstruction:Answer {uuid: 'ccb5df2c-75b5-11ea-bc55-0242ac130003', text: 'Property and construction', hint: 'This is for large-scale and high-value building works, such as a hospital'}),
(ansTransportAndRail:Answer {uuid: 'caf3bc1a-ee8f-11ea-adc1-0242ac120002', text: 'Transport and rail', hint: 'Transport-specific legal advice'}),
(ansAnythingElse:Answer {uuid: 'ccb5dd74-75b5-11ea-bc55-0242ac130003', text: 'Anything else', hint: 'A legal service not listed here'}),
(ansMultipleServices:Answer {uuid: '8d8c81ec-ee9c-11ea-adc1-0242ac120002', text: 'Multiple services', hint: 'More than one item from this list'}),

// Tree Structure
(jrnyLegalServices)-[:FIRST_QUESTION]->(qiSector:QuestionInstance:Outcome {uuid: 'ccb5e0bc-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Central Government Branch (Sector CG)
(ansGrpSectorCentGov:AnswerGroup {name: 'ansGrpSectorCentGov'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorCentGov),
(ansGrpSectorCentGov)-[:HAS_ANSWER {order: 1}]->(ansSectorCG),
(ansGrpSectorCentGov)-[:HAS_ANSWER {order: 3}]->(ansSectorMoD),
(ansGrpSectorCentGov)-[:HAS_OUTCOME]->(qiCentGovService:QuestionInstance:Outcome {uuid: 'ccb5e184-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServiceArea),

// Sector(CG) -> Service(Rail)
(ansGrpCGServiceRail:AnswerGroup {name: 'ansGrpCGServiceRail'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceRail),
(ansGrpCGServiceRail)-[:HAS_ANSWER {order: 1}]->(ansRail),
(ansGrpCGServiceRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3756'}),

// Sector(CG) -> Service(eDisclosure, eDiscovery)
(ansGrpCGServiceEDisc:AnswerGroup {name: 'ansGrpCGServiceEDisc'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEDisc),
(ansGrpCGServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisc),
(ansGrpCGServiceEDisc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),

// Sector(CG) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpCGServiceCostsLawyer:AnswerGroup {name: 'ansGrpCGServiceCostsLawyer'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation)
(ansGrpCGServiceEmpLitProp:AnswerGroup {name: 'ansGrpCGServiceEmpLitProp'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEmpLitProp),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 6}]->(ansEmpLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 7}]->(ansProperty),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 8}]->(ansLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_OUTCOME]->(qiCentGovBudget:QuestionInstance:Outcome {uuid: 'ccb6124e-75b5-11ea-bc55-0242ac130003', conditionalInput: true})-[:DEFINED_BY]->(qstnLegalFeesKnown),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation) -> Budget (known)
// TODO: Remove artificial upper & lower bounds
(ansGrpCGBudgetKnown:AnswerGroup {name: 'ansGrpCGBudgetKnown'}),
(qiCentGovBudget)-[:HAS_ANSWER_GROUP]->(ansGrpCGBudgetKnown),
(ansGrpCGBudgetKnown)-[:HAS_ANSWER {order: 1}]->(ansYesBudgetKnown)-[:HAS_CONDITIONAL_INPUT]->(qstnLegalFeesValue),
(ansGrpCGBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 0, upperBoundExclusive: 20000}]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(ansGrpCGBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 0, upperBoundExclusive: 20000}]->(:Agreement:Outcome {number: 'RM3786'}),
(ansGrpCGBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 20000, upperBoundExclusive: 9223372036854775807}]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation) -> Budget (unknown)
(ansGrpCGBudgetUnknown:AnswerGroup {name: 'ansGrpCGBudgetUnknown'}),
(qiCentGovBudget)-[:HAS_ANSWER_GROUP]->(ansGrpCGBudgetUnknown),
(ansGrpCGBudgetUnknown)-[:HAS_ANSWER {order: 2}]->(ansNo),
(ansGrpCGBudgetUnknown)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(ansGrpCGBudgetUnknown)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(Finance & Complex)
(ansGrpCGServiceFinCompMultiOther:AnswerGroup {name: 'ansGrpCGServiceFinCompMultiOther'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceFinCompMultiOther),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_ANSWER {order: 9}]->(ansFinanceComplex),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_ANSWER {order: 10, mutex: true}]->(ansAnythingElse),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Non CG Branch (WPS)
(ansGrpSectorWPS:AnswerGroup {name: 'ansGrpSectorWPS'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorWPS),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorLG),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 4}]->(ansSectorDevolved),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 5}]->(ansSectorEdu),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 6}]->(ansSectorHealth),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 7}]->(ansSectorBlueLight),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 8}]->(ansSectorHousing),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 9}]->(ansSectorCharities),
(ansGrpSectorWPS)-[:HAS_OUTCOME]->(qiWPSService:QuestionInstance:Outcome {uuid: 'ccb61140-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServiceArea),

// Sector(WPS) -> Service(Property & Construction)
(qiWPSLocation:QuestionInstance:Outcome {uuid: 'ccb61320-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnLocation),

(ansGrpWPSServicePropConstruct:AnswerGroup {name: 'ansGrpWPSServicePropConstruct'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServicePropConstruct),
(ansGrpWPSServicePropConstruct)-[:HAS_ANSWER {order: 1}]->(ansPropertyConstruction),
(ansGrpWPSServicePropConstruct)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

// Sector(WPS) -> Service(eDisclosure, eDiscovery)
(ansGrpWPSServiceEDisc:AnswerGroup {name: 'ansGrpWPSServiceEDisc'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceEDisc),
(ansGrpWPSServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisc),
(ansGrpWPSServiceEDisc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),

// Sector(WPS) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpWPSServiceCostsLawyer:AnswerGroup {name: 'ansGrpWPSServiceCostsLawyer'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),

// Sector(WPS) -> Service(Transport, Rail)
(ansGrpWPSServiceTransRail:AnswerGroup {name: 'ansGrpWPSServiceTransRail'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceTransRail),
(ansGrpWPSServiceTransRail)-[:HAS_ANSWER {order: 6}]->(ansTransportAndRail),
(ansGrpWPSServiceTransRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

// Sector(WPS) -> Service(Multiple, Other)
(ansGrpWPSServiceMultiOther:AnswerGroup {name: 'ansGrpWPSServiceMultiOther'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceMultiOther),
(ansGrpWPSServiceMultiOther)-[:HAS_ANSWER {order: 7}]->(ansMultipleServices),
(ansGrpWPSServiceMultiOther)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansAnythingElse),
(ansGrpWPSServiceMultiOther)-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationEngWales:AnswerGroup {name: 'ansGrpWPSLocationEngWales'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationEngWales),
(ansGrpWPSLocationEngWales)-[:HAS_ANSWER {order: 1}]->(ansLocEnglandWales),
(ansGrpWPSLocationEngWales)-[:HAS_OUTCOME]->(wpsLot1_2a:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2a)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2a)-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),
(ansGrpWPSLocationEngWales)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '8cbc8ca0-7801-4332-bae3-697b06f4627a', group: 'wps_loc', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'}),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationScotland:AnswerGroup {name: 'ansGrpWPSLocationScotland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationScotland),
(ansGrpWPSLocationScotland)-[:HAS_ANSWER {order: 2}]->(ansLocScotland),
(ansGrpWPSLocationScotland)-[:HAS_OUTCOME]->(wpsLot1_2b:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2b)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2b)-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),
(ansGrpWPSLocationScotland)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'a1b070b4-d5c8-4cf5-875a-41a173dfd6ad', group: 'wps_loc', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'}),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationNorthIreland:AnswerGroup {name: 'ansGrpWPSLocationNorthIreland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationNorthIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_ANSWER {order: 3}]->(ansLocNorthernIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_OUTCOME]->(wpsLot1_2c:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2c)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2c)-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true}),
(ansGrpWPSLocationNorthIreland)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '3651cd6e-2735-409c-8184-5dd117d5dfea', group: 'wps_loc', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'});
