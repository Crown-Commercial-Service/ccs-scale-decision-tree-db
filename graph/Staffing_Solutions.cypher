MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnBudget:Question {uuid: '6076dccc-cd9b-4bbf-a70e-0fe7b48db1a0'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})


CREATE
// Questions
(qstnFirstQ:Question {uuid: 'e31f5ed9-edb5-4c28-a098-797b337d051a', text: 'What type of staffing solution do you need?', type: 'LIST'}),
(qstnRole:Question {uuid: '75f79f71-3e63-4806-81f6-73229bad44da', text: 'What role do you need?', type: 'LIST'}),
(qstnSector:Question {uuid: 'd1e5e177-c479-4831-bc9d-dffcb6d085f8', text: 'What sector are your hiring for?', type: 'LIST'}),
(qstnCa:Question {uuid: 'd277c0fa-2563-4639-a097-29bbad3df0a4', text: 'Which commercial agreement do you need?', type: 'LIST'}),
(qstnGeneralRecruitment:Question {uuid: '63ae642e-0d9d-4ae4-9097-f262a326aad7', text: 'What general recruitment role do you need?', type: 'LIST'}),
(qstnGrades:Question {uuid: 'ccdbb7a1-0f88-4376-9b33-903ab13cff14', text: 'What grades do you need to hire?', type: 'LIST'}),
(qstnInternals:Question {uuid: 'f6d7b3e7-042a-4d21-ba88-eddb9a57b037', text: 'Does your organisation\'s internal governance define the commercial agreement you can use?', type: 'LIST'}),

// Answer
(ansPermanentStaffing:Answer {
    uuid: '8bebc3ff-5be7-47d2-881f-8e950989f0ff', 
    text: 'Permanent staffing', 
    hint: 'Employ permanent staff in the UK and internationally. Also provides access to recruitment solutions including talent mapping'
}),

(ansFixedTerm:Answer {
    uuid: '8203b0e5-fdd8-41e8-b52e-5cec70aecc31', 
    text: 'Fixed term', hint: 'Employ a range of temporary and fixed term, non clinical roles from admin and clerical to catering and maintenance'
}),

(ansAgency:Answer {
    uuid: '329601c9-a0b2-4453-a06b-671f4fc69154', 
    text: 'Agency', hint: 'Employ temporary workers in a range of roles including:
    <ul>
        <li>clinical and non-clinical roles such as GPs, dentists, admin staff and caterers</li>
        <li>teachers and educational support staff</li>
    </ul>'
}),

(ansManagedStaffAndFlexible:Answer {
    uuid: 'a1aced17-7e26-471d-9b88-721ae98aa1f1', 
    text: 'Managed staff bank and flexible resource pool services', 
    hint: 'Access services to help you manage your workforce using staff banks. A staff bank refers to workers who provide flexible support for planned and unplanned gaps in staffing such as covering holiday or sick leave. Includes services to help you:
    <ul>
        <li>create and manage new staff banks</li>
        <li>take over the running and management of an existing staff bank</li>
        <li>manage the use of agency workers when the staff bank cannot fill staffing gaps</li>
        <li>understand and analyse your current workforce demands</li>
    </ul>'
}),

(ansNationalAndRegional:Answer {
    uuid: '211ea4bd-deea-4e42-b826-07c1ffa01913', 
    text: 'National and Regional Recruitment', 
    hint: 'Fill permanent, fixed term and internal secondment roles with quality candidates in the UK. Internal secondment is the temporary transfer of an employee to work in another part of the organisation. Services provided includes: general recruitment, executive recruitment and talent mapping'
}),

(ansInternationalHeathcare:Answer {
    uuid: 'aa582db8-91d0-4cd9-a34e-cd212d7ccece', 
    text: 'International heathcare', 
    hint: 'Access international recruitment for all clinical healthcare roles'
}),

(ansGeneralRecruitment:Answer {
    uuid: 'cd5e8d09-960e-43fb-9f76-ac256d9dcead', 
    text: 'General recruitment', 
    hint: 'Find and hire candidates for a specific position or job. Roles can be either clinical or non-clinical. Aligned to Civil Service Professions and available on a regional or nationwide basis'
}),

(ansExecutiveRecruitment:Answer {
    uuid: 'c6f10833-d1a4-465a-9e73-63ad2d88264b', 
    text: 'Executive recruitment', 
    hint: 'Find and hire highly skilled candidates for senior management roles as well as Public Appointments and Non Executive Directors. Aligned to Civil Service Professions and available on a regional or nationwide basis'
}),

(ansClinicalRecruitment:Answer {
    uuid: '386699a9-85b4-4275-8e9e-13dba79a05fd',
    text: 'Clinical recruitment of delegated roles to clinical positions ',
    hint: 'Find and hire staff for clinical positions including:
    <ul>
        <li>clinical and social care (such as social care, nursing and midwifery, medical and dental)</li>
        <li>NHS grades 1 to 9 and medical bands FY1 and FY2 or equivalent</li>
        <li>core medical training</li>
        <li>dental core training</li>
        <li>speciality doctor</li>
        <li>associate specialist</li>
        <li>consultant and equivalents</li>
    </ul>'
}),

(ansNonClinicalRecruitment:Answer {
    uuid: '70795c3c-1aba-4b31-907e-06254d08aa32',
    text: 'Non-clinical recruitment of delegated roles to non-clinical positions',
    hint: 'Find and hire staff for non-clinical positions including:
    <ul>
        <li>admin assistants (AA)</li>
        <li>Admin officer (AO)</li>
        <li>Executive officer (EO)</li>
        <li>Higher executive office (HEO)</li>
        <li>Senior executive office (SEO)</li>
        <li>grade 7 and equivalents</li>
        <li>grade 6 and equivalents</li>
        <li>NHS grades: bands 1 to 9, medical bands F1 and F2</li>
        <li>wider public sector roles: assistant director, senior offices and principal officers</li>
    </ul>'
}),

(ansGrade1:Answer {
    uuid: '098a05be-d585-480f-888b-f815a1f0c54a',
    text: 'Hire roles at the following grades',
    hint: '
    <ul>
        <li>grade 6</li>
        <li>senior civil service (SCS) 1</li>
        <li>senior civil service (SCS) 2</li>
        <li>equivalent grades across the public sector</li>
    </ul>'
}),

(ansGrade2:Answer {
    uuid: '475c8d7c-2ad0-4323-ad12-4729c744be69',
    text: 'Hire roles at the following grades',
    hint: '
    <ul>
        <li>senior civil service (SCS) 3</li>
        <li>senior civil service (SCS) 4</li>
        <li>equivalent grades across the public sector</li>
    </ul>'
}),

(ansGrade3:Answer {
    uuid: '9f1f7e8f-df47-4c09-a009-0936d2830fd6',
    text: 'Hire roles at the following grades',
    hint: '
    <ul>
        <li>Public Appointments</li>
        <li>Non-Executive Directors</li>
    </ul>'
}),

(ansSingleStaffGroups:Answer {
    uuid: 'dd03b9a0-e919-4bba-b32d-980a37522f67', 
    text: 'Single staff groups', 
    hint: 'Hire specific specialist healthcare staff for example: medical and dental staff, nursing, midwifery and social workers'
}),

(ansMultiStaffGroups:Answer {
    uuid: 'e777ca97-a671-41d7-bfb9-441313e6314e', 
    text: 'Multi staff groups', 
    hint: 'Hire multiple members of staff to work towards a shared goal. Each member of staff will have different skills that complement each other'
}),

(ansNursingMidwiferySocialWorkers:Answer {
    uuid: '9d4dc57b-c9eb-4c8a-8602-2caba582d733', 
    text: 'Nursing, midwifery and social workers', 
    hint: 'Nurses at all professional grades including midwives and social workers'
}),

(ansMedicalAndDentalStaff:Answer {
    uuid: '4ef44897-2322-4024-8645-e6489599bbbb', 
    text: 'Medical and dental staff', 
    hint: 'GPs, dentists, doctors, consultants and all specialist roles'
}),

(ansOtherStaff:Answer {
    uuid: '24f81715-666a-4ff2-8a91-128d2128a553', 
    text: 'Other staff', 
    hint: 'Clinical administrative staff, clinical practitioners, support service workers and professional managers'
}),

(ansClericalRoles:Answer {
    uuid: 'f8021db0-01fe-491d-aef0-ab8f89949a53', 
    text: 'Clerical roles', 
    hint: 'Includes office administrators and secretaries'
}),

(ansCorporateRoles:Answer {
    uuid: '42af2bb2-cd9e-422a-90dd-ecced7ab26cb', 
    text: 'Corporate roles', 
    hint: 'Finance, accounts and audit roles. Also includes roles in human resources and project management'

}),

(ansItProfessionals:Answer {
    uuid: '060a42d6-3486-41db-83fd-028208e84f93', 
    text: 'IT Professionals', 
    hint: 'Information technology (IT) professionals including:
    <ul>
        <li>IT technicians who can provide computer and network support services such as installing software</li>
        <li>analysts</li>
        <li>technical engineer specialists</li>
    </ul>'
}),

(ansLegalRoles:Answer {
    uuid: '560b5fcc-35ec-463c-8f73-a36d768aa299', 
    text: 'Legal roles', 
    hint: 'Includes legal secretaries, paralegals and lawyers'

}),

(ansClinicalCodingRoles:Answer {
    uuid: 'dc198249-c78c-4d25-bf5f-f28c0d590dc3', 
    text: 'Clinical coding roles', 
    hint: 'Clinical coders who analyse medical notes and records and translate them into a alphanumeric code containg letters and numbers. Includes:
    <ul>
        <li>entry and higher level coding officers</li>
        <li>health record secretaries</li>
    </ul>'
}),

(ansClinicalCodingRolesShort:Answer {
    uuid: '71fd0a4f-e555-444d-8c1c-9d4470801131', 
    text: 'Clinical coding roles', 
    hint: 'Clinical coders including:
    <ul>
        <li>entry and higher level coding officers</li>
        <li>health record secretaries</li>
    </ul>'
}),

(ansAncillaryStaff:Answer {
    uuid: 'dc128d94-cc2c-4780-ab8d-6eb410e9e5de', 
    text: 'Ancillary staff', 
    hint: 'Specialist staff including:
    <ul>
        <li>caterers</li>
        <li>drivers</li>
        <li>security roles</li>
        <li>estate and maintenance roles such as electricians and surveyors</li>
        <li>environmental and scientific roles such as senior assistant scientists</li>
    </ul>'
}),

(ansManagedServiceProvider:Answer {
    uuid: 'b9bd0348-63eb-4d5c-845b-85b60147d56a', 
    text: 'Managed service provider', 
    hint: 'The managed service provider can manage the temporary workforce needs of your whole organisation. The end to end service can include:
    <ul>
        <li>incorporation of the whole worker journey across multiple worker disciplines, worker engagement types and locations</li>
        <li>be a single point of contact for your temporary workforce needs instead of using single or transactional contracting</li>
        <li>direct placement of workers from the prime supplier and supply chain management, including niche or specialist agencies</li>
        <li>centralised worker compliance checking, reporting, consolidated invoicing and workforce planning services</li>
    </ul>'
}),

(ansManagedServiceProviderShort:Answer {
    uuid: 'dee1f8b8-5171-40b2-ae9f-8f9d3e7aa630', 
    text: 'Managed service provider', 
    hint: 'Access a managed service provider who will manage temporary worker recruitment for your organisation. Also includes the end to end management of the contingent/contract workforce'
}),

(ansClinicalAndHealthcare:Answer {
    uuid: '63a8228e-7ac7-451c-8de7-b0562f599de3', 
    text: 'Clinical and healthcare', 
    hint: 'All clinical and healthcare roles. Includes GPs, dentists, doctors, nurses, midwives and social workers'
}),

(ansNonClinicalStaff:Answer {
    uuid: '037b8f7c-9466-42df-a707-4e36b9ea52e5', 
    text: 'Non-clinical staff', 
    hint: 'A range of temporary roles from admin and clerical to catering and maintenance'
}),

(ansEducationAndAncillaryStaff:Answer {
    uuid: 'eff421c8-f714-4798-8bdd-0b93b5b7b14f', 
    text: 'Education and ancillary staff', 
    hint: 'All temporary and fixed-term teaching and non-teaching staff. Includes:
    <ul>
        <li>qualified and non qualified teachers</li>
        <li>special education needs (SEN) teachers</li>
        <li>educational support staff</li>
        <li>headteachers and senior leaders</li>
        <li>admin staff</li>
        <li>caterers and cleaners</li>
    </ul>'
}),

(ansNursingMidwifery:Answer {
    uuid: 'ee0820b6-2c4e-4911-a1dc-bc0ae0a97cba', 
    text: 'Nursing and midwifery', 
    hint: 'Nurses at all professional grades including dental nurses, health visitors and midwives'
}),

(ansMedicalAndDental:Answer {
    uuid: 'ac74c525-ec5c-4be8-8b6b-831d1a86cbec', 
    text: 'Medical and dental staff', 
    hint: 'GPs, dentists, doctors, consultants and all specialist roles'
}),

(ansAhpAndHss:Answer {
    uuid: '38c43a52-abc4-4faf-b1a1-82928a7b1613', 
    text: 'Allied health professionals and health science services', 
    hint: 'Professionals who can provide a range of diagnostic, technical and therapeutic support services. Includes:
    <ul>
        <li>occupational therapists</li>
        <li>speech and language therapists</li>
        <li>physiotherapists</li>
        <li>optometrists (qualified eye care professionals)</li>
        <li>cancer screening roles</li>
        <li>pharmacy workers</li>
    </ul>'
}),

(ansEmergencyServices:Answer {
    uuid: '814582ba-e061-47f8-bb3c-4c924ef9409c', 
    text: 'Emergency services', 
    hint: 'All roles relating to ambulance services including:
    <ul>
        <li>paramedics</li>
        <li>emergency call handlers and dispatchers</li>
        <li>ambulance drivers</li>
    </ul>'
}),

(ansSocialCare:Answer {
    uuid: 'cc28045d-1fba-421e-aaff-f88ad0e8df13', 
    text: 'Social care', 
    hint: 'All social care roles including:
    <ul>
        <li>home care assistants</li>
        <li>residential care home staff</li>
        <li>social workers</li>
    </ul>'
}),

(ansNeutralVendor:Answer {
    uuid: '5532ab9f-f220-41cc-92b1-72b18a922fb5', 
    text: 'Neutral vendor', 
    hint: 'Employ temporary clinical and healthcare staff using a neutral vendor. These are independent advisors with no conflicts of interest. They can help you to make recruitment decisions based only on the needs of your organisation and have no affiliation to any recruitment agency'
}),

(ansNHS:Answer {uuid: 'eadcbbb4-c7cd-4c59-a98e-be4db5db973c', text: 'NHS'}),

(ansAllOtherSectors:Answer {uuid: 'e252ced0-be95-4a23-9999-acf43a536df5', text: 'All other sectors', hint: 'Includes all public and third sector organisations'}),

(ansYes:Answer {uuid: '3ef9f0c3-851a-451a-be59-ceada5230261', text: 'Yes', hint: 'My organisation\'s internal governance defines the commercial agreement I can use'}),

(ansNo:Answer {uuid: '54ad8d93-68b7-419b-89ad-e4b1e84c65f2', text: 'No', hint: 'My organisation\'s internal governance does not define the commercial agreement I can use'}),

(ansPSR:Answer {uuid: '5ea7751e-9bb6-4809-bd7f-378e13b43601', text: 'Public sector resourcing (PSR)', hint: 'Hire contractors and temporary workers for all public sector organisations. Choose this service if your internal processes define your organisation\'s preferred route to market'}),

(ansNonClinical:Answer {uuid: '3a8bb7f9-352a-4951-9870-9588c120c876', text: 'Non Clinical temporary fixed term staff', hint: 'Hire a range of temporary and fixed-term roles from admin and clerical to catering and maintenance'}),


(ansPreferredSupplierList:Answer {uuid: 'cfc39a28-af05-4177-afda-600a0588dfa0', text: 'Preferred supplier list', hint: 'Employ teachers and educational support staff through a preferred supplier list. The preferred supplier list helps you to find suitable suppliers in your area. You will need to know the type of worker and the contract length you need, then you can contact suitable suppliers directly'}),

(ansMasterVendor:Answer {uuid: '27300a66-be4d-4b5f-9fe4-48ed4d837168', text: 'Master vendor', hint: 'Employ teachers and educational support staff through a master vendor. Master vendors will supply candidates to fill a staffing need from their own resource pool. If they can\'t provide a candidate they will find a supplier in their approved supply chain who can'}),

(ansAncillaryStaff2:Answer {
    uuid: '93b7041e-da4e-495f-a462-a6132668135f',
    text: 'Ancillary staff',
    hint: 'Specialist staff including:
    <ul>
        <li>caterers</li>
        <li>cleaners</li>
        <li>drivers</li>
        <li>security roles</li>
        <li>estate and maintenance roles such as electricians and surveyors</li>
        <li>environmental and scientific roles such as senior assistant scientists</li>
    </ul>'
}),

(ansEducationTechnology:Answer { uuid: '96238518-51ee-4578-a973-8ab4aaf46c99', text: 'Education Technology Platform', hint: 'Connects schools and workers directly using a platform or app, without the involvement of a traditional recruitment agency'}),


(ansMillion:Answer {
    uuid: 'c6a563ee-186e-4e59-a4ab-4545a45766ce',
    text: 'Buy staffing needs up to the cost of £2.5 million'
}),

(ansBuyStaffing:Answer {
    uuid: '2fde0f45-de76-49fa-b42e-18c5f41b42c5',
    text: 'Buy staffing needs up to any cost'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyStaffing:Journey {uuid: 'af8c0448-8ddc-4c9b-9d36-7ba8573f22bf', name: 'Staffing Solution'}),
(jrnyStaffing)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '7dfff63d-ea64-46ab-a988-a7e232967450'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpPermanentStaffing:AnswerGroup {name: 'ansGrpPermanentStaffing'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPermanentStaffing),
(ansGrpPermanentStaffing)-[:HAS_ANSWER {order: 1}]->(ansPermanentStaffing),
(ansGrpPermanentStaffing)-[:HAS_OUTCOME]->(qiPermanentStaffing:QuestionInstance:Outcome {uuid: 'd5540017-8882-4a0b-99b0-5f70089db8ff'})-[:DEFINED_BY]->(qstnService),

    (ansGrpNationalAndRegional:AnswerGroup {name: 'ansGrpNationalAndRegional'}),
    (qiPermanentStaffing)-[:HAS_ANSWER_GROUP]->(ansGrpNationalAndRegional),
    (ansGrpNationalAndRegional)-[:HAS_ANSWER {order: 1}]->(ansNationalAndRegional),
    (ansGrpNationalAndRegional)-[:HAS_OUTCOME]->(qiNationalAndRegional:QuestionInstance:Outcome {uuid: 'e2d41251-8b7f-44df-a3a3-06e6a8167b6d'})-[:DEFINED_BY]->(qstnService),

        (ansGrpGeneralRecruitment:AnswerGroup {name: 'ansGrpGeneralRecruitment'}),
        (qiNationalAndRegional)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralRecruitment),
        (ansGrpGeneralRecruitment)-[:HAS_ANSWER {order: 1}]->(ansGeneralRecruitment),
        (ansGrpGeneralRecruitment)-[:HAS_OUTCOME]->(qiGeneralRecruitment:QuestionInstance:Outcome {uuid: '2c31899d-2df7-4076-a1cb-787b1f97ca82'})-[:DEFINED_BY]->(qstnGeneralRecruitment),

            (ansGrpClinicalRecruitment:AnswerGroup {name: 'ansGrpClinicalRecruitment'}),
            (qiGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalRecruitment),
            (ansGrpClinicalRecruitment)-[:HAS_ANSWER {order: 1}]->(ansClinicalRecruitment),
            (ansGrpClinicalRecruitment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6229'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpNonClinicalRecruitment:AnswerGroup {name: 'ansGrpNonClinicalRecruitment'}),
            (qiGeneralRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpNonClinicalRecruitment),
            (ansGrpNonClinicalRecruitment)-[:HAS_ANSWER {order: 2}]->(ansNonClinicalRecruitment),
            (ansGrpNonClinicalRecruitment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6229'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpExecutiveRecruitment:AnswerGroup {name: 'ansGrpExecutiveRecruitment'}),
        (qiNationalAndRegional)-[:HAS_ANSWER_GROUP]->(ansGrpExecutiveRecruitment),
        (ansGrpExecutiveRecruitment)-[:HAS_ANSWER {order: 2}]->(ansExecutiveRecruitment),
        (ansGrpExecutiveRecruitment)-[:HAS_OUTCOME]->(qiExecutiveRecruitment:QuestionInstance:Outcome {uuid: '1c52fe62-11a8-4f09-b67a-0110b9fa6045'})-[:DEFINED_BY]->(qstnGrades),

            (ansGrpGrade1:AnswerGroup {name: 'ansGrpGrade1'}),
            (qiExecutiveRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpGrade1),
            (ansGrpGrade1)-[:HAS_ANSWER {order: 1}]->(ansGrade1),
            (ansGrpGrade1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6290'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpGrade2:AnswerGroup {name: 'ansGrpGrade2'}),
            (qiExecutiveRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpGrade2),
            (ansGrpGrade2)-[:HAS_ANSWER {order: 2}]->(ansGrade2),
            (ansGrpGrade2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6290'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpGrade3:AnswerGroup {name: 'ansGrpGrade3'}),
            (qiExecutiveRecruitment)-[:HAS_ANSWER_GROUP]->(ansGrpGrade3),
            (ansGrpGrade3)-[:HAS_ANSWER {order: 3}]->(ansGrade3),
            (ansGrpGrade3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6290'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpInternationalHeathcare:AnswerGroup {name: 'ansGrpInternationalHeathcare'}),
    (qiPermanentStaffing)-[:HAS_ANSWER_GROUP]->(ansGrpInternationalHeathcare),
    (ansGrpInternationalHeathcare)-[:HAS_ANSWER {order: 2}]->(ansInternationalHeathcare),
    (ansGrpInternationalHeathcare)-[:HAS_OUTCOME]->(qiInternationalHeathcare:QuestionInstance:Outcome {uuid: '693f0bd1-98eb-4273-a628-f891e923cb16'})-[:DEFINED_BY]->(qstnService),

        (ansGrpSingleStaffGroups:AnswerGroup {name: 'ansGrpSingleStaffGroups'}),
        (qiInternationalHeathcare)-[:HAS_ANSWER_GROUP]->(ansGrpSingleStaffGroups),
        (ansGrpSingleStaffGroups)-[:HAS_ANSWER {order: 1}]->(ansSingleStaffGroups),
        (ansGrpSingleStaffGroups)-[:HAS_OUTCOME]->(resultCCSEscapePage),

            // (ansGrpNursingMidwiferySocialWorkers:AnswerGroup {name: 'ansGrpNursingMidwiferySocialWorkers'}),
            // (qiSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpNursingMidwiferySocialWorkers),
            // (ansGrpNursingMidwiferySocialWorkers)-[:HAS_ANSWER {order: 1}]->(ansNursingMidwiferySocialWorkers),
            // (ansGrpNursingMidwiferySocialWorkers)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),

            // (ansGrpMedicalAndDentalStaff:AnswerGroup {name: 'ansGrpMedicalAndDentalStaff'}),
            // (qiSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpMedicalAndDentalStaff),
            // (ansGrpMedicalAndDentalStaff)-[:HAS_ANSWER {order: 2}]->(ansMedicalAndDentalStaff),
            // (ansGrpMedicalAndDentalStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

            // (ansGrpOtherStaff:AnswerGroup {name: 'ansGrpOtherStaff'}),
            // (qiSingleStaffGroups)-[:HAS_ANSWER_GROUP]->(ansGrpOtherStaff),
            // (ansGrpOtherStaff)-[:HAS_ANSWER {order: 3}]->(ansOtherStaff),
            // (ansGrpOtherStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6162'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

        (ansGrpMultiStaffGroups:AnswerGroup {name: 'ansGrpMultiStaffGroups'}),
        (qiInternationalHeathcare)-[:HAS_ANSWER_GROUP]->(ansGrpMultiStaffGroups),
        (ansGrpMultiStaffGroups)-[:HAS_ANSWER {order: 2}]->(ansMultiStaffGroups),
        (ansGrpMultiStaffGroups)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpFixedTerm:AnswerGroup {name: 'ansGrpFixedTerm'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFixedTerm),
(ansGrpFixedTerm)-[:HAS_ANSWER {order: 2}]->(ansFixedTerm),
(ansGrpFixedTerm)-[:HAS_OUTCOME]->(qiFixedTerm:QuestionInstance:Outcome {uuid: '26a4ab65-6319-409e-83e0-7ffa3ec20e7b'})-[:DEFINED_BY]->(qstnRole),

    (ansGrpClericalRoles:AnswerGroup {name: 'ansGrpClericalRoles'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpClericalRoles),
    (ansGrpClericalRoles)-[:HAS_ANSWER {order: 1}]->(ansClericalRoles),
    (ansGrpClericalRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpCorporateRoles:AnswerGroup {name: 'ansGrpCorporateRoles'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpCorporateRoles),
    (ansGrpCorporateRoles)-[:HAS_ANSWER {order: 2}]->(ansCorporateRoles),
    (ansGrpCorporateRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpItProfessionals:AnswerGroup {name: 'ansGrpItProfessionals'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpItProfessionals),
    (ansGrpItProfessionals)-[:HAS_ANSWER {order: 3}]->(ansItProfessionals),
    (ansGrpItProfessionals)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpLegalRoles:AnswerGroup {name: 'ansGrpLegalRoles'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpLegalRoles),
    (ansGrpLegalRoles)-[:HAS_ANSWER {order: 4}]->(ansLegalRoles),
    (ansGrpLegalRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpClinicalCodingRoles:AnswerGroup {name: 'ansGrpClinicalCodingRoles'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalCodingRoles),
    (ansGrpClinicalCodingRoles)-[:HAS_ANSWER {order: 5}]->(ansClinicalCodingRoles),
    (ansGrpClinicalCodingRoles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpAncillaryStaff:AnswerGroup {name: 'ansGrpAncillaryStaff'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaff),
    (ansGrpAncillaryStaff)-[:HAS_ANSWER {order: 6}]->(ansAncillaryStaff),
    (ansGrpAncillaryStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpManagedServiceProvider:AnswerGroup {name: 'ansGrpManagedServiceProvider'}),
    (qiFixedTerm)-[:HAS_ANSWER_GROUP]->(ansGrpManagedServiceProvider),
    (ansGrpManagedServiceProvider)-[:HAS_ANSWER {order: 6}]->(ansManagedServiceProvider),
    (ansGrpManagedServiceProvider)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

(ansGrpAgency:AnswerGroup {name: 'ansGrpAgency'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpAgency),
(ansGrpAgency)-[:HAS_ANSWER {order: 3}]->(ansAgency),
(ansGrpAgency)-[:HAS_OUTCOME]->(qiAgency:QuestionInstance:Outcome {uuid: 'd849957c-aebd-4ba5-bd78-4ee7ab45a697'})-[:DEFINED_BY]->(qstnRole),

    (ansGrpClinicalAndHealthcare:AnswerGroup {name: 'ansGrpClinicalAndHealthcare'}),
    (qiAgency)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalAndHealthcare),
    (ansGrpClinicalAndHealthcare)-[:HAS_ANSWER {order: 1}]->(ansClinicalAndHealthcare),
    (ansGrpClinicalAndHealthcare)-[:HAS_OUTCOME]->(qiClinicalAndHealthcare:QuestionInstance:Outcome {uuid: '7ef0d685-3a9b-4f5a-9776-96b424ef4b7c'})-[:DEFINED_BY]->(qstnRole),

        (ansGrpNursingMidwifery:AnswerGroup {name: 'ansGrpNursingMidwifery'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpNursingMidwifery),
        (ansGrpNursingMidwifery)-[:HAS_ANSWER {order: 1}]->(ansNursingMidwifery),
        (ansGrpNursingMidwifery)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpMedicalAndDental:AnswerGroup {name: 'ansGrpMedicalAndDental'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpMedicalAndDental),
        (ansGrpMedicalAndDental)-[:HAS_ANSWER {order: 2}]->(ansMedicalAndDental),
        (ansGrpMedicalAndDental)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpAhpAndHss:AnswerGroup {name: 'ansGrpAhpAndHss'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpAhpAndHss),
        (ansGrpAhpAndHss)-[:HAS_ANSWER {order: 3}]->(ansAhpAndHss),
        (ansGrpAhpAndHss)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpEmergencyServices:AnswerGroup {name: 'ansGrpEmergencyServices'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpEmergencyServices),
        (ansGrpEmergencyServices)-[:HAS_ANSWER {order: 4}]->(ansEmergencyServices),
        (ansGrpEmergencyServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpSocialCare:AnswerGroup {name: 'ansGrpSocialCare'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpSocialCare),
        (ansGrpSocialCare)-[:HAS_ANSWER {order: 5}]->(ansSocialCare),
        (ansGrpSocialCare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        (ansGrpNeutralVendor:AnswerGroup {name: 'ansGrpNeutralVendor'}),
        (qiClinicalAndHealthcare)-[:HAS_ANSWER_GROUP]->(ansGrpNeutralVendor),
        (ansGrpNeutralVendor)-[:HAS_ANSWER {order: 6}]->(ansNeutralVendor),
        (ansGrpNeutralVendor)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpNonClinicalStaff:AnswerGroup {name: 'ansGrpNonClinicalStaff'}),
    (qiAgency)-[:HAS_ANSWER_GROUP]->(ansGrpNonClinicalStaff),
    (ansGrpNonClinicalStaff)-[:HAS_ANSWER {order: 2}]->(ansNonClinicalStaff),
    (ansGrpNonClinicalStaff)-[:HAS_OUTCOME]->(qiNonClinicalStaff:QuestionInstance:Outcome {uuid: '2fbb0990-b3bb-4d04-a70a-ccc74ffd1764'})-[:DEFINED_BY]->(qstnSector),

        (ansGrpNHS:AnswerGroup {name: 'ansGrpNHS'}),
        (qiNonClinicalStaff)-[:HAS_ANSWER_GROUP]->(ansGrpNHS),
        (ansGrpNHS)-[:HAS_ANSWER {order: 1}]->(ansNHS),
        (ansGrpNHS)-[:HAS_OUTCOME]->(qiNHS:QuestionInstance:Outcome {uuid: 'af25e789-dbfb-464e-9542-398d1b68aece'})-[:DEFINED_BY]->(qstnRole),

            (ansGrpClericalRoles_1:AnswerGroup {name: 'ansGrpClericalRoles_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpClericalRoles_1),
            (ansGrpClericalRoles_1)-[:HAS_ANSWER {order: 1}]->(ansClericalRoles),
            (ansGrpClericalRoles_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpCorporateRoles_1:AnswerGroup {name: 'ansGrpCorporateRoles_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpCorporateRoles_1),
            (ansGrpCorporateRoles_1)-[:HAS_ANSWER {order: 2}]->(ansCorporateRoles),
            (ansGrpCorporateRoles_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpItProfessionals_1:AnswerGroup {name: 'ansGrpItProfessionals_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpItProfessionals_1),
            (ansGrpItProfessionals_1)-[:HAS_ANSWER {order: 3}]->(ansItProfessionals),
            (ansGrpItProfessionals_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpLegalRoles_1:AnswerGroup {name: 'ansGrpLegalRoles_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpLegalRoles_1),
            (ansGrpLegalRoles_1)-[:HAS_ANSWER {order: 4}]->(ansLegalRoles),
            (ansGrpLegalRoles_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

            (ansGrpClinicalCodingRolesShort_1:AnswerGroup {name: 'ansGrpClinicalCodingRolesShort_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpClinicalCodingRolesShort_1),
            (ansGrpClinicalCodingRolesShort_1)-[:HAS_ANSWER {order: 5}]->(ansClinicalCodingRolesShort),
            (ansGrpClinicalCodingRolesShort_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

            (ansGrpAncillaryStaff_1:AnswerGroup {name: 'ansGrpAncillaryStaff_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaff_1),
            (ansGrpAncillaryStaff_1)-[:HAS_ANSWER {order: 6}]->(ansAncillaryStaff),
            (ansGrpAncillaryStaff_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),
            
            (ansGrpManagedServiceProviderShort_1:AnswerGroup {name: 'ansGrpManagedServiceProviderShort_1'}),
            (qiNHS)-[:HAS_ANSWER_GROUP]->(ansGrpManagedServiceProviderShort_1),
            (ansGrpManagedServiceProviderShort_1)-[:HAS_ANSWER {order: 7}]->(ansManagedServiceProviderShort),
            (ansGrpManagedServiceProviderShort_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

        (ansGrpAllOtherSectors:AnswerGroup {name: 'ansGrpAllOtherSectors'}),
        (qiNonClinicalStaff)-[:HAS_ANSWER_GROUP]->(ansGrpAllOtherSectors),
        (ansGrpAllOtherSectors)-[:HAS_ANSWER {order: 2}]->(ansAllOtherSectors),
        (ansGrpAllOtherSectors)-[:HAS_OUTCOME]->(qiAllOtherSectors:QuestionInstance:Outcome {uuid: 'ae8d63ea-04b8-40be-bcc0-36bd9c4b98d3'})-[:DEFINED_BY]->(qstnInternals),

            (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
            (qiAllOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
            (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
            (ansGrpYes)-[:HAS_OUTCOME]->(qiYes:QuestionInstance:Outcome {uuid: 'c2131f3a-74ec-45ef-907f-665d75418d08'})-[:DEFINED_BY]->(qstnCa),

                (ansGrpPSR:AnswerGroup {name: 'ansGrpPSR'}),
                (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpPSR),
                (ansGrpPSR)-[:HAS_ANSWER {order: 1}]->(ansPSR),
                (ansGrpPSR)-[:HAS_OUTCOME]->(resultCCSEscapePage),

                (ansGrpNonClinical:AnswerGroup {name: 'ansGrpNonClinical'}),
                (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpNonClinical),
                (ansGrpNonClinical)-[:HAS_ANSWER {order: 2}]->(ansNonClinical),
                (ansGrpNonClinical)-[:HAS_OUTCOME]->(qiNHS),

            (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
            (qiAllOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
            (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
            (ansGrpNo)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    (ansGrpEducationAndAncillaryStaff:AnswerGroup {name: 'ansGrpEducationAndAncillaryStaff'}),
    (qiAgency)-[:HAS_ANSWER_GROUP]->(ansGrpEducationAndAncillaryStaff),
    (ansGrpEducationAndAncillaryStaff)-[:HAS_ANSWER {order: 3}]->(ansEducationAndAncillaryStaff),
    (ansGrpEducationAndAncillaryStaff)-[:HAS_OUTCOME]->(qiEducationAndAncillaryStaff:QuestionInstance:Outcome {uuid: '3458aa53-b9ab-4b7c-9484-3845c7f37eda'})-[:DEFINED_BY]->(qstnService),

        (ansGrpPreferredSupplierList:AnswerGroup {name: 'ansGrpPreferredSupplierList'}),
        (qiEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpPreferredSupplierList),
        (ansGrpPreferredSupplierList)-[:HAS_ANSWER {order: 1}]->(ansPreferredSupplierList),
        (ansGrpPreferredSupplierList)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6238'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpMasterVendor:AnswerGroup {name: 'ansGrpMasterVendor'}),
        (qiEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpMasterVendor),
        (ansGrpMasterVendor)-[:HAS_ANSWER {order: 2}]->(ansMasterVendor),
        (ansGrpMasterVendor)-[:HAS_OUTCOME]->(qiMasterVendor:QuestionInstance:Outcome {uuid: '42fa6d0b-69c9-4d7d-bd09-c2e8779a20ae'})-[:DEFINED_BY]->(qstnBudget),

            (ansGrpMillion:AnswerGroup {name: 'ansGrpMillion'}),
            (qiMasterVendor)-[:HAS_ANSWER_GROUP]->(ansGrpMillion),
            (ansGrpMillion)-[:HAS_ANSWER {order: 1}]->(ansMillion),
            (ansGrpMillion)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6238'})-[:HAS_LOT]->(:Lot {number: '2.1', url: '', type: 'CAT', scale: true}),

            (ansGrpBuyStaffing:AnswerGroup {name: 'ansGrpBuyStaffing'}),
            (qiMasterVendor)-[:HAS_ANSWER_GROUP]->(ansGrpBuyStaffing),
            (ansGrpBuyStaffing)-[:HAS_ANSWER {order: 2}]->(ansBuyStaffing),
            (ansGrpBuyStaffing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6238'})-[:HAS_LOT]->(:Lot {number: '2.2', url: '', type: 'CAT', scale: true}),

        (ansGrpAncillaryStaff2:AnswerGroup {name: 'ansGrpAncillaryStaff2'}),
        (qiEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpAncillaryStaff2),
        (ansGrpAncillaryStaff2)-[:HAS_ANSWER {order: 3}]->(ansAncillaryStaff2),
        (ansGrpAncillaryStaff2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6277'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpEducationTechnology:AnswerGroup {name: 'ansGrpEducationTechnology'}),
        (qiEducationAndAncillaryStaff)-[:HAS_ANSWER_GROUP]->(ansGrpEducationTechnology),
        (ansGrpEducationTechnology)-[:HAS_ANSWER {order: 4}]->(ansEducationTechnology),
        (ansGrpEducationTechnology)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6238'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

(ansGrpManagedStaffAndFlexible:AnswerGroup {name: 'ansGrpManagedStaffAndFlexible'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpManagedStaffAndFlexible),
(ansGrpManagedStaffAndFlexible)-[:HAS_ANSWER {order: 4}]->(ansManagedStaffAndFlexible),
(ansGrpManagedStaffAndFlexible)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6278'});
