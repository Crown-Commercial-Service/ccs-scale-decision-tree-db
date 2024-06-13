MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
(ansHardwareAndSoftware:Answer {
    uuid: '90f5f228-5291-4a63-a9b5-4bff70360ba4',
    text: 'Hardware and software with associated services',
    hint: 'Access both hardware and software services to meet a range of requirements. Includes:
    <ul>
        <li>end user devices such as laptops, desktops, mobiles and tablets</li>
        <li>the ability to outsource hardware and device management services</li>
        <li>consumables such as cabling, connectors, data storage and memory sticks</li>
        <li>software that is ready made and available for immediate sale such as Microsoft, VMware, Google services and antivirus software</li>
        <li>IT management software</li>
        <li>data and analytics software</li>
    </ul>'
}),

(ansHardware:Answer {
    uuid: '6c44156d-b1ea-4991-8552-709e51a42c27',
    text: 'Hardware products and services only',
    hint: 'Access a variety of hardware products and services including:
    <ul>
        <li>end user devices such as laptops, desktop mobiles and tablet devices</li>
        <li>infrastructure as a service, for example storage and networking resource on a pay as you use basis</li>
        <li>infrastructure hardware such as services, data centres, hubs, routers and switches</li>
        <li>consumables such as cabling, connectors, data storage and memory sticks</li>
        <li>peripheral equipment such as keyboards, mouse, screens and monitors</li>
        <li>other technology relating to audio, visual, radio, sensors, networking and security equipment</li>
    </ul>'
}),

(ansSoftware:Answer {
    uuid: 'c8a836a5-5ce0-4d85-a923-5ef470f7f0c9',
    text: 'Software products and services only',
    hint: 'Access a range of software products and services including:
    <ul>
        <li>ready made and available for immediate sale software such as Microsoft, VMware, Google and antivirus software</li>
        <li>business, productivity and resource management software including MS Office, Teams, Google Docs and Smartsheet project</li>
        <li>security software and products such as antivirus and firewall</li>
        <li>cloud products including cloud service models and cloud hosted applications</li>
    </ul>'
}),

(ansInformation:Answer {
    uuid: 'e76c0f4e-b741-495c-8964-df36e8c5dd9e',
    text: 'Information assured technology',
    hint: 'Access all hardware, software and associated services but only from Facility Security Clearance (FSC) accredited suppliers. These suppliers have Developed Vetting (DV) cleared resources. Includes (but not limited to):
    <ul>
        <li>end user devices and peripheral equipment such as laptops, desktops, mobiles, tablet devices, keyboards, mouse, screens and monitors</li>
        <li>storage and networking resources on a pay as you use basis</li>
        <li>servers, data centres, data hubs, routers and switches</li>
        <li>ready made software ready for immediate use such as Microsoft, VMware, Google, ServiceNow, antivirus software and adobe</li>
        <li>business and productivity software such as MS Office, Teams, Google Docs and management software such as Smartsheet</li>
    </ul>'
}),

(ansHealth:Answer {
    uuid: '9d79e966-a92b-4a2c-b3d4-d953847915bd',
    text: 'Health and social care technology',
    hint: 'Combines both hardware, software and services designed for the health and social care sector. Includes:
    <ul>
        <li>assistive technologies and products for example, screen readers, screen magnifiers, voice recognition and more </li>
        <li>remote monitoring products and systems, which allow health and/or social care workers to monitor individuals outside the traditional care setting using digital medical devices</li>
        <li>laptop trolleys</li>
        <li>screen mounts</li>
        <li>virtual reality products and services such as, sensory accessories, headsets, movement trackers and systems</li>
    </ul>'
}),

(ansEducation:Answer {
    uuid: 'e410949c-cbe9-45c4-a9af-508ce68f2fbb',
    text: 'Education technology',
    hint: 'The education sector can access all the hardware, software and associated services they need from suppliers who are education specialists. Includes (but is not limited to):
    <ul>
        <li>end user devices and peripheral equipment such as laptops, desktops, mobiles, tablet devices, keyboards, mouse, screens and monitors</li>
        <li>storage and networking resources on a pay as you use basis</li>
        <li>servers, data centres, data hubs, routers and switches</li>
        <li>ready made software ready for immediate use such as Microsoft, VMware, Google, ServiceNow, antivirus software and adobe</li>
        <li>business and productivity software such as MS Office, Teams, Google Docs and management software such as Smartsheet</li>
    </ul>'
}),

(ansSustainability:Answer {
    uuid: 'd8ea615b-19d7-436c-bacb-f4aaff4bce39',
    text: 'Sustainability and circular IT',
    hint: 'Access technology recycling services including:
    <ul>
        <li>the secure disposal and data wiping of technology products</li>
        <li>accessing refurbished or repurposed technology and hardware for example second hand laptops, desktops, mobiles and more</li>
    </ul>'
}),

(ansTechnolog:Answer {
    uuid: '678cb7a0-5cc8-42b7-8521-26d56a8c2457',
    text: 'Technolog catalogue',
    hint: 'Buy simple and ready made hardware and software services through an online catalogue such as:
    <ul>
        <li>Buy simple and ready made hardware and software services through an online catalogue such as:</li>
        <li>laptops, desktops, mobiles and tablet devices</li>
        <li>hardware and device management</li>
        <li>consumables such as cabling, connectors, data storage and memory sticks</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyTechnology:Journey {uuid: 'a76c15a7-80bb-4ffe-afe2-f94ee1532540', name: 'Technology Products 2'}),
(jrnyTechnology)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '5cfba8a0-902c-4ca8-a396-ed791522c9db'})-[:DEFINED_BY]->(qstnService),

(ansGrpHardwareAndSoftware:AnswerGroup {name: 'ansGrpHardwareAndSoftware'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHardwareAndSoftware),
(ansGrpHardwareAndSoftware)-[:HAS_ANSWER {order: 1}]->(ansHardwareAndSoftware),
(ansGrpHardwareAndSoftware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpHardware:AnswerGroup {name: 'ansGrpHardware'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHardware),
(ansGrpHardware)-[:HAS_ANSWER {order: 2}]->(ansHardware),
(ansGrpHardware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpSoftware:AnswerGroup {name: 'ansGrpSoftware'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSoftware),
(ansGrpSoftware)-[:HAS_ANSWER {order: 3}]->(ansSoftware),
(ansGrpSoftware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpInformation:AnswerGroup {name: 'ansGrpInformation'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInformation),
(ansGrpInformation)-[:HAS_ANSWER {order: 4}]->(ansInformation),
(ansGrpInformation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

(ansGrpHealth:AnswerGroup {name: 'ansGrpHealth'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHealth),
(ansGrpHealth)-[:HAS_ANSWER {order: 5}]->(ansHealth),
(ansGrpHealth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpEducation:AnswerGroup {name: 'ansGrpEducation'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEducation),
(ansGrpEducation)-[:HAS_ANSWER {order: 6}]->(ansEducation),
(ansGrpEducation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

(ansGrpSustainability:AnswerGroup {name: 'ansGrpSustainability'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSustainability),
(ansGrpSustainability)-[:HAS_ANSWER {order: 7}]->(ansSustainability),
(ansGrpSustainability)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

(ansGrpTechnolog:AnswerGroup {name: 'ansGrpTechnolog'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnolog),
(ansGrpTechnolog)-[:HAS_ANSWER {order: 8}]->(ansTechnolog),
(ansGrpTechnolog)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),
(ansGrpTechnolog)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6147'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});