CREATE

// Question
(qstnFirstQ:Question {
    uuid: '0c9e14e8-07a4-42a6-9bb5-2cc2c46ff53f',
    text: 'What type of service do you need?',
    type: 'LIST'
}),

(qstnNationalOrOverseasOH:Question {
    uuid: '598caa29-0947-445c-a7ca-70c189f8b11a',
    text: 'Where do you need to use the OH services?',
    type: 'LIST'
}),

(qstnOHandEAP:Question {
    uuid: '1f7763fe-de82-47d9-947c-d0d7a26d2507',
    text: 'Occupational Health (OH) and Employee Assistance Programme (EAP) available on a National / Overseas basis',
    hint: '<p>Requirement for both OH and EAP services and a wish to procure those services at the same time under one contract with one supplier</p>
    <p>Occupational health services:</p>
    <ul>
    <li>Telephone Support Services</li>
    <li>Online Portal</li>
    <li>Publicity and Promotion</li>
    <li>Referrals from Buyers</li>
    <li>Attendance Management Advice and Assessments</li>
    <li>Attendance Management Reports</li>
    <li>Case Conferences</li>
    <li>Ill Health Retirement</li>
    <li>Pre-appointment and pre-enrolment checks</li>
    <li>Surveillance Services</li>
    <li>Fitness for Task and Safety Critical Work Services</li>
    <li>Immunisations, Vaccinations, Inoculations, Medicines and Blood Tests</li>
    <li>Health Screening Services</li>
    <li>Physiotherapy</li>
    <li>Workplace Assessments and Diagnostics</li>
    <li>Therapeutic Psychological Services</li>
    <li>Consultancy</li>
    <li>Education and Awareness Programmes</li>
    <li>Service Implementation</li>
    </ul>
    <p>Employee Assistance Programme services:</p>
    <ul>
    <li>Online Portal</li>
    <li>Digital Services including live chat and mobile phone application downloadable to personal devices</li>
    <li>Advice and support;</li>
    <li>Management support Services;</li>
    <li>Counselling Services;</li>
    <li>Case Management;</li>
    <li>Trauma and critical incident support;</li>
    <li>Consultancy, and clinical supervision;</li>
    <li>Education, Support and Training;</li>
    <li>Promotion of the Employee Assistance Programme;</li>
    <li>Therapeutic Interventions;</li>
    <li>Bullying and harassment support;</li>
    <li>Whistleblowing Services;</li>
    <li>Mediation;</li>
    <li>Coaching Services</li>
    <li>Structured Professional Support; and</li>
    <li>Interactive health kiosks.</li>
    <li>Additional well-being services</li>
    </ul>',
    type: 'LIST'
}),

(qstnEAPservices:Question {
    uuid: '1afd13c8-968a-4c91-82dc-821562286c97',
    text: 'EAP services available on a National / Overseas basis',
    hint: '<p>Employee Assistance Programme services:</p>
    <ul>
    <li>Online Portal</li>
    <li>Digital Services including live chat and mobile phone application downloadable to personal devices</li>
    <li>Advice and support;</li>
    <li>Management support Services;</li>
    <li>Counselling Services;</li>
    <li>Case Management;</li>
    <li>Trauma and critical incident support;</li>
    <li>Consultancy, and clinical supervision;</li>
    <li>Education, Support and Training;</li>
    <li>Promotion of the Employee Assistance Programme;</li>
    <li>Therapeutic Interventions;</li>
    <li>Bullying and harassment support;</li>
    <li>Whistleblowing Services;</li>
    <li>Mediation;</li>
    <li>Coaching Services</li>
    <li>Structured Professional Support; and</li>
    <li>Interactive health kiosks.</li>
    <li>Additional well-being services</li>
    </ul>',
    type: 'LIST'
}),

(qstnSelectRegion:Question {
    uuid: '3fcee5e1-a1a8-49dd-8983-0a8e4d89411d',
    text: 'Where do you need to use the services?',
    type: 'LIST'
}),


// Answers
(ansOccupationalHealth:Answer {
    uuid: 'd5bf58ae-48d4-45e8-aabe-d19d188bcf24',
    text: 'Occupational Health (OH)',
    hint: 'Access services and treatments to support employee\'s physical well being and mental health. Services include:
    <ul>
        <li>telephone support services</li>
        <li>pre-appointment and pre-enrolment checks</li>
        <li>surveillance services</li>
        <li>immunisations, vaccinations, inoculations, medicines and blood tests</li>
        <li>health screening services</li>
        <li>physiotherapy</li>
        <li>workplace assessments and diagnostics</li>
        <li>consultancy</li>
        <li>therapeutic psychology services</li>
    <li>attendance management reports</li>
    </ul>'
}),

(ansBothOHandEAP:Answer {
    uuid: 'd358d0e0-15a0-4d49-9977-1126099451bb',
    text: 'Both OH & EAP services',
    hint: 'Access both OH and EAP services at the same time under one contract and from one supplier'
}),

(ansEAPprograms:Answer {
    uuid: 'f9db9aa6-c6f0-4c55-a3af-82dd1ac290b7',
    text: 'Employee Assistance Programmes (EAP)',
    hint: 'Buy employee assistance programmes and wellbeing services independently of your occupational health needs. Services include:
    <ul>
        <li>online employee portals</li>
        <li>digital services including live chat and apps that employees can download to personal devices</li>
        <li>counselling services</li>
        <li>trauma and critical incident support</li>
        <li>education, support and training</li>
        <li>bullying and harassment support</li>
        <li>management support services</li>
        <li>consultancy and clinical supervision</li>
        <li>meditation</li>
    </ul>'
}),

(ansEAPservices:Answer {
    uuid: '38d06a09-5bff-465f-af80-4a7f413dcc49',
    text: 'Select Employee Assistance Services',
    hint: ''
}),

(ansEyeCare:Answer {
    uuid: '47fac3d3-de34-43d4-a3f8-608b78880fc0',
    text: 'Eye care',
    hint: 'Buy a range of services from eye testing to safety eyewear. Services include:
    <ul>
    <li>prescription glasses and sunglasses</li>
    <li>eyesight tests</li>
    <li>a range of different lenses</li>
    <li>prescription safety glasses and eye shields</li>
    <li>occupational lenses which help to reduce discomfort caused by workplace activities such as reading, doing paperwork or using computers</li>
    <li>colour vision tests</li>
    </ul>'
}),

(ansRegionalOH:Answer {
    uuid: '6702b452-722f-4c05-a349-612bc6ac9a8f',
    text: 'Regional',
    hint: 'I need OH services in a specifc region of the UK'
}),

(ansRegionalLondon:Answer {
    uuid: '84e9e3ed-9eba-457a-ac28-b2878d609167',
    text: 'London',
    hint: ''
}),

(ansRegionalSouth:Answer {
    uuid: 'e10d02a6-e93f-40b7-871f-7bc8377073f6',
    text: 'South England',
    hint: ''
}),

(ansRegionalMidlandsAndEastEngland:Answer {
    uuid: '2679a750-8ba9-4b0f-a41d-7d6b3b84c737',
    text: 'Midlands and East of England',
    hint: '',
    type: 'LIST'
}),

(ansRegionalWales:Answer {
    uuid: '6f2c8e0b-6c53-4b03-b507-8f69602fc360',
    text: 'Wales',
    hint: '',
    type: 'LIST'
}),

(ansRegionalNorthernEngland:Answer {
    uuid: '3b404d88-bef8-4fdc-b7bf-ed88daa7e983',
    text: 'Northern England',
    hint: '',
    type: 'LIST'
}),

(ansRegionalScotland:Answer {
    uuid: 'e6c22935-a486-4078-b572-e1358511624b',
    text: 'Scotland',
    hint: '',
    type: 'LIST'
}),

(ansRegionalNorthernIreland:Answer {
    uuid: '380ad7b6-d9b1-44a3-ac45-45f534c3ee0c',
    text: 'Northern Ireland',
    hint: '',
    type: 'LIST'
}),

(ansNationalOverseasOH:Answer {
    uuid: '16f9eeba-8c2e-4bca-aec2-70711cc0d9a7',
    text: 'National and overseas',
    hint: 'I need OH services across the UK and overseas'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyOccupationalHealth_EAP_EC:Journey {uuid: 'e3dda2b7-687e-4bc7-b286-2b7dde28ff0b', name: 'Occupational Health, Employee Assistance Programmes and Eye Care'}),
(jrnyOccupationalHealth_EAP_EC)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'f316776b-e3a2-40b6-93f7-ac5424b059c6'})-[:DEFINED_BY]->(qstnFirstQ),

    (ansGrpOccupationalHealth:AnswerGroup {name: 'ansGrpOccupationalHealth'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOccupationalHealth),
    (ansGrpOccupationalHealth)-[:HAS_ANSWER {order: 1}]->(ansOccupationalHealth),
    (ansGrpOccupationalHealth)-[:HAS_OUTCOME]->(qiNationalOrOverseasOH:QuestionInstance:Outcome {uuid: '92ca2144-8247-47a7-831b-1f72fba40e35'})-[:DEFINED_BY]->(qstnNationalOrOverseasOH),

        (ansGrpRegionalOH:AnswerGroup {name: 'ansGrpRegionalOH'}),
        (qiNationalOrOverseasOH)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalOH),
        (ansGrpRegionalOH)-[:HAS_ANSWER {order: 1}]->(ansRegionalOH),
        (ansGrpRegionalOH)-[:HAS_OUTCOME]->(qiSelectRegion:QuestionInstance:Outcome {uuid:'621a2bce-bb2c-4e1a-bb74-d9cfd5db00c8'})-[:DEFINED_BY]->(qstnSelectRegion),

            (ansGrpRegionalLondon:AnswerGroup {name: 'ansGrpRegionalLondon'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalLondon),
            (ansGrpRegionalLondon)-[:HAS_ANSWER {order: 1}]->(ansRegionalLondon),
            (ansGrpRegionalLondon)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.1', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalSouth:AnswerGroup {name: 'ansGrpRegionalSouth'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalSouth),
            (ansGrpRegionalSouth)-[:HAS_ANSWER {order: 2}]->(ansRegionalSouth),
            (ansGrpRegionalSouth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.2', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalMidlandsAndEastEngland:AnswerGroup {name: 'ansGrpRegionalMidlandsAndEastEngland'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalMidlandsAndEastEngland),
            (ansGrpRegionalMidlandsAndEastEngland)-[:HAS_ANSWER {order: 3}]->(ansRegionalMidlandsAndEastEngland),
            (ansGrpRegionalMidlandsAndEastEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.3', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalNorthernEngland:AnswerGroup {name: 'ansGrpRegionalNorthernEngland'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalNorthernEngland),
            (ansGrpRegionalNorthernEngland)-[:HAS_ANSWER {order: 4}]->(ansRegionalNorthernEngland),
            (ansGrpRegionalNorthernEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.4', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalWales:AnswerGroup {name: 'ansGrpRegionalWales'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalWales),
            (ansGrpRegionalWales)-[:HAS_ANSWER {order: 5}]->(ansRegionalWales),
            (ansGrpRegionalWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.5', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalNorthernIreland:AnswerGroup {name: 'ansGrpRegionalNorthernIreland'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalNorthernIreland),
            (ansGrpRegionalNorthernIreland)-[:HAS_ANSWER {order: 6}]->(ansRegionalNorthernIreland),
            (ansGrpRegionalNorthernIreland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.6', url: '', type: 'CAT', scale: true}),

            (ansGrpRegionalScotland:AnswerGroup {name: 'ansGrpRegionalScotland'}),
            (qiSelectRegion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalScotland),
            (ansGrpRegionalScotland)-[:HAS_ANSWER {order: 7}]->(ansRegionalScotland),
            (ansGrpRegionalScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '4.7', url: '', type: 'CAT', scale: true}),

        (ansGrpNationalOverseasOH:AnswerGroup {name: 'ansGrpNationalOverseasOH'}),
        (qiNationalOrOverseasOH)-[:HAS_ANSWER_GROUP]->(ansGrpNationalOverseasOH),
        (ansGrpNationalOverseasOH)-[:HAS_ANSWER {order: 2}]->(ansNationalOverseasOH),
        (ansGrpNationalOverseasOH)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpEAPprograms:AnswerGroup {name: 'ansGrpEAPprograms'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEAPprograms),
    (ansGrpEAPprograms)-[:HAS_ANSWER {order: 2}]->(ansEAPprograms),
    (ansGrpEAPprograms)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpBothOHandEAP:AnswerGroup {name: 'ansGrpBothOHandEAP'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBothOHandEAP),
    (ansGrpBothOHandEAP)-[:HAS_ANSWER {order: 3}]->(ansBothOHandEAP),
    (ansGrpBothOHandEAP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
    
    (ansGrpEyeCare:AnswerGroup {name: 'ansGrpEyeCare'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEyeCare),
    (ansGrpEyeCare)-[:HAS_ANSWER {order: 4}]->(ansEyeCare),
    (ansGrpEyeCare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6182'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true});

 



