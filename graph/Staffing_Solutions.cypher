MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})


CREATE
// Questions
(qstnFirstQ:Question {uuid: 'e31f5ed9-edb5-4c28-a098-797b337d051a', text: 'What type of staffing solution do you need?', type: 'LIST'}),

(qstnRole:Question {uuid: '75f79f71-3e63-4806-81f6-73229bad44da', text: 'What role do you need?', type: 'LIST'}),

(qstnSector:Question {uuid: 'd1e5e177-c479-4831-bc9d-dffcb6d085f8', text: 'What sector are your hiring for?', type: 'LIST'}),

(qstnInternalGovernanceForCa:Question {uuid: '01b61a5b-c518-4079-b0fc-80b34937fb9e', text: 'Does your organisation\'s internal governance define the commercial agreement you can use?', type: 'LIST'}),

(qstnCa:Question {uuid: 'd277c0fa-2563-4639-a097-29bbad3df0a4', text: 'Which commercial agreement do you need?', type: 'LIST'}),

// Answer
(ansPermanentStaffing:Answer {uuid: '8bebc3ff-5be7-47d2-881f-8e950989f0ff', text: 'Permanent staffing', hint: 'Employ permanent staff in the UK and internationally. Also provides access to recruitment solutions including talent mapping'}),
(ansFixedTerm:Answer {uuid: '8203b0e5-fdd8-41e8-b52e-5cec70aecc31', text: 'Fixed term', hint: 'Employ a range of temporary and fixed term, non clinical roles from admin and clerical to catering and maintenance'}),
(ansAgency:Answer {uuid: '329601c9-a0b2-4453-a06b-671f4fc69154', text: 'Agency', hint: 'Employ temporary workers in a range of roles including:
<ul>
<li>clinical and non-clinical roles such as GPs, dentists, admin staff and caterers</li>
<li>teachers and educational support staff</li>
</ul>'}),
(ansManagedStaffAndFlexible:Answer {uuid: 'a1aced17-7e26-471d-9b88-721ae98aa1f1', text: 'Managed staff bank and flexible resource pool services', hint: 'Access services to help you manage your workforce using staff banks. A staff bank refers to workers who provide flexible support for planned and unplanned gaps in staffing such as covering holiday or sick leave. Includes services to help you:
<ul>
<li>create and manage new staff banks</li>
<li>take over the running and management of an existing staff bank</li>
<li>manage the use of agency workers when the staff bank cannot fill staffing gaps</li>
<li>understand and analyse your current workforce demands</li>
</ul>'}),


(ansNationalAndRegional:Answer {uuid: '211ea4bd-deea-4e42-b826-07c1ffa01913', text: 'National and Regional Recruitment', hint: 'Fill permanent, fixed term and internal secondment roles with quality candidates in the UK. Internal secondment is the temporary transfer of an employee to work in another part of the organisation. Services provided includes: general recruitment, executive recruitment and talent mapping'}),
(ansInternationalHeathcare:Answer {uuid: 'aa582db8-91d0-4cd9-a34e-cd212d7ccece', text: 'International heathcare', hint: 'Access international recruitment for all clinical healthcare roles'}),

(ansClericalRoles:Answer {uuid: 'f8021db0-01fe-491d-aef0-ab8f89949a53', text: 'Clerical roles', hint: 'Includes office administrators and secretaries'}),
(ansCorporateRoles:Answer {uuid: '42af2bb2-cd9e-422a-90dd-ecced7ab26cb', text: 'Corporate roles', hint: 'Finance, accounts and audit roles. Also includes roles in human resources and project management'}),
(ansItProfessionals:Answer {uuid: '060a42d6-3486-41db-83fd-028208e84f93', text: 'IT Professionals', hint: 'Information technology (IT) professionals including:
<ul>
<li>IT technicians who can provide computer and network support services such as installing software</li>
<li>analysts</li>
<li>technical engineer specialists</li>
</ul>'}),
(ansLegalRoles:Answer {uuid: '560b5fcc-35ec-463c-8f73-a36d768aa299', text: 'Legal roles', hint: 'Includes legal secretaries, paralegals and lawyers'}),
(ansClinicalCodingRoles:Answer {uuid: 'dc198249-c78c-4d25-bf5f-f28c0d590dc3', text: 'Clinical coding roles', hint: 'Clinical coders who analyse medical notes and records and translate them into a alphanumeric code containg letters and numbers. Includes:
<ul>
<li>entry and higher level coding officers</li>
<li>health record secretaries</li>
</ul>'}),
(ansAncillaryStaff:Answer {uuid: 'dc128d94-cc2c-4780-ab8d-6eb410e9e5de', text: 'Ancillary staff', hint: 'Specialist staff including:
<ul>
<li>caterers</li>
<li>drivers</li>
<li>security roles</li>
<li>estate and maintenance roles such as electricians and surveyors</li>
<li>environmental and scientific roles such as senior assistant scientists</li>
</ul>'}),

(ansClinicalAndHealthcare:Answer {uuid: '63a8228e-7ac7-451c-8de7-b0562f599de3', text: 'Clinical and healthcare', hint: 'All clinical and healthcare roles. Includes GPs, dentists, doctors, nurses, midwives and social workers'}),
(ansNonClinicalStaff:Answer {uuid: '037b8f7c-9466-42df-a707-4e36b9ea52e5', text: 'Non-clinical staff', hint: 'A range of temporary roles from admin and clerical to catering and maintenance'}),
(ansEducationAndAncillaryStaff:Answer {uuid: 'eff421c8-f714-4798-8bdd-0b93b5b7b14f', text: 'Education and ancillary staff', hint: 'All temporary and fixed-term teaching and non-teaching staff. Includes:
<ul>
<li>qualified and non qualified teachers</li>
<li>special education needs (SEN) teachers</li>
<li>educational support staff</li>
<li>headteachers and senior leaders</li>
<li>admin staff</li>
<li>caterers and cleaners</li>
</ul>'}),


(ansGeneralRecruitment:Answer {uuid: 'cd5e8d09-960e-43fb-9f76-ac256d9dcead', text: 'General recruitment', hint: 'Find and hire candidates for a specific position or job. Includes administrative, finance, corporate and project delivery roles'}),
(ansExecutiveRecruitment:Answer {uuid: 'c6f10833-d1a4-465a-9e73-63ad2d88264b', text: 'Executive recruitment', hint: 'Find and hire highly skilled candidates for senior management roles. Includes digital, data and technical executives and chief executive and marketing officers'}),
(ansTalentMapping:Answer {uuid: 'bb8d3554-1548-4807-982d-859da3d0a050', text: 'Talent mapping', hint: 'A research service to help you plan for long-term hiring needs. Talent mapping allows you to assess recruitment gaps and ensure your organisation has the right people and skills in the right roles'}),

(ansAdministrativeAndOperational:Answer {uuid: 'ae6b13a6-1335-4774-a7c2-032a02db2942', text: 'Administrative and operational', hint: 'Includes office administrators, receptionists and personal assistants. Also includes roles such as chefs, catering assistants and drivers'}),
(ansDDaT:Answer {uuid: '70ba17ec-88b6-45cb-b178-04dc2a56d3b7', text: 'Digital, data and Technology (DDaT)', hint: 'Job roles within digital testing and product delivery. Includes user centred designers, data technicians and IT professionals'}),
(ansCorporate:Answer {uuid: 'd024bd38-aa5d-4caa-a0f2-a12403d8affa', text: 'Corporate', hint: 'Includes roles in human resources and marketing communications. Also includes legal roles such as legal secretaries and lawyers'}),
(ansFinance:Answer {uuid: '52af01ac-adc7-4bce-9c4f-893c884b3b45', text: 'Finance', hint: 'Finance, accounting and auditing roles'}),
(ansProjectDelivery:Answer {uuid: '662e0cf4-d16e-4470-83c1-26954a1c5970', text: 'Project delivery', hint: 'Includes roles to help you plan, manage and achieve business projects such as  project managers'}),
(ansExecutiveDDaT:Answer {uuid: 'd30b17f2-41ff-4233-9211-091386442bdd', text: 'Executive search digital, data and technology (DDaT)', hint: 'Executive roles within digital testing and product delivery. Includes digital, data and technical executives'}),
(ansExecutiveSearch:Answer {uuid: '2f653660-dd37-415e-9b74-f31b56a82417', text: 'Executive search', hint: 'Director and senior management positions such as:
<ul>
<li>Chief Executive Officer (CEO)</li>
<li>Chief Information Officer (CIO)</li>
<li>Chief Marketing Officer (CMO)</li>
</ul>'}),

(ansSingleStaffGroups:Answer {uuid: 'dd03b9a0-e919-4bba-b32d-980a37522f67', text: 'Single staff groups', hint: 'Hire specific specialist healthcare staff for example: medical and dental staff, nursing, midwifery and social workers'}),
(ansMultiStaffGroups:Answer {uuid: 'e777ca97-a671-41d7-bfb9-441313e6314e', text: 'Multi staff groups', hint: 'Hire multiple members of staff to work towards a shared goal. Each member of staff will have different skills that complement each other'}),

(ansNursingMidwiferySocialWorkers:Answer {uuid: '9d4dc57b-c9eb-4c8a-8602-2caba582d733', text: 'Nursing, midwifery and social workers', hint: 'Nurses at all professional grades including midwives and social workers'}),
(ansMedicalAndDentalStaff:Answer {uuid: '4ef44897-2322-4024-8645-e6489599bbbb', text: 'Medical and dental staff', hint: 'GPs, dentists, doctors, consultants and all specialist roles'}),
(ansOtherStaff:Answer {uuid: '24f81715-666a-4ff2-8a91-128d2128a553', text: 'Other staff', hint: 'Clinical administrative staff, clinical practitioners, support service workers and professional managers'}),

(ansNursingMidwifery:Answer {uuid: 'ee0820b6-2c4e-4911-a1dc-bc0ae0a97cba', text: 'Nursing and midwifery', hint: 'Nurses at all professional grades including dental nurses, health visitors and midwives'}),
(ansMedicalAndDental:Answer {uuid: 'ac74c525-ec5c-4be8-8b6b-831d1a86cbec', text: 'Medical and dental staff', hint: 'GPs, dentists, doctors, consultants and all specialist roles'}),
(ansAhpAndHss:Answer {uuid: '38c43a52-abc4-4faf-b1a1-82928a7b1613', text: 'Allied health professionals and health science services', hint: 'Professionals who can provide a range of diagnostic, technical and therapeutic support services. Includes:
<ul>
<li>occupational therapists</li>
<li>speech and language therapists</li>
<li>physiotherapists</li>
<li>optometrists (qualified eye care professionals)</li>
<li>cancer screening roles</li>
<li>pharmacy workers</li>
</ul>'}),
(ansEmergencyServices:Answer {uuid: '814582ba-e061-47f8-bb3c-4c924ef9409c', text: 'Emergency services', hint: 'All roles relating to ambulance services including:
<ul>
<li>paramedics</li>
<li>emergency call handlers and dispatchers</li>
<li>ambulance drivers</li>
</ul>'}),
(ansSocialCare:Answer {uuid: 'cc28045d-1fba-421e-aaff-f88ad0e8df13', text: 'Social care', hint: 'All social care roles including:
<ul>
<li>home care assistants</li>
<li>residential care home staff</li>
<li>social workers</li>
</ul>'}),
(ansNeutralVendor:Answer {uuid: '5532ab9f-f220-41cc-92b1-72b18a922fb5', text: 'Neutral vendor', hint: 'Employ temporary clinical and healthcare staff using a neutral vendor. These are independent advisors with no conflicts of interest. They can help you to make recruitment decisions based only on the needs of your organisation and have no affiliation to any recruitment agency'}),


(ansNHS:Answer {uuid: 'eadcbbb4-c7cd-4c59-a98e-be4db5db973c', text: 'NHS'}),
(ansAllOtherSectors:Answer {uuid: 'e252ced0-be95-4a23-9999-acf43a536df5', text: 'All other sectors', hint: 'Includes all public and third sector organisations'}),

(ansYes:Answer {uuid: '3ef9f0c3-851a-451a-be59-ceada5230261', text: 'Yes', hint: 'My organisation\'s internal governance defines the commercial agreement I can use'}),
(ansNo:Answer {uuid: '54ad8d93-68b7-419b-89ad-e4b1e84c65f2', text: 'No', hint: 'My organisation\'s internal governance does not define the commercial agreement I can use'}),

(ansPSR:Answer {uuid: '5ea7751e-9bb6-4809-bd7f-378e13b43601', text: 'Public sector resourcing (PSR)', hint: 'Hire contractors and temporary workers for all public sector organisations. Choose this service if your internal processes define your organisation\'s preferred route to market'}),
(ansNonClinical:Answer {uuid: '3a8bb7f9-352a-4951-9870-9588c120c876', text: 'Non Clinical temporary fixed term staff', hint: 'Hire a range of temporary and fixed-term roles from admin and clerical to catering and maintenance'}),

(ansPreferredSupplierList:Answer {uuid: 'cfc39a28-af05-4177-afda-600a0588dfa0', text: 'Preferred supplier list', hint: 'Employ teachers and educational support staff through a preferred supplier list. The preferred supplier list helps you to find suitable suppliers in your area. You will need to know the type of worker and the contract length you need, then you can contact suitable suppliers directly'}),
(ansMasterVendor:Answer {uuid: '27300a66-be4d-4b5f-9fe4-48ed4d837168', text: 'Master vendor', hint: 'Employ teachers and educational support staff through a master vendor. Master vendors will supply candidates to fill a staffing need from their own resource pool. If they can\'t provide a candidate they will find a supplier in their approved supply chain who can'}),





// Tree Structure
(jrnyStaffingSolutions:Journey {uuid: 'af8c0448-8ddc-4c9b-9d36-7ba8573f22bf', name: 'Staffing Solutions'}),
(jrnyStaffingSolutions)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '18a54ea4-86d8-4b24-8c51-f828a4d14259'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpPermanentStaffing:AnswerGroup {name: 'ansGrpPermanentStaffing'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPermanentStaffing),
(ansGrpPermanentStaffing)-[:HAS_ANSWER {order: 1}]->(ansPermanentStaffing),
(ansGrpPermanentStaffing)-[:HAS_OUTCOME]->(qiServiceForPermanentStaffing:QuestionInstance:Outcome {uuid: '0dd0c4c4-bfd5-4824-a98b-61d4ee398944'})-[:DEFINED_BY]->(qstnService),

    (ansGrpNationalAndRegional:AnswerGroup {name: 'ansGrpNationalAndRegional'}),
    (qiServiceForPermanentStaffing)-[:HAS_ANSWER_GROUP]->(ansGrpNationalAndRegional),
    (ansGrpNationalAndRegional)-[:HAS_ANSWER {order: 1}]->(ansNationalAndRegional),
    (ansGrpNationalAndRegional)-[:HAS_OUTCOME]->(qiServiceForNationalAndRegional:QuestionInstance:Outcome {uuid: 'ca06188c-0f34-40b3-a29f-de68cb2477a3'})-[:DEFINED_BY]->(qstnService),

        (ansGrpGeneralRecruitment:AnswerGroup {name: 'ansGrpGeneralRecruitment'}),
        (qiServiceForNationalAndRegional)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralRecruitment),
        (ansGrpGeneralRecruitment)-[:HAS_ANSWER {order: 1}]->(ansGeneralRecruitment),
        (ansGrpGeneralRecruitment)-[:HAS_OUTCOME]->(qiRoleForGeneralRecruitment:QuestionInstance:Outcome {uuid: 'aafa1f74-5a6e-49d0-a050-4d73f027f0f3'})-[:DEFINED_BY]->(qstnRole),

            (ansGrpAdministrativeAndOperational:AnswerGroup {name: 'ansGrpAdministrativeAndOperational'}),
            (qiRoleForGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpAdministrativeAndOperational),
            (ansGrpAdministrativeAndOperational)-[:HAS_ANSWER {order: 1}]->(ansAdministrativeAndOperational),
            (ansGrpAdministrativeAndOperational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpDDaT:AnswerGroup {name: 'ansGrpDDaT'}),
            (qiRoleForGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpDDaT),
            (ansGrpDDaT)-[:HAS_ANSWER {order: 2}]->(ansDDaT),
            (ansGrpDDaT)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpCorporate:AnswerGroup {name: 'ansGrpCorporate'}),
            (qiRoleForGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpCorporate),
            (ansGrpCorporate)-[:HAS_ANSWER {order: 3}]->(ansCorporate),
            (ansGrpCorporate)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpFinance:AnswerGroup {name: 'ansGrpFinance'}),
            (qiRoleForGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpFinance),
            (ansGrpFinance)-[:HAS_ANSWER {order: 4}]->(ansFinance),
            (ansGrpFinance)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

            (ansGrpProjectDelivery:AnswerGroup {name: 'ansGrpProjectDelivery'}),
            (qiRoleForGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpProjectDelivery),
            (ansGrpProjectDelivery)-[:HAS_ANSWER {order: 5}]->(ansProjectDelivery),
            (ansGrpProjectDelivery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        (ansGrpExecutiveRecruitment:AnswerGroup {name: 'ansGrpExecutiveRecruitment'}),
        (qiServiceForNationalAndRegional)-[:HAS_ANSWER_GROUP]->(ansGrpExecutiveRecruitment),
        (ansGrpExecutiveRecruitment)-[:HAS_ANSWER {order: 2}]->(ansExecutiveRecruitment),
        (ansGrpExecutiveRecruitment)-[:HAS_OUTCOME]->(qiRoleForExecutiveRecruitment:QuestionInstance:Outcome {uuid: 'ff5f2a28-bcf1-4ba9-a5d9-582ddffa2b85'})-[:DEFINED_BY]->(qstnRole),

            (ansGrpExecutiveSearch:AnswerGroup {name: 'ansGrpExecutiveSearch'}),
            (qiRoleForExecutiveRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpExecutiveSearch),
            (ansGrpExecutiveSearch)-[:HAS_ANSWER {order: 1}]->(ansExecutiveSearch),
            (ansGrpExecutiveSearch)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

            (ansGrpExecutiveDDaT:AnswerGroup {name: 'ansGrpExecutiveDDaT'}),
            (qiRoleForExecutiveRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpExecutiveDDaT),
            (ansGrpExecutiveDDaT)-[:HAS_ANSWER {order: 2}]->(ansExecutiveDDaT),
            (ansGrpExecutiveDDaT)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
           
        (ansGrpTalentMapping:AnswerGroup {name: 'ansGrpTalentMapping'}),
        (qiServiceForNationalAndRegional)-[:HAS_ANSWER_GROUP]->(ansGrpTalentMapping),
        (ansGrpTalentMapping)-[:HAS_ANSWER {order: 3}]->(ansTalentMapping),
        (ansGrpTalentMapping)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

    (ansGrpInternationalHeathcare:AnswerGroup {name: 'ansGrpInternationalHeathcare'}),
    (qiServiceForPermanentStaffing)-[:HAS_ANSWER_GROUP]->(ansGrpInternationalHeathcare),
    (ansGrpInternationalHeathcare)-[:HAS_ANSWER {order: 2}]->(ansInternationalHeathcare),
    (ansGrpInternationalHeathcare)-[:HAS_OUTCOME]->(qiServiceForInternationalHeathcare:QuestionInstance:Outcome {uuid: '9ed7fed1-d8cd-4f70-bd79-addcd0dabf85'})-[:DEFINED_BY]->(qstnService),

        (ansGrpSingleStaffGroups:AnswerGroup {name: 'ansGrpSingleStaffGroups'}),
        (qiServiceForInternationalHeathcare)-[:HAS_ANSWER_GROUP]->(ansGrpSingleStaffGroups),
        (ansGrpSingleStaffGroups)-[:HAS_ANSWER {order: 1}]->(ansSingleStaffGroups),
        (ansGrpSingleStaffGroups)-[:HAS_OUTCOME]->(qiRoleForSingleStaffGroups:QuestionInstance:Outcome {uuid: '03d3cdf1-4a60-494b-84f6-e301b69749d4'})-[:DEFINED_BY]->(qstnRole),

            (ansGrpNursingMidwiferySocialWorkers:AnswerGroup {name: 'ansGrpNursingMidwiferySocialWorkers'}),
            (qiRoleForSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpNursingMidwiferySocialWorkers),
            (ansGrpNursingMidwiferySocialWorkers)-[:HAS_ANSWER {order: 1}]->(ansNursingMidwiferySocialWorkers),
            (ansGrpNursingMidwiferySocialWorkers)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

            (ansGrpMedicalAndDentalStaff:AnswerGroup {name: 'ansGrpMedicalAndDentalStaff'}),
            (qiRoleForSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpMedicalAndDentalStaff),
            (ansGrpMedicalAndDentalStaff)-[:HAS_ANSWER {order: 2}]->(ansMedicalAndDentalStaff),
            (ansGrpMedicalAndDentalStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

            (ansGrpOtherStaff:AnswerGroup {name: 'ansGrpOtherStaff'}),
            (qiRoleForSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpOtherStaff),
            (ansGrpOtherStaff)-[:HAS_ANSWER {order: 3}]->(ansOtherStaff),
            (ansGrpOtherStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

        (ansGrpMultiStaffGroups:AnswerGroup {name: 'ansGrpMultiStaffGroups'}),
        (qiServiceForInternationalHeathcare)-[:HAS_ANSWER_GROUP]->(ansGrpMultiStaffGroups),
        (ansGrpMultiStaffGroups)-[:HAS_ANSWER {order: 2}]->(ansMultiStaffGroups),
        (ansGrpMultiStaffGroups)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpFixedTerm:AnswerGroup {name: 'ansGrpFixedTerm'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFixedTerm),
(ansGrpFixedTerm)-[:HAS_ANSWER {order: 2}]->(ansFixedTerm),
(ansGrpFixedTerm)-[:HAS_OUTCOME]->(qiRoleForFixedTerm:QuestionInstance:Outcome {uuid: 'f1f96344-b7d7-47ba-b2f1-af369e65a6c0'})-[:DEFINED_BY]->(qstnRole),

    (ansGrpClericalRoles:AnswerGroup {name: 'ansGrpClericalRoles'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpClericalRoles),
    (ansGrpClericalRoles)-[:HAS_ANSWER {order: 1}]->(ansClericalRoles),
    (ansGrpClericalRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpCorporateRoles:AnswerGroup {name: 'ansGrpCorporateRoles'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpCorporateRoles),
    (ansGrpCorporateRoles)-[:HAS_ANSWER {order: 2}]->(ansCorporateRoles),
    (ansGrpCorporateRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpItProfessionals:AnswerGroup {name: 'ansGrpItProfessionals'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpItProfessionals),
    (ansGrpItProfessionals)-[:HAS_ANSWER {order: 3}]->(ansItProfessionals),
    (ansGrpItProfessionals)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpLegalRoles:AnswerGroup {name: 'ansGrpLegalRoles'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpLegalRoles),
    (ansGrpLegalRoles)-[:HAS_ANSWER {order: 4}]->(ansLegalRoles),
    (ansGrpLegalRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpClinicalCodingRoles:AnswerGroup {name: 'ansGrpClinicalCodingRoles'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalCodingRoles),
    (ansGrpClinicalCodingRoles)-[:HAS_ANSWER {order: 5}]->(ansClinicalCodingRoles),
    (ansGrpClinicalCodingRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpAncillaryStaff:AnswerGroup {name: 'ansGrpAncillaryStaff'}),
    (qiRoleForFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaff),
    (ansGrpAncillaryStaff)-[:HAS_ANSWER {order: 6}]->(ansAncillaryStaff),
    (ansGrpAncillaryStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

(ansGrpAgency:AnswerGroup {name: 'ansGrpAgency'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpAgency),
(ansGrpAgency)-[:HAS_ANSWER {order: 3}]->(ansAgency),
(ansGrpAgency)-[:HAS_OUTCOME]->(qiRoleForAgency:QuestionInstance:Outcome {uuid: 'aab040e6-ca24-44cd-8c3a-728e889936cc'})-[:DEFINED_BY]->(qstnRole),

    (ansGrpClinicalAndHealthcare:AnswerGroup {name: 'ansGrpClinicalAndHealthcare'}),
    (qiRoleForAgency)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalAndHealthcare),
    (ansGrpClinicalAndHealthcare)-[:HAS_ANSWER {order: 1}]->(ansClinicalAndHealthcare),
    (ansGrpClinicalAndHealthcare)-[:HAS_OUTCOME]->(qiRoleForClinicalAndHealthcare:QuestionInstance:Outcome {uuid: 'baa082ba-52ea-464f-8ddd-eb63a4354958'})-[:DEFINED_BY]->(qstnRole),

        (ansGrpNursingMidwiferyForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpNursingMidwiferyForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpNursingMidwiferyForClinicalAndHealthcare),
        (ansGrpNursingMidwiferyForClinicalAndHealthcare)-[:HAS_ANSWER {order: 1}]->(ansNursingMidwifery),
        (ansGrpNursingMidwiferyForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpMedicalAndDentalForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpMedicalAndDentalForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpMedicalAndDentalForClinicalAndHealthcare),
        (ansGrpMedicalAndDentalForClinicalAndHealthcare)-[:HAS_ANSWER {order: 2}]->(ansMedicalAndDental),
        (ansGrpMedicalAndDentalForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpAhpAndHssForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpAhpAndHssForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpAhpAndHssForClinicalAndHealthcare),
        (ansGrpAhpAndHssForClinicalAndHealthcare)-[:HAS_ANSWER {order: 3}]->(ansAhpAndHss),
        (ansGrpAhpAndHssForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpEmergencyServicesForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpEmergencyServicesForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpEmergencyServicesForClinicalAndHealthcare),
        (ansGrpEmergencyServicesForClinicalAndHealthcare)-[:HAS_ANSWER {order: 4}]->(ansEmergencyServices),
        (ansGrpEmergencyServicesForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpSocialCareForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpSocialCareForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpSocialCareForClinicalAndHealthcare),
        (ansGrpSocialCareForClinicalAndHealthcare)-[:HAS_ANSWER {order: 5}]->(ansSocialCare),
        (ansGrpSocialCareForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        (ansGrpNeutralVendorForClinicalAndHealthcare:AnswerGroup {name: 'ansGrpNeutralVendorForClinicalAndHealthcare'}),
        (qiRoleForClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpNeutralVendorForClinicalAndHealthcare),
        (ansGrpNeutralVendorForClinicalAndHealthcare)-[:HAS_ANSWER {order: 6}]->(ansNeutralVendor),
        (ansGrpNeutralVendorForClinicalAndHealthcare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpNonClinicalStaff:AnswerGroup {name: 'ansGrpNonClinicalStaff'}),
    (qiRoleForAgency)-[:HAS_ANSWER_GROUP]->(ansGrpNonClinicalStaff),
    (ansGrpNonClinicalStaff)-[:HAS_ANSWER {order: 2}]->(ansNonClinicalStaff),
    (ansGrpNonClinicalStaff)-[:HAS_OUTCOME]->(qiSector:QuestionInstance:Outcome {uuid: 'f565c186-9e6f-4c20-a0ed-6689b87839d4'})-[:DEFINED_BY]->(qstnSector),

        (ansGrpNHS:AnswerGroup {name: 'ansGrpNHS'}),
        (qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpNHS),
        (ansGrpNHS)-[:HAS_ANSWER {order: 1}]->(ansNHS),
        (ansGrpNHS)-[:HAS_OUTCOME]->(qiRoleForNHS:QuestionInstance {uuid: 'e10e4908-d8eb-40f6-a96e-39a51c11bb4f'})-[:DEFINED_BY]->(qstnRole),

            (ansGrpClericalRolesForNHS:AnswerGroup {name: 'ansGrpClericalRolesForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpClericalRolesForNHS),
            (ansGrpClericalRolesForNHS)-[:HAS_ANSWER {order: 1}]->(ansClericalRoles),
            (ansGrpClericalRolesForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpCorporateRolesForNHS:AnswerGroup {name: 'ansGrpCorporateRolesForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpCorporateRolesForNHS),
            (ansGrpCorporateRolesForNHS)-[:HAS_ANSWER {order: 2}]->(ansCorporateRoles),
            (ansGrpCorporateRolesForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpItProfessionalsForNHS:AnswerGroup {name: 'ansGrpItProfessionalsForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpItProfessionalsForNHS),
            (ansGrpItProfessionalsForNHS)-[:HAS_ANSWER {order: 3}]->(ansItProfessionals),
            (ansGrpItProfessionalsForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpLegalRolesForNHS:AnswerGroup {name: 'ansGrpLegalRolesForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpLegalRolesForNHS),
            (ansGrpLegalRolesForNHS)-[:HAS_ANSWER {order: 4}]->(ansLegalRoles),
            (ansGrpLegalRolesForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

            (ansGrpClinicalCodingRolesForNHS:AnswerGroup {name: 'ansGrpClinicalCodingRolesForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalCodingRolesForNHS),
            (ansGrpClinicalCodingRolesForNHS)-[:HAS_ANSWER {order: 5}]->(ansClinicalCodingRoles),
            (ansGrpClinicalCodingRolesForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

            (ansGrpAncillaryStaffRolesForNHS:AnswerGroup {name: 'ansGrpAncillaryStaffRolesForNHS'}),
            (qiRoleForNHS)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaffRolesForNHS),
            (ansGrpAncillaryStaffRolesForNHS)-[:HAS_ANSWER {order: 6}]->(ansAncillaryStaff),
            (ansGrpAncillaryStaffRolesForNHS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpAllOtherSectors:AnswerGroup {name: 'ansGrpAllOtherSectors'}),
        (qiSector)-[:HAS_ANSWER_GROUP]->(ansGrpAllOtherSectors),
        (ansGrpAllOtherSectors)-[:HAS_ANSWER {order: 2}]->(ansAllOtherSectors),
        (ansGrpAllOtherSectors)-[:HAS_OUTCOME]->(qiInternalGovernanceForCa:QuestionInstance:Outcome {uuid: '6f61b89f-3eaf-43be-a340-440dcede1787'})-[:DEFINED_BY]->(qstnInternalGovernanceForCa),

            (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
            (qiInternalGovernanceForCa)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
            (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
            (ansGrpYes)-[:HAS_OUTCOME]->(qiCa:QuestionInstance:Outcome {uuid: 'e86ae520-d86a-414e-9e8d-265375958251'})-[:DEFINED_BY]->(qstnCa),

                (ansGrpPSR:AnswerGroup {name: 'ansGrpPSR'}),
                (qiCa)-[:HAS_ANSWER_GROUP]->(ansGrpPSR),
                (ansGrpPSR)-[:HAS_ANSWER {order: 1}]->(ansPSR),
                (ansGrpPSR)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3749'}),

                (ansGrpNonClinical:AnswerGroup {name: 'ansGrpNonClinical'}),
                (qiCa)-[:HAS_ANSWER_GROUP]->(ansGrpNonClinical),
                (ansGrpNonClinical)-[:HAS_ANSWER {order: 2}]->(ansNonClinical),
                (ansGrpNonClinical)-[:HAS_OUTCOME]->(qiRoleForNonClinical:QuestionInstance {uuid: 'd76e6c1a-ab79-4c62-bdb7-237f5dc1d84b'})-[:DEFINED_BY]->(qstnRole),
                    
                    (ansGrpClericalRolesForNonClinical:AnswerGroup {name: 'ansGrpClericalRolesForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpClericalRolesForNonClinical),
                    (ansGrpClericalRolesForNonClinical)-[:HAS_ANSWER {order: 1}]->(ansClericalRoles),
                    (ansGrpClericalRolesForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

                    (ansGrpCorporateRolesForNonClinical:AnswerGroup {name: 'ansGrpCorporateRolesForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpCorporateRolesForNonClinical),
                    (ansGrpCorporateRolesForNonClinical)-[:HAS_ANSWER {order: 2}]->(ansCorporateRoles),
                    (ansGrpCorporateRolesForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

                    (ansGrpItProfessionalsForNonClinical:AnswerGroup {name: 'ansGrpItProfessionalsForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpItProfessionalsForNonClinical),
                    (ansGrpItProfessionalsForNonClinical)-[:HAS_ANSWER {order: 3}]->(ansItProfessionals),
                    (ansGrpItProfessionalsForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

                    (ansGrpLegalRolesForNonClinical:AnswerGroup {name: 'ansGrpLegalRolesForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpLegalRolesForNonClinical),
                    (ansGrpLegalRolesForNonClinical)-[:HAS_ANSWER {order: 4}]->(ansLegalRoles),
                    (ansGrpLegalRolesForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

                    (ansGrpClinicalCodingRolesForNonClinical:AnswerGroup {name: 'ansGrpClinicalCodingRolesForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalCodingRolesForNonClinical),
                    (ansGrpClinicalCodingRolesForNonClinical)-[:HAS_ANSWER {order: 5}]->(ansClinicalCodingRoles),
                    (ansGrpClinicalCodingRolesForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

                    (ansGrpAncillaryStaffRolesForNonClinical:AnswerGroup {name: 'ansGrpAncillaryStaffRolesForNonClinical'}),
                    (qiRoleForNonClinical)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaffRolesForNonClinical),
                    (ansGrpAncillaryStaffRolesForNonClinical)-[:HAS_ANSWER {order: 6}]->(ansAncillaryStaff),
                    (ansGrpAncillaryStaffRolesForNonClinical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
            
            (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
            (qiInternalGovernanceForCa)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
            (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
            (ansGrpNo)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    (ansGrpEducationAndAncillaryStaff:AnswerGroup {name: 'ansGrpEducationAndAncillaryStaff'}),
    (qiRoleForAgency)-[:HAS_ANSWER_GROUP]->(ansGrpEducationAndAncillaryStaff),
    (ansGrpEducationAndAncillaryStaff)-[:HAS_ANSWER {order: 3}]->(ansEducationAndAncillaryStaff),
    (ansGrpEducationAndAncillaryStaff)-[:HAS_OUTCOME]->(qiServiceForEducationAndAncillaryStaff:QuestionInstance:Outcome {uuid: 'af863b73-515f-481b-8c36-c621bd32cde0'})-[:DEFINED_BY]->(qstnService),

        (ansGrpPreferredSupplierList:AnswerGroup {name: 'ansGrpPreferredSupplierList'}),
        (qiServiceForEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpPreferredSupplierList),
        (ansGrpPreferredSupplierList)-[:HAS_ANSWER {order: 1}]->(ansPreferredSupplierList),
        (ansGrpPreferredSupplierList)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3826'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpMasterVendor:AnswerGroup {name: 'ansGrpMasterVendor'}),
        (qiServiceForEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpMasterVendor),
        (ansGrpMasterVendor)-[:HAS_ANSWER {order: 2}]->(ansMasterVendor),
        (ansGrpMasterVendor)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3826'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpAncillaryStaffForEducationAndAncillaryStaff:AnswerGroup {name: 'ansGrpAncillaryStaffForEducationAndAncillaryStaff'}),
        (qiServiceForEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaffForEducationAndAncillaryStaff),
        (ansGrpAncillaryStaffForEducationAndAncillaryStaff)-[:HAS_ANSWER {order: 3}]->(ansAncillaryStaff),
        (ansGrpAncillaryStaffForEducationAndAncillaryStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
    
(ansGrpManagedStaffAndFlexible:AnswerGroup {name: 'ansGrpManagedStaffAndFlexible'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpManagedStaffAndFlexible),
(ansGrpManagedStaffAndFlexible)-[:HAS_ANSWER {order: 4}]->(ansManagedStaffAndFlexible),
(ansGrpManagedStaffAndFlexible)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6158'});
