MATCH
// Required QuestionDefinition nodes:
(qstnSector:QuestionDefinition {uuid: 'b879c46e-654e-11ea-bc55-0242ac130003'}),
(qstnService:QuestionDefinition {uuid: 'b879c55e-654e-11ea-bc55-0242ac130003'}),
(qstnLocation:QuestionDefinition {uuid: 'ccb5c64a-75b5-11ea-bc55-0242ac130003'}),
(qstnBudget:QuestionDefinition {uuid: 'b879c16c-654e-11ea-bc55-0242ac130003'}),

// Required answer nodes:
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

// Budget
(ansBudgetLT20k:Answer {uuid: 'ccb5c294-75b5-11ea-bc55-0242ac130003'}),
(ansBudgetGT20k:Answer {uuid: 'ccb5c4ec-75b5-11ea-bc55-0242ac130003'})

CREATE
(jrnyLegalServices:Journey {uuid: 'ccb5c730-75b5-11ea-bc55-0242ac130003', name: 'Wider Public Sector Legal Services', searchTerms: ['legal', 'injury', 'solicitor']}),

// Agreement lots (journey endpoints)
(lotLegalRail:Lot:Outcome {uuid: 'ccb5c802-75b5-11ea-bc55-0242ac130003', agreementName: 'Rail Legal Services', agreementDescription: "This agreement is designed for the Department for Transport’s rail division to provide specific legal advice for rail services, in particular rail franchising. Although the agreement is designed for the DfT, other central government departments and arms-length bodies may be able to access the suppliers.", agreementId: 'RM3756', url: '', type: 'CAT', scale: false}),

(lotLegalEDisclosure:Lot:Outcome {uuid: 'ccb5c9c4-75b5-11ea-bc55-0242ac130003', agreementName: 'eDisclosure Services', agreementDescription: "This framework provides eDisclosure and eDiscovery services to all public sector customers, including central government and wider public sector. It was designed with input from government customers and suppliers. You can select an end-to-end service or buy component parts of a disclosure procedure from a menu. The frameworks offers a streamlined procurement process, a range of market leading suppliers and fixed rates for standard services. You can buy through a direct award or you can run a further competition.", agreementId: 'RM3717', url: '', type: 'CAT', scale: false}),

(lotLegalCostsLawyerSvcs:Lot:Outcome {uuid: 'ccb5ca8c-75b5-11ea-bc55-0242ac130003', agreementName: 'Costs Lawyer Services', agreementDescription: "The agreement covers the  routine and complex costs litigation work for the receiving party and/or paying party in England and Wales, covering the following services - consultancy and negotiation, estimates and statement of costs, advocacy and/or attending hearings, instructing counsel and costs law advice.", agreementId: 'RM6137', url: '', type: 'CAT', scale: false}),

(lotLegalGLAS:Lot:Outcome {uuid: 'ccb5cb54-75b5-11ea-bc55-0242ac130003', agreementName: 'General Legal Advice Services', agreementDescription: 'Legal advice for central government, covering 23 most commonly required areas of law including major projects including litigation and advisory services.', agreementId: 'RM3786', url: '', type: 'CAT', scale: false}),

(lotLegalFinanceComplex:Lot:Outcome {uuid: '698c2d62-7fc8-11ea-bc55-0242ac130003', agreementName: 'Finance & Complex Legal Services', agreementDescription: "Legal advice on complex corporate finance matters for high-value, high-profile projects. For government departments, executive agencies and arm’s length bodies.", agreementId: 'RM3787', url: '', type: 'CAT', scale: false}),

// WPS Lots
(lotLegalWPSLegalSvcsLot1:Lot:Outcome {uuid: 'ccb5cc12-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 1', agreementDescription: "This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.", lotDescription: "Provides customers with legal services provided by regional firms, covering a range of legal specialisms.  Good for low to medium value transactions", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

(lotLegalWPSLegalSvcsLot2a:Lot:Outcome {uuid: 'ccb5cfaa-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 2a', agreementDescription: 'This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.', lotDescription: "Provides customers with commercial legal services for all seventeen legal specialisms, provided by “full service firms”, covering the jurisdiction of England and Wales.", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

(lotLegalWPSLegalSvcsLot2b:Lot:Outcome {uuid: 'ccb5d072-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 2b', agreementDescription: 'This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.', lotDescription: "Provides customers with commercial legal services for all seventeen legal specialisms, provided by “full service firms”, covering the jurisdiction of Scotland.", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

(lotLegalWPSLegalSvcsLot2c:Lot:Outcome {uuid: 'ccb5d130-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 2c', agreementDescription: 'This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.', lotDescription: "Provides customers with commercial legal services for all seventeen legal specialisms, provided by “full service firms”, covering the jurisdiction of Northern Ireland.", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

(lotLegalWPSLegalSvcsLot3:Lot:Outcome {uuid: 'ccb5cce4-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 3: Property & Construction', agreementDescription: 'This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.', lotDescription: "Provides customers with legal services for property and construction contained within the mandatory service requirements on a national (UK) basis", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

(lotLegalWPSLegalSvcsLot4:Lot:Outcome {uuid: 'ccb5cdac-75b5-11ea-bc55-0242ac130003', agreementName: 'Legal services for the wider public sector', lotName: 'Lot 4: Transport Rail', agreementDescription: 'This panel has been established to provide a simple and compliant route to market for a range of legal services requirements primarily to the wider public sector.', lotDescription: "Provides customers with legal services for transport rail contained within the mandatory service requirements on a national (UK) basis.", agreementId: 'RM3788', url: '', type: 'CAT', scale: true}),

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
(ansMulti:Answer {uuid: 'ccb5dcac-75b5-11ea-bc55-0242ac130003', text: 'Multiple', hint: 'More than one item from this list'}),
(ansAnythingElse:Answer {uuid: 'ccb5dd74-75b5-11ea-bc55-0242ac130003', text: 'Anything else', hint: 'An item not listed here'}),

// Tree Structure
(jrnyLegalServices)-[:FIRST_QUESTION]->(qiSector:QuestionInstance:Outcome {uuid: 'ccb5e0bc-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnSector),

// Central Government Branch (Sector CG)
(ansGrpSectorCentGov:AnswerGroup {name: 'ansGrpSectorCentGov'}),
(qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpSectorCentGov),
(ansGrpSectorCentGov)-[:HAS_ANSWER {order: 1}]->(ansSectorCG),
(ansGrpSectorCentGov)-[:HAS_OUTCOME]->(qiCentGovService:QuestionInstance:Outcome {uuid: 'ccb5e184-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// Sector(CG) -> Service(Rail)
(ansGrpCGServiceRail:AnswerGroup {name: 'ansGrpCGServiceRail'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceRail),
(ansGrpCGServiceRail)-[:HAS_ANSWER {order: 1}]->(ansRail),
(ansGrpCGServiceRail)-[:HAS_OUTCOME]->(lotLegalRail),

// Sector(CG) -> Service(eDisclosure, eDiscovery)
(ansGrpCGServiceEDisc:AnswerGroup {name: 'ansGrpCGServiceEDisc'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEDisc),
(ansGrpCGServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisclosure),
(ansGrpCGServiceEDisc)-[:HAS_ANSWER {order: 3}]->(ansEDiscovery),
(ansGrpCGServiceEDisc)-[:HAS_OUTCOME]->(lotLegalEDisclosure),

// Sector(CG) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpCGServiceCostsLawyer:AnswerGroup {name: 'ansGrpCGServiceCostsLawyer'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpCGServiceCostsLawyer)-[:HAS_ANSWER {order: 5}]->(ansLegalCostsDraftsmen),
(ansGrpCGServiceCostsLawyer)-[:HAS_OUTCOME]->(lotLegalCostsLawyerSvcs),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation)
(ansGrpCGServiceEmpLitProp:AnswerGroup {name: 'ansGrpCGServiceEmpLitProp'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceEmpLitProp),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 6}]->(ansEmpLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 7}]->(ansProperty),
(ansGrpCGServiceEmpLitProp)-[:HAS_ANSWER {order: 8}]->(ansLitigation),
(ansGrpCGServiceEmpLitProp)-[:HAS_OUTCOME]->(qiCentGovBudget:QuestionInstance:Outcome {uuid: 'ccb6124e-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnBudget),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation) -> Budget(<£20k)
(ansGrpCGBudgetLT20k:AnswerGroup {name: 'ansGrpCGBudgetLT20k'}),
(qiCentGovBudget)-[:HAS_ANSWER_GROUP]->(ansGrpCGBudgetLT20k),
(ansGrpCGBudgetLT20k)-[:HAS_ANSWER {order: 1}]->(ansBudgetLT20k),
(ansGrpCGBudgetLT20k)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot1),

// Sector(CG) -> Service(Employment Litigation, Property, Litigation) -> Budget(>£20k)
(ansGrpCGBudgetGT20k:AnswerGroup {name: 'ansGrpCGBudgetGT20k'}),
(qiCentGovBudget)-[:HAS_ANSWER_GROUP]->(ansGrpCGBudgetGT20k),
(ansGrpCGBudgetGT20k)-[:HAS_ANSWER {order: 2}]->(ansBudgetGT20k),
(ansGrpCGBudgetGT20k)-[:HAS_OUTCOME]->(lotLegalGLAS),

// Sector(CG) -> Service(Finance & Complex)
(ansGrpCGServiceFinCompMultiOther:AnswerGroup {name: 'ansGrpCGServiceFinCompMultiOther'}),
(qiCentGovService)-[:HAS_ANSWER_GROUP]->(ansGrpCGServiceFinCompMultiOther),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_ANSWER {order: 9}]->(ansFinanceComplex),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_ANSWER {order: 10}]->(ansMulti),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_ANSWER {order: 11}]->(ansAnythingElse),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_OUTCOME]->(lotLegalFinanceComplex),
(ansGrpCGServiceFinCompMultiOther)-[:HAS_OUTCOME]->(lotLegalGLAS),

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
(ansGrpSectorWPS)-[:HAS_OUTCOME]->(qiWPSService:QuestionInstance:Outcome {uuid: 'ccb61140-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnService),

// Sector(WPS) -> Service(Property & Construction)
(ansGrpWPSServicePropConstruct:AnswerGroup {name: 'ansGrpWPSServicePropConstruct'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServicePropConstruct),
(ansGrpWPSServicePropConstruct)-[:HAS_ANSWER {order: 1}]->(ansPropertyConstruction),
(ansGrpWPSServicePropConstruct)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot3),

// Sector(WPS) -> Service(eDisclosure, eDiscovery)
(ansGrpWPSServiceEDisc:AnswerGroup {name: 'ansGrpWPSServiceEDisc'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceEDisc),
(ansGrpWPSServiceEDisc)-[:HAS_ANSWER {order: 2}]->(ansEDisclosure),
(ansGrpWPSServiceEDisc)-[:HAS_ANSWER {order: 3}]->(ansEDiscovery),
(ansGrpWPSServiceEDisc)-[:HAS_OUTCOME]->(lotLegalEDisclosure),

// Sector(WPS) -> Service(Costs Lawyer, Legal Costs Draftsmen)
(ansGrpWPSServiceCostsLawyer:AnswerGroup {name: 'ansGrpWPSServiceCostsLawyer'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_ANSWER {order: 4}]->(ansCostsLawyer),
(ansGrpWPSServiceCostsLawyer)-[:HAS_ANSWER {order: 5}]->(ansLegalCostsDraftsmen),
(ansGrpWPSServiceCostsLawyer)-[:HAS_OUTCOME]->(lotLegalCostsLawyerSvcs),

// Sector(WPS) -> Service(Transport, Rail)
(ansGrpWPSServiceTransRail:AnswerGroup {name: 'ansGrpWPSServiceTransRail'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceTransRail),
(ansGrpWPSServiceTransRail)-[:HAS_ANSWER {order: 6}]->(ansTransport),
(ansGrpWPSServiceTransRail)-[:HAS_ANSWER {order: 7}]->(ansRail),
(ansGrpWPSServiceTransRail)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot4),

// Sector(WPS) -> Service(Multiple, Other)
(ansGrpWPSServiceMultiOther:AnswerGroup {name: 'ansGrpWPSServiceMultiOther'}),
(qiWPSService)-[:HAS_ANSWER_GROUP]->(ansGrpWPSServiceMultiOther),
(ansGrpWPSServiceMultiOther)-[:HAS_ANSWER {order: 8}]->(ansMulti),
(ansGrpWPSServiceMultiOther)-[:HAS_ANSWER {order: 9}]->(ansAnythingElse),
(ansGrpWPSServiceMultiOther)-[:HAS_OUTCOME]->(qiWPSLocation:QuestionInstance:Outcome {uuid: 'ccb61320-75b5-11ea-bc55-0242ac130003'})-[:DEFINED_BY]->(qstnLocation),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationEngWales:AnswerGroup {name: 'ansGrpWPSLocationEngWales'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationEngWales),
(ansGrpWPSLocationEngWales)-[:HAS_ANSWER {order: 1}]->(ansLocEnglandWales),
(ansGrpWPSLocationEngWales)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot1),
(ansGrpWPSLocationEngWales)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot2a),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationScotland:AnswerGroup {name: 'ansGrpWPSLocationScotland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationScotland),
(ansGrpWPSLocationScotland)-[:HAS_ANSWER {order: 2}]->(ansLocScotland),
(ansGrpWPSLocationScotland)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot1),
(ansGrpWPSLocationScotland)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot2b),

// Sector(WPS) -> Service(Multiple, Other) -> Location(England or Wales)
(ansGrpWPSLocationNorthIreland:AnswerGroup {name: 'ansGrpWPSLocationNorthIreland'}),
(qiWPSLocation)-[:HAS_ANSWER_GROUP]->(ansGrpWPSLocationNorthIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_ANSWER {order: 3}]->(ansLocNorthernIreland),
(ansGrpWPSLocationNorthIreland)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot1),
(ansGrpWPSLocationNorthIreland)-[:HAS_OUTCOME]->(lotLegalWPSLegalSvcsLot2c);
