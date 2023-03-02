
MATCH
(qstnFirstQ:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(qiTechProductsFirstQuestion:QuestionInstance {uuid: '698c220e-7fc8-11ea-bc55-0242ac130003'}),
(qiFmFirstQuestion:QuestionInstance {uuid: '1add4fed-cd58-497a-a924-db5c38dfb418'}),
(qstnSector:Question {uuid: '64f00811-ebd6-40b1-8870-20e5aeaf891c'})


CREATE
// Questions
(qstnSecurityService:Question {uuid: '8e74ed26-62ca-4c74-9658-599369ea13b5', text: 'What type of security service do you need?', type: 'LIST'}),
(qstnAdditional:Question {uuid: '80753c8e-dad2-4fbd-82d2-1bc9d4f6876b', text: 'Do you need additional services outside of technical and security services?', type: 'LIST'}),
(qstnHousingManagement:Question {uuid: '9b8b1f17-d5e7-42ee-99a1-46b703947296', text: 'Do you need housing management services or housing maintenance and repair services?', type: 'LIST'}),


// Answer
(ansSecurity:Answer {uuid: '2a5b0315-04a8-4a08-9fe7-56aadcdf99cc', text: 'Security services', hint: 'Provides security and facility management services including:
<ul>
<li>CCTV, alarm and intruder detection systems</li>
<li>electric security gates and access control services</li>
<li>manned guarding services including patrols</li>
<li>cleaning and catering services</li>
</ul>'}),

(ansHousing:Answer {uuid: '1865d366-bd44-4105-8dcb-3787dffe8de9', text: 'Housing maintenance and management', hint: 'Provides services to help you maintain and manage housing. Includes:
<ul>
<li>contract management services such as fire safety and risk management</li>
<li>maintenance of empty or untenanted properties</li>
<li>miscellaneous services such as waste collection and disposal, pest control and grounds maintenance</li>
<li>services to help you manage the billing of maintenance works and projects</li>
<li>horticultural services such as the maintaining of gardens and indoor plants</li>
</ul>'}),

(ansFacilitiesManagement:Answer {uuid: '5df8dc14-6c58-45e2-ab4d-f5c75083ae2d', text: 'Facilities management', hint: 'Provides services to help you maintain and manage your facility. Includes
<ul>
<li>catering and cleaning services</li>
<li>landscaping</li>
<li>waste management</li>
<li>lighting, plumbing and heating services</li>
</ul>'}),

(ansCleaning:Answer {uuid: 'ecd1ae21-204d-4586-9989-501ca1a642ff', text: 'Cleaning or medical and hazardous waste management', hint: 'Provides all types of contract cleaning and hazardous waste services including:
<ul>
<li>the routine and deep cleaning of buildings</li>
<li>window cleaning</li>
<li>litter picking</li>
<li>reactive cleaning or cleaning which takes place on request</li>
<li>the collection and disposal of all types of medical and hazardous waste such as medicines and chemicals</li>
<li>the collection and disposal of sharps such as needles</li>
<li>an analysis of your current cleaning and waste management practices to identify more efficient ways of working</li>
</ul>'}),



(ansSecurityServices:Answer {uuid: 'faa4496e-2e28-45b9-875e-df3a24e9013a', text: 'Security services', hint: 'Provides security services only including:
<ul>
<li>access control systems such as managing visitors and security passes</li>
<li>reactive guarding services such as alarms and video surveillance which helps to protect your premises and can let you know when suspicious activity is taking place</li>
<li>manned guarding services which involves placing security guards on the premises to guard access points, equipment, valuables, provide personal security, event security or crowd control</li>
<li>CCTV and alarm monitoring services</li>
<li>risk assessments to help you identify your security risks</li>
<li>emergency response services</li>
</ul>'}),

(ansTechnicalSecurity:Answer {uuid: '93991bb2-4827-446a-9020-dc89674a42fd', text: 'Technical Security', hint: 'Access technical security services only including:
<ul>
<li>video surveillance systems or CCTV</li>
<li>security lighting</li>
<li>the design, supply, installation and maintenance of alarm systems</li>
<li>security gates and fences that lock electronically</li>
<li>automatic barriers such as rising bollards</li>
<li>security management systems (SMS)</li>
<li>automatic access control systems (AACS) which are digital networks that electronically control who can enter or leave a specific area</li>
<li>business information modelling (BIM) which is the process of creating and managing information for a project</li>
</ul>'}),

(ansTechnicalServices:Answer {uuid: 'fccf8eb3-83c4-4d85-9cac-1007f45cba59', text: 'Technical security and security services', hint: 'Access technical security and security services including:
<ul>
<li>the design, supply, installation and maintenance of alarm systems</li>
<li>security gates and fences that lock electronically</li>
<li>automatic barriers such as rising bollards</li>
<li>CCTV services</li>
<li>intruder detection systems (IDS), including devices or software that monitors for suspicious behaviour and policy violations</li>
<li>security management systems (SMS) to help you manage your current security processes</li>
<li>automatic access control systems (AACS)</li>
<li>security lighting</li>
</ul>'}),

(ansSecurityAndFmServices:Answer {uuid: 'e1d88066-cf8a-48e2-b8d5-17e95e454db4', text: 'Security and facility management services', hint: 'Access security and facility management services including:
<ul>
<li>cleaning and catering services</li>
<li>statutory obligations such as, asbestos management, electrical testing and portable appliance testing</li>
<li>horticultural services such as the maintaining of gardens and indoor plants</li>
<li>security services including access control systems, reactive guarding, CCTV and alarm monitoring</li>
</ul>'}),

(ansSoftwareSecurity:Answer {uuid: 'a3f32f5f-22b3-4514-a6d7-d3ebcc2af82a', text: 'Software security', hint: 'Any type of software that secures and protects a computer, network or any computing-enabled device'}),


(ansMOD:Answer {uuid: '9b93479a-e36a-49b1-b417-b8e6be1fd8eb', text: 'Ministry of Defence (MOD)'}),
(ansNonMOD:Answer {uuid: '5f1e3e97-8c6f-4dd1-b1e0-79d000d2e59c', text: 'Non-MOD', hint: 'Includes all other sectors such as health, education and emergency services'}),

(ansYes:Answer {uuid: '21545d44-75b8-4ff4-b008-26cf65047fcb', text: 'Yes', hint: 'Additional services include:
<ul>
<li>cleaning and catering</li>
<li>waste services, such as the collection, transport and disposal of waste from your facility</li>
<li>facility maintenance such as electrical and plumbing services</li>
</ul>'}),
(ansNo:Answer {uuid: 'f574795b-68dc-4d73-8927-f69c82a27162', text: 'No', hint: 'I do not need any additional services'}),

(ansHousingManagement:Answer {uuid: 'ff744ab1-2bde-41f1-94a6-bcc7a5912f3e', text: 'Housing management', hint: 'Access services to help you manage housing and accomodation including:
<ul>
<li>contract management services such as fire safety and risk management</li>
<li>managing the occupation of your facilities</li>
<li>services to help you manage the billing of maintenance works and projects</li>
</ul>'}),

(ansHousingMaintenance:Answer {uuid: 'f8bdc7b2-af65-4fce-8950-e5c76874f3ff', text: 'Housing maintenance and repair', hint: 'Access services to help you mainain housing and accomodation including:
<ul>
<li>maintenance services such as electrical work and plumbing, pest control and the clearing of snow and ice</li>
<li>horticultural services such as the maintaining of gardens and indoor plants</li>
<li>support desk services for property maintenance</li>
<li>billing management for maintenance works and projects</li>
</ul>'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyFM2WorkplaceServices:Journey {uuid: '25378708-08d7-4192-8e4d-68ceb5013c9c', name: 'FM2 Workplace Services'}),
(jrnyFM2WorkplaceServices)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '0587ef6b-3978-48e1-938a-32c3aebff9b2'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpSecurity:AnswerGroup {name: 'ansGrpSecurity'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSecurity),
(ansGrpSecurity)-[:HAS_ANSWER {order: 1}]->(ansSecurity),
(ansGrpSecurity)-[:HAS_OUTCOME]->(qiSecurityService:QuestionInstance:Outcome {uuid: '3f594b8c-337c-4424-80d0-e44e9a3f618d'})-[:DEFINED_BY]->(qstnSecurityService),

    (ansGrpSecurityServices:AnswerGroup {name: 'ansGrpSecurityServices'}),
    (qiSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityServices),
    (ansGrpSecurityServices)-[:HAS_ANSWER {order: 1}]->(ansSecurityServices),
    (ansGrpSecurityServices)-[:HAS_OUTCOME]->(qiSectorForSecurityService:QuestionInstance:Outcome {uuid: '9309399d-e19e-4836-879c-8f07f1ce624b'})-[:DEFINED_BY]->(qstnSector),

        (ansGrpMODForSecurityService:AnswerGroup {name: 'ansGrpMODForSecurityService'}),
        (qiSectorForSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpMODForSecurityService),
        (ansGrpMODForSecurityService)-[:HAS_ANSWER {order: 1}]->(ansMOD),
        (ansGrpMODForSecurityService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
        (ansGrpMODForSecurityService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpNonMODForSecurityService:AnswerGroup {name: 'ansGrpNonMODForSecurityService'}),
        (qiSectorForSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpNonMODForSecurityService),
        (ansGrpNonMODForSecurityService)-[:HAS_ANSWER {order: 2}]->(ansNonMOD),
        (ansGrpNonMODForSecurityService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
    
    (ansGrpTechnicalSecurity:AnswerGroup {name: 'ansGrpTechnicalSecurity'}),
    (qiSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpTechnicalSecurity),
    (ansGrpTechnicalSecurity)-[:HAS_ANSWER {order: 2}]->(ansTechnicalSecurity),
    (ansGrpTechnicalSecurity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

    (ansGrpTechnicalServices:AnswerGroup {name: 'ansGrpTechnicalServices'}),
    (qiSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpTechnicalServices),
    (ansGrpTechnicalServices)-[:HAS_ANSWER {order: 3}]->(ansTechnicalServices),
    (ansGrpTechnicalServices)-[:HAS_OUTCOME]->(qiAdditional:QuestionInstance:Outcome {uuid: 'ec9c22ae-d8e3-4386-8d8f-9e6e964c505f'})-[:DEFINED_BY]->(qstnAdditional),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiAdditional)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(qiSectorForYes:QuestionInstance:Outcome {uuid: '15a34b5f-453a-4e4d-b4bf-b6fb65202545'})-[:DEFINED_BY]->(qstnSector),

            (ansGrpMODForYes:AnswerGroup {name: 'ansGrpMODForYes'}),
            (qiSectorForYes)-[:HAS_ANSWER_GROUP]->(ansGrpMODForYes),
            (ansGrpMODForYes)-[:HAS_ANSWER {order: 1}]->(ansMOD),
            (ansGrpMODForYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6155'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
            (ansGrpMODForYes)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpNonMODForYes:AnswerGroup {name: 'ansGrpNonMODForYes'}),
            (qiSectorForYes)-[:HAS_ANSWER_GROUP]->(ansGrpNonMODForYes),
            (ansGrpNonMODForYes)-[:HAS_ANSWER {order: 2}]->(ansNonMOD),
            (ansGrpNonMODForYes)-[:HAS_OUTCOME]->(qiFmFirstQuestion), // SWITCH TREES

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiAdditional)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

    (ansGrpSecurityAndFmServices:AnswerGroup {name: 'ansGrpSecurityAndFmServices'}),
    (qiSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpSecurityAndFmServices),
    (ansGrpSecurityAndFmServices)-[:HAS_ANSWER {order: 4}]->(ansSecurityAndFmServices),
    (ansGrpSecurityAndFmServices)-[:HAS_OUTCOME]->(qiSectorForSecurityAndFmServices:QuestionInstance:Outcome {uuid: '04767fcb-675d-4b21-b93d-260feefd045d'})-[:DEFINED_BY]->(qstnSector),

        (ansGrpMODForSecurityAndFmServices:AnswerGroup {name: 'ansGrpMODForSecurityAndFmServices'}),
        (qiSectorForSecurityAndFmServices)-[:HAS_ANSWER_GROUP]->(ansGrpMODForSecurityAndFmServices),
        (ansGrpMODForSecurityAndFmServices)-[:HAS_ANSWER {order: 1}]->(ansMOD),
        (ansGrpMODForSecurityAndFmServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpNonMODForSecurityAndFmServices:AnswerGroup {name: 'ansGrpNonMODForSecurityAndFmServices'}),
        (qiSectorForSecurityAndFmServices)-[:HAS_ANSWER_GROUP]->(ansGrpNonMODForSecurityAndFmServices),
        (ansGrpNonMODForSecurityAndFmServices)-[:HAS_ANSWER {order: 2}]->(ansNonMOD),
        (ansGrpNonMODForSecurityAndFmServices)-[:HAS_OUTCOME]->(qiFmFirstQuestion), // SWITCH TREES

    (ansGrpSoftwareSecurity:AnswerGroup {name: 'ansGrpSoftwareSecurity'}),
    (qiSecurityService)-[:HAS_ANSWER_GROUP]->(ansGrpSoftwareSecurity),
    (ansGrpSoftwareSecurity)-[:HAS_ANSWER {order: 5}]->(ansSoftwareSecurity),
    (ansGrpSoftwareSecurity)-[:HAS_OUTCOME]->(qiTechProductsFirstQuestion), // SWITCH TREES

(ansGrpHousing:AnswerGroup {name: 'ansGrpHousing'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHousing),
(ansGrpHousing)-[:HAS_ANSWER {order: 2}]->(ansHousing),
(ansGrpHousing)-[:HAS_OUTCOME]->(qiSectorForHousing:QuestionInstance:Outcome {uuid: 'dcb96df8-a1f4-4e4b-93d3-7328b6bce888'})-[:DEFINED_BY]->(qstnSector),

    (ansGrpMODForHousing:AnswerGroup {name: 'ansGrpMODForHousing'}),
    (qiSectorForHousing)-[:HAS_ANSWER_GROUP]->(ansGrpMODForHousing),
    (ansGrpMODForHousing)-[:HAS_ANSWER {order: 1}]->(ansMOD),
    (ansGrpMODForHousing)-[:HAS_OUTCOME]->(qiHousingManagement:QuestionInstance:Outcome {uuid: 'f85bca86-1015-4c59-9960-1d41e339ad53'})-[:DEFINED_BY]->(qstnHousingManagement),
    
        (ansGrpHousingManagement:AnswerGroup {name: 'ansGrpHousingManagement'}),
        (qiHousingManagement)-[:HAS_ANSWER_GROUP]->(ansGrpHousingManagement),
        (ansGrpHousingManagement)-[:HAS_ANSWER {order: 1}]->(ansHousingManagement),
        (ansGrpHousingManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),

        (ansGrpHousingMaintenance:AnswerGroup {name: 'ansGrpHousingMaintenance'}),
        (qiHousingManagement)-[:HAS_ANSWER_GROUP]->(ansGrpHousingMaintenance),
        (ansGrpHousingMaintenance)-[:HAS_ANSWER {order: 2}]->(ansHousingMaintenance),
        (ansGrpHousingMaintenance)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '2b', url: '', type: 'CAT', scale: true}),

    (ansGrpNonMODForHousing:AnswerGroup {name: 'ansGrpNonMODForHousing'}),
    (qiSectorForHousing)-[:HAS_ANSWER_GROUP]->(ansGrpNonMODForHousing),
    (ansGrpNonMODForHousing)-[:HAS_ANSWER {order: 2}]->(ansNonMOD),
    (ansGrpNonMODForHousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '2c', url: '', type: 'CAT', scale: true}),

(ansGrpFacilitiesManagement:AnswerGroup {name: 'ansGrpFacilitiesManagement'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_ANSWER {order: 3}]->(ansFacilitiesManagement),
(ansGrpFacilitiesManagement)-[:HAS_OUTCOME]->(qiSectorForFacilitiesManagement:QuestionInstance:Outcome {uuid: '0df0d3c9-a554-4c6a-a15e-069e9dade55b'})-[:DEFINED_BY]->(qstnSector),

    (ansGrpMODForFacilitiesManagement:AnswerGroup {name: 'ansGrpMODForFacilitiesManagement'}),
    (qiSectorForFacilitiesManagement)-[:HAS_ANSWER_GROUP]->(ansGrpMODForFacilitiesManagement),
    (ansGrpMODForFacilitiesManagement)-[:HAS_ANSWER {order: 1}]->(ansMOD),
    (ansGrpMODForFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6155'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
    (ansGrpMODForFacilitiesManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpNonMODForFacilitiesManagement:AnswerGroup {name: 'ansGrpNonMODForFacilitiesManagement'}),
    (qiSectorForFacilitiesManagement)-[:HAS_ANSWER_GROUP]->(ansGrpNonMODForFacilitiesManagement),
    (ansGrpNonMODForFacilitiesManagement)-[:HAS_ANSWER {order: 2}]->(ansNonMOD),
    (ansGrpNonMODForFacilitiesManagement)-[:HAS_OUTCOME]->(qiFmFirstQuestion), // SWITCH TREES

(ansGrpCleaning:AnswerGroup {name: 'ansGrpCleaning'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCleaning),
(ansGrpCleaning)-[:HAS_ANSWER {order: 4}]->(ansCleaning),
(ansGrpCleaning)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6130'});