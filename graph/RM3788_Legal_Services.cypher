MATCH
// Questions
(qstnSector:Question {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnServiceArea:Question {uuid: '59561c74-8d8f-4863-a01d-5cca0a289986'}),
(qstnLocation:Question {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003'}),
(qstnBudgetKnown:Question {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),
(qstnBudgetValue:Question {uuid: '931a3024-8612-422b-8e6f-480007105c2e'}),

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
(ansRail:Answer {uuid: 'ccb5d1ee-75b5-11ea-bc55-0242ac130003', text: 'Rail', hint: 'Rail-specific legal advice only for Department for Transport, covering rail franchising'}),
(ansEDisclosure:Answer {uuid: 'ccb5d2b6-75b5-11ea-bc55-0242ac130003', text: 'eDisclosure', hint: 'Management of disclosure of electronic documents in a legal dispute'}),
(ansEDiscovery:Answer {uuid: 'ccb5d608-75b5-11ea-bc55-0242ac130003', text: 'eDiscovery', hint: 'Management of discovery of electronic documents in a legal dispute'}),
(ansCostsLawyer:Answer {uuid: 'ccb5d702-75b5-11ea-bc55-0242ac130003', text: 'Costs lawyer', hint: 'Legal professional involved in working out costs of legal fees and claims'}),
(ansLegalCostsDraftsmen:Answer {uuid: 'ccb5d7d4-75b5-11ea-bc55-0242ac130003', text: 'Legal costs draftman', hint: 'Specialist legal professional who settles the legals costs of court cases'}),
(ansEmpLitigation:Answer {uuid: 'ccb5d8a6-75b5-11ea-bc55-0242ac130003', text: 'Employment litigation', hint: 'Legal services related to defence or claim against employment law'}),
(ansProperty:Answer {uuid: 'ccb5da72-75b5-11ea-bc55-0242ac130003', text: 'Property', hint: 'Legal services related to property law - for example, the purchase or building of a government-owned building'}),
(ansLitigation:Answer {uuid: 'ccb5db3a-75b5-11ea-bc55-0242ac130003', text: 'Litigation', hint: 'Legal services related to the process of taking or defending legal action'}),
(ansFinanceComplex:Answer {uuid: 'ccb5dbee-75b5-11ea-bc55-0242ac130003', text: 'Finance & Complex', hint: 'Financial legal action such as prosecuting fraud'}),
(ansPropertyConstruction:Answer {uuid: 'ccb5df2c-75b5-11ea-bc55-0242ac130003', text: 'Property and construction', hint: 'This is for large scale and high value building works, such as a hospital'}),
(ansTransport:Answer {uuid: 'ccb5dff4-75b5-11ea-bc55-0242ac130003', text: 'Transport', hint: 'Transport-specific legal advice'}),
(ansAnythingElse:Answer {uuid: 'ccb5dd74-75b5-11ea-bc55-0242ac130003', text: 'Anything else', hint: 'A legal service not listed here'}),

// Tree Structure
(jrnyLegalServices)-[:FIRST_QUESTION]->(qiSector:QuestionInstance:Outcome {uuid: 'ccb5e0bc-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Central Government Branch (Sector CG)
(ansGrpSectorCentGov:AnswerGroup {name: 'ansGrpSectorCentGov'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorCentGov),
(ansGrpSectorCentGov)-[:HAS_ANSWER {order: 1}]->(ansSectorCG),
(ansGrpSectorCentGov)-[:HAS_OUTCOME]->(qiCentGovService:QuestionInstance:Outcome {uuid: 'ccb5e184-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnServiceArea),

// Sector(CG) -> Service(Rail)
(ansGrpCGServiceRail:AnswerGroup {name: 'ansGrpCGServiceRail'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceRail),
(ansGrpCGServiceRail)-[:HAS_ANSWER {order: 1}]->(ansRail),
(ansGrpCGServiceRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3756'}),
(ansGrpCGServiceRail)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '590b099b-41ac-49a0-82c1-380c50b22bc4', group: 'cg_multi_rail', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3756'}),
(ansGrpCGServiceRail)-[:HAS_MULTI_SELECT]->(multiCGServiceRail:MultiSelect {uuid: 'b3ab9577-01f6-43d7-85c0-7ac110715fb9', group: 'cg_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(multiCGServiceRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(eDisclosure, eDiscovery)
(ansGrpCGServiceEDisc:AnswerGroup {name: 'ansGrpCGServiceEDisc'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEDisc),
(ansGrpCGServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisclosure),
(ansGrpCGServiceEDisc)-[:HAS_ANSWER {order: 3}]->(ansEDiscovery),
(ansGrpCGServiceEDisc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),
(ansGrpCGServiceEDisc)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'e0d4e36d-7735-48e7-ad52-9955dfcf60b6', group: 'cg_multi_edisc', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),
(ansGrpCGServiceEDisc)-[:HAS_MULTI_SELECT]->(multiCGServiceEDisc:MultiSelect {uuid: 'a5a57a54-9be2-46b9-b362-bb7df6111d89', group: 'cg_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(multiCGServiceEDisc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpCGServiceCostsLawyer:AnswerGroup {name: 'ansGrpCGServiceCostsLawyer'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_ANSWER {order: 5}]->(ansLegalCostsDraftsmen),
(ansGrpCGServiceCostsLawyer)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),
(ansGrpCGServiceCostsLawyer)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '3844230f-edc4-4f8b-82b0-d567ce33c7bb', group: 'cg_multi_costs_lawyer', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),
(ansGrpCGServiceCostsLawyer)-[:HAS_MULTI_SELECT]->(multiCGServiceCostsLawyer:MultiSelect {uuid: '35f96ad9-3619-4632-adf8-326c88105b92', group: 'cg_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(multiCGServiceCostsLawyer)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation)
(ansGrpCGServiceEmpLitProp:AnswerGroup {name: 'ansGrpCGServiceEmpLitProp'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEmpLitProp),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 6}]->(ansEmpLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 7}]->(ansProperty),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 8}]->(ansLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_OUTCOME]->(qiCentGovBudget:QuestionInstance:Outcome {uuid: 'ccb6124e-75b5-11ea-bc55-0242ac130003', conditionalInput: true})-[:DEFINED_BY]->(qstnBudgetKnown),
(ansGrpCGServiceEmpLitProp)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'd6f34b9f-3667-4f06-82a8-e334b36d5157', group: 'cg_multi_emplit_prop', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(qiCentGovBudget),
(ansGrpCGServiceEmpLitProp)-[:HAS_MULTI_SELECT]->(multiCGServiceEmpLitProp:MultiSelect {uuid: 'a4bf03aa-c24a-4c77-80b5-f6dd602eeb8a', group: 'cg_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(multiCGServiceEmpLitProp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation) -> Budget (known)
// TODO: Remove artificial upper & lower bounds
(ansGrpCGBudgetKnown:AnswerGroup {name: 'ansGrpCGBudgetKnown'}),
(qiCentGovBudget)-[:HAS_ANSWER_GROUP]->(ansGrpCGBudgetKnown),
(ansGrpCGBudgetKnown)-[:HAS_ANSWER {order: 1}]->(ansYesBudgetKnown)-[:HAS_CONDITIONAL_INPUT]->(qstnBudgetValue),
(ansGrpCGBudgetKnown)-[:HAS_OUTCOME {lowerBoundInclusive: 0, upperBoundExclusive: 20000}]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
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
(ansGrpCGServiceFinCompMultiOther)-[:HAS_MULTI_SELECT]->(multiCGServiceFinCompMultiOther:MultiSelect {uuid: '0209722e-6099-45d2-bdb5-ae69d793feef', group: 'cg_multi_svcs', mixPrecedence: 1, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3787'}),
(multiCGServiceFinCompMultiOther)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3786'}),

// Non CG Branch (WPS)
(ansGrpSectorWPS:AnswerGroup {name: 'ansGrpSectorWPS'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorWPS),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 2}]->(ansSectorLG),
(ansGrpSectorWPS)-[:HAS_ANSWER {order: 3}]->(ansSectorMoD),
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
(ansGrpWPSServicePropConstruct)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '2e2296e1-c2e7-42bc-9e23-b4bbc03fe847', group: 'wps_multi_prop_const', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),
(ansGrpWPSServicePropConstruct)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '9c5466b3-fe4f-475d-a9db-f05898c2d964', group: 'wps_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(eDisclosure, eDiscovery)
(ansGrpWPSServiceEDisc:AnswerGroup {name: 'ansGrpWPSServiceEDisc'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceEDisc),
(ansGrpWPSServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisclosure),
(ansGrpWPSServiceEDisc)-[:HAS_ANSWER {order: 3}]->(ansEDiscovery),
(ansGrpWPSServiceEDisc)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),
(ansGrpWPSServiceEDisc)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '11672d87-0338-46b9-a402-32bc3b6e4593', group: 'wps_multi_edisc', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3717'}),
(ansGrpWPSServiceEDisc)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'cf878a1f-8acb-44d9-b860-b5c6f7bfa2c7', group: 'wps_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpWPSServiceCostsLawyer:AnswerGroup {name: 'ansGrpWPSServiceCostsLawyer'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_ANSWER {order: 5}]->(ansLegalCostsDraftsmen),
(ansGrpWPSServiceCostsLawyer)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),
(ansGrpWPSServiceCostsLawyer)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '56051e5f-94d0-43a1-85e6-0ffa53aec71a', group: 'wps_multi_costs_lawyer', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6137'}),
(ansGrpWPSServiceCostsLawyer)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: '824a1c11-abf3-4497-a070-4a51844e17b8', group: 'wps_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(Transport, Rail)
(ansGrpWPSServiceTransRail:AnswerGroup {name: 'ansGrpWPSServiceTransRail'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceTransRail),
(ansGrpWPSServiceTransRail)-[:HAS_ANSWER {order: 6}]->(ansTransport),
(ansGrpWPSServiceTransRail)-[:HAS_ANSWER {order: 7}]->(ansRail),
(ansGrpWPSServiceTransRail)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),
(ansGrpWPSServiceTransRail)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'cb1c9133-822b-4234-9a88-d746b4c450e4', group: 'wps_multi_trans_rail', mixPrecedence: 2, primary: true})-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3788'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),
(ansGrpWPSServiceTransRail)-[:HAS_MULTI_SELECT]->(:MultiSelect {uuid: 'fbc3aa56-ed2f-481b-9c37-cbdb34b2afa3', group: 'wps_multi_svcs', mixPrecedence: 1})-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(Multiple, Other)
(ansGrpWPSServiceMultiOther:AnswerGroup {name: 'ansGrpWPSServiceMultiOther'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceMultiOther),
(ansGrpWPSServiceMultiOther)-[:HAS_ANSWER {order: 8, mutex: true}]->(ansAnythingElse),
(ansGrpWPSServiceMultiOther)-[:HAS_OUTCOME]->(qiWPSLocation),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationEngWales:AnswerGroup {name: 'ansGrpWPSLocationEngWales'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationEngWales),
(ansGrpWPSLocationEngWales)-[:HAS_ANSWER {order: 1}]->(ansLocEnglandWales),
(ansGrpWPSLocationEngWales)-[:HAS_OUTCOME]->(wpsLot1_2a:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2a)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2a)-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationScotland:AnswerGroup {name: 'ansGrpWPSLocationScotland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationScotland),
(ansGrpWPSLocationScotland)-[:HAS_ANSWER {order: 2}]->(ansLocScotland),
(ansGrpWPSLocationScotland)-[:HAS_OUTCOME]->(wpsLot1_2b:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2b)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2b)-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationNorthIreland:AnswerGroup {name: 'ansGrpWPSLocationNorthIreland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationNorthIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_ANSWER {order: 3}]->(ansLocNorthernIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_OUTCOME]->(wpsLot1_2c:Agreement:Outcome {number: 'RM3788'}),
(wpsLot1_2c)-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
(wpsLot1_2c)-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true});
