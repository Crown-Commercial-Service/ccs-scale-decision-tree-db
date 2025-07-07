MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'}),
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE
(qstnFirstQ:Question {uuid: 'da12b5c0-c585-4688-a6b7-ea48c117c720', text: 'What network solution do you need?', type: 'LIST'}),
(qstnConnectivity:Question {uuid: '9b0c64f8-ef7a-4fde-b8ab-59daf84c2778', text: 'What connectivity service do you need?', type: 'LIST'}),
(qstnWANorLAN:Question {uuid: 'b706b9f9-8d2a-41c7-bd9b-648022f8b12b', text: 'Do you need WAN, LAN or both?', type: 'LIST'}),
(qstnBuyService:Question {uuid: '8f561367-32d0-4155-aba0-466789ae7576', text: 'How do you want to buy your service?', type: 'LIST'}),
(qstnContactCentreTechnology:Question {uuid: 'e362c560-ef02-4a61-b3b3-21f8dbbe85f4', text: 'Do you need contact centre technology and services?', type: 'LIST'}),
(qstnContactCenterStaff:Question {uuid: '19bd5480-9679-46bf-8ebe-cf183396edbe', text: 'Do you need contact center staff?', type: 'LIST'}),

(ansHSCN:Answer {
    uuid: '42d86a7f-0318-465f-9a5f-708d8161fd12',
    text: 'Health and Social Care Network (HSCN) services',
    hint: 'Provides data networks that enables health and social care services to access and share information in a reliable, flexible and efficient way. Services you can access includes:
    <ul>
        <li>data sharing</li>
        <li>a range of connectivity services including broadband and ethernet for a range of technologies </li>
        <li>transition and implementation services to help you set up your network access</li>
        <li>cloud access</li>
        <li>firewalls and intrusion prevention and detection services</li>
        <li>Virtual Private Networks (VPNs)</li>
    </ul>'
}),

(ansConnectivity:Answer {
    uuid: '99db7b53-2677-47d2-b196-59d92edc8e1c',
    text: 'Connectivity services',
    hint: 'Provides wide area network (WAN) and local area network (LAN) services. WAN is a communication network which allows you to connect with devices in other networks and over a large geographical area. LAN provides a computer network that connects devices in specific areas such as a school or office building. You can also access internet service providers (ISP), network security services, broadband installation or upgrades and associated equipment'
}),

(ansSpace:Answer {
    uuid: 'f4f3a252-f6f4-43d1-908c-4ceb71a32c82',
    text: 'Space enabled technology market',
    hint: 'Access geospatial ecosystem products and services including:
    <ul>
        <li>service design, operation support and training services relating to space, space launch or manufacture for space</li>
        <li>broadcast or communications enabled by satellite technology including satellite telephony, satellite broadband and radio broadcast</li>
        <li>drones and unmanned vehicles</li>
        <li>geospatial data services and products including radiometers, radar and altimeters</li>
    </ul>'
}),

(ansRadio:Answer {uuid: '5336b379-12ab-436b-b79a-6a6946960a21', text: 'Radio, paging, mobile services', hint: 'Includes voice calls, SMS, voicemail, paging, radio, email and data connectivity'}),

(ansTelephony:Answer {
    uuid: 'b7b0190a-a88a-482e-bc67-b99a84996376',
    text: 'Telephony',
    hint: 'Access a range of telephony services including:
    <ul>
        <li>make and receive calls over the internet</li>
        <li>voice call packages </li>
        <li>management services for inbound calls made to call centres </li>
    </ul>'
}),

(ansDigital:Answer {
    uuid: 'c271cb05-0410-4b95-9651-ff1bc797616d',
    text: 'Digital Communication Services (Unified Communications)',
    hint: 'Access to digital communications services. Including but not limited to:
    <ul>
        <li>IP telephony, unified communications, collaborative software application including audio and video conferencing and business enablement application software</li>
        <li>design, survey, build, management, support and maintenance services including support for the replacement and upgrade from analogue to digital estates</li>
        <li>Internet Protocol (IP) telephony services with the ability to make and receive multimedia messaging over an IP based network service</li>
        <li>consistent user interface for voice, video and data services allowing the full integration of these services within a single user device</li>
        <li>audio and video conferencing capability within the UC suite based on collaborative applications</li>
    </ul>'
}),

(ansCommunication:Answer {
    uuid: '69ed7d15-79a4-492f-b4e7-32c06f71f458',
    text: 'Communication platform as a service',
    hint: 'Access to software and hardware integration services to allow your applications to be interfaced to the communications suite with API’s (Application Programming Interface).
    <ul>
        <li>design, build, test and deployment delivery and management, plus support and maintenance services</li>
        <li>API development from communications suite to external omni-channel applications</li>
    </ul>'
}),

(ansCCS:Answer {uuid: '497da37e-e190-4aa8-b069-fb4e3ab882fb', text: 'Contact centre services', hint: 'Allows you to make outbound calls and redirect incoming calls to a predefined destination, such as a specific contact centre'}),

(ansCritical:Answer {uuid: 'bd5c1ee8-aca0-4ff3-893d-ffdf3277d2b5', text: 'Critical Domain services', hint: 'Access domain registry services to operate and manage nationally critical public sector domains'}),

(ansSmartCity:Answer {
    uuid: '06a15ce9-d4dc-4236-a6b9-de0ca47104e8',
    text: 'Smart city technology solutions',
    hint: 'Access to solutions related to smart technologies. Includes but is not limited to:
    <ul>
        <li>smart buildings, water and waste management, crime prevention, education, smart street lighting, air and noise pollution monitoring</li>
        <li>design, survey, build, management, support and maintenance services</li>
        <li>vendor agnostic solution design</li>
        <li>infrastructure monitoring, preventative maintenance, and break-fix activities</li>
        <li>data security and 3rd party integration into overall solution designs</li>
        <li>image recognition applications, alarms and security monitoring, CCTV as a service</li>
    </ul>'
}),

(ansTraffic:Answer {
    uuid: '7783015f-7538-4f8d-960e-f2b95e1e43d7',
    text: 'Traffic management and smart solutions',
    hint: 'Access transport engineering and design services such as:
    <ul>
        <li>cameras (ANPR and speed)</li>
        <li>signage</li>
        <li>intelligent transport systems</li>
        <li>sustainable technologies and transport gate systems</li>
    </ul>'
}),

(ansSomething:Answer {uuid: '28f46547-5118-4beb-9818-8ba0b919ff97', text: 'Something else', hint: 'I want to buy more than one of these services through a single procurement'}),

(ansConnectivityAdd:Answer {uuid: 'e9ab1a3b-6883-4c63-a058-18f54955f2af', text: 'Connectivity with additional services', hint: 'Access wide area network (WAN) and local area network (LAN) connectivity. Includes additional services such as maintenance and support'}),

(ansConnectivityInf:Answer {
    uuid: 'f8c51ada-92dc-4426-8430-25de518c82d0',
    text: 'Connectivity infrastructure services',
    hint: 'Access fibre optic infrastructure services such as: 
    <ul>
        <li>broadband connectivity services such as VPN tunnels and cloud applications</li>
        <li>infrastructure build services including system hardware, software and service components</li>
        <li>managed infrastructure services which can provide direct access to telecommunications between 2 specific locations</li>
    </ul>'
}),

(ansWAN:Answer {uuid: 'eed635a5-f8ee-47b1-8967-bcf0c495dca3', text: 'Wide Area Network (WAN) with additional services', hint: 'Allows you to connect with devices in other networks and over a large geographical area. Includes additional services such as equipment and support'}),

(ansLAN:Answer {uuid: '81c5fc93-8aae-4375-bd43-0978d379b4e4', text: 'Local Area Network (LAN) with additional services', hint: 'Provides network connectivity within a building. Includes additional services such as equipment maintenance and support'}),

(ansWANLAN:Answer {uuid: '59d04fb0-2d79-4fc2-94bc-7658c859717e', text: 'Wide Area Network (WAN) and Local Area Network (LAN) with additional services', hint: 'Access WAN and LAN connectivity networks. Includes additional services such as equipment maintenance and support'}),

(ansBroadband:Answer {
    uuid: '1fb8e722-e969-42d4-882d-8e52b60aeadd',
    text: 'Broadband connectivity services',
    hint: 'Provides reliable and predictable connectivity to the internet at a specific site and access a wide range of managed wide area networks. Services and products include:
    <ul>
        <li>VPN tunnels </li>
        <li>cloud applications</li>
        <li>video conferencing</li>
        <li>Citrix services</li>
        <li>mail services</li>
        <li>internet browsing</li>
        <li>security services</li>
        <li>content filtering</li>
    </ul>'
}),

(ansInfrastructure:Answer {uuid: '4535d12d-6a80-4ec5-a117-7d38e6cd020e', text: 'Infrastructure build services', hint: 'Provides and maintains the system of hardware, software, facilities and service components. These are needed to support the implementation of business systems and IT-enabled processes'}),

(ansManaged:Answer {uuid: '7c742f08-39e6-4a1a-852c-421042f0ba2b', text: 'Managed Infrastructure Services', hint: 'Provides and maintains direct access to any telecommunication infrastructure between two specific locations. Guarantees an Indefeasible Right of Use (IRU). IRU is a contractual agreement where you are given temporary ownership of a cable, giving you the right to use it'}),

(ansProfessional:Answer {
    uuid: '7e19759f-9528-42a6-80d8-ca396321a72e',
    text: 'Professional services related to space',
    hint: 'Access service design, operation support, training or other consultancy services relating to space, space launch or manufacture for space. Includes:
    <ul>
        <li>launch facilities and services</li>
        <li>spaceports</li>
        <li>space operations manufacturing</li>
        <li>sub-systems</li>
        <li>hardware and software</li>
    </ul>'
}),

(ansSatellite:Answer {
    uuid: '2a4a6c02-ff59-44d3-baf2-7e965115ab0d',
    text: 'Satellite communication services',
    hint: 'Broadcast or communications enabled by satellite technology, including broadband internet or voice communication devices or services including:
    <ul>
        <li>satellite telephony </li>
        <li>satellite broadband</li>
        <li>radio broadcast data collection</li>
    </ul>'
}),

(ansDrones:Answer {
    uuid: 'e29da86a-61c2-4757-89b5-b6b90b0ea1eb',
    text: 'Drones and Unmanned Autonomous Vehicles (UAV)',
    hint: 'Access UAV platform products and related services including:
    <ul>
        <li>remote sensing or monitoring services which allows continuous or specific collection of data, including satellite </li>
        <li>a variety of drones and counter drone technology that can work in the air, on land or in water</li>
    </ul>'
}),

(ansGeospatial:Answer {uuid: '6345c2e3-bf06-4257-90bf-145c62ea983a', text: 'Geospatial data', hint: 'Access geospatial data services and products including radiometers, radar and altimeters. <br> Geospatial data refers to any solution using data about location. This data tells us where people and objects are in relation to a particular geographic location. Examples include surveying forests and water plains'}),

(ansMobileVoice:Answer {
    uuid: '25787fb1-5b09-4981-92c1-46b92cb6732e',
    text: 'Mobile voice and data services including hardware',
    hint: 'Buy mobile voice and data services including (but not limited to):
    <ul>
        <li>calls/minutes</li>
        <li>Short Messaging Services (SMS) such as texts data bundles</li>
        <li>devices such as mobile phones</li>
        <li>optional services such as mobile device management </li>
        <li>auditing services</li>
    </ul>'
}),

(ansTelecommunications:Answer {
    uuid: '7b12275f-017b-4893-8725-ee2f088891b8',
    text: 'Telecommunications audit and health check',
    hint: 'Offers a range of telecommunications audit and mobile estate health check services such as:
    <ul>
        <li>historic billing and usage audits</li>
        <li>analysis of existing customer needs against service availability</li>
        <li>audting support and mobile inventory services</li>
        <li>physical/on-premise auditing of devices and end-user contact services</li>
    </ul>'
}),

(ansProfessionalServices:Answer {
    uuid: 'c9a296f3-91c8-4303-943c-08baccfdb05f',
    text: 'Professional services',
    hint: 'Access business and technical subject matter advice and resources to create, manage and optimise mobile services. Includes:
    <ul>
        <li>system and service integration</li>
        <li>business case</li>
        <li>specification development and proof of concept</li>
        <li>security solutions for mobile</li>
        <li>transition support services</li>
        <li>business policy and or strategy development</li>
        <li>customer mobile application development</li>
        <li>technical assurance</li>
    </ul>'
}),

(ansTactical:Answer {
    uuid: '08ef6ca6-4428-48f9-83a0-0e3e49b802e3',
    text: 'Tactical Radio Systems',
    hint: 'Access secure voice and data communications over a tactical radio communications system. Includes:
    <ul>
        <li>tactical radio equipment built to military specification for shock, immersion, ingress protection and vibration</li>
        <li>compact and lightweight radio systems such as manpack radios that can be carried by a single operator</li>
    </ul>'
}),

(ansCommercialRadio:Answer {uuid: '75b79967-ddb3-4e6a-b7b7-0bd69fb2dbf3', text: 'Commercial Radio', hint: 'Access voice services over a radio communications system. Includes solutions that use UHF (Ultra high frequency), and/or VHF (very high frequency) radio frequency bands. For example, hand-held, portable, two-way radio transceivers'}),

(ansPaging:Answer {uuid: 'bd836ffb-3268-4611-a4ef-c9781703c9e2', text: 'Paging and alerting services', hint: 'Access paging and mobile messaging and alerting services. Includes associated equipment, maintenance and support services'}),

(ansAudioVisual:Answer {
    uuid: 'b48e6ef6-b2e0-40c7-83db-c9d017096d9c',
    text: 'Audio Visual services',
    hint: 'Access AV design consultancy, integration and solution support services. Services include:
    <ul>
        <li>design consultant services to help you design an AV package that meets your needs (includes technical advice, creation and integration plan)</li>
        <li>specialist AV package installation and warranty services</li>
        <li>AV package monitoring and support for on-site and remote management</li>
    </ul>'
}),

(ansDA:Answer {
    uuid: 'fb6b08ff-151a-402c-932a-d6fa0ec7a751',
    text: 'Direct award',
    hint: 'For straightforward needs. You can buy a single service directly from a single supplier using a catalogue. You can buy:
    <ul>
        <li>standard UK airtime minutes (calls), SMS (text/email), roaming and data</li>
        <li>international air time (calls, SMs and data)</li>
        <li>roaming airtime</li>
        <li>device hardware (for example, mobile phones), accessories and supporting services </li>
        <li>mobile device management and associated services such as security</li>
    </ul>'
}),

(ansFC:Answer {
    uuid: '45d2e389-4aa7-407d-a7f7-0247bd3ab464',
    text: 'Further competition',
    hint: 'For large or complex mobile voice and data needs. You can buy:
    <ul>
        <li>non standard or more complex minutes (calls), SMS (text), roaming, data and device packages</li>
        <li>individually tailored services to fit your business needs such as flexible pricing for data usage solutions and security</li>
    </ul>'
}),

(ansInternet:Answer {uuid: '1f61f03c-3c93-42db-8fa0-85a05e5500d4', text: 'Internet protocol (IP) telephony', hint: 'Make and receive voice calls over the internet'}),

(ansAnalogueTelephony:Answer {uuid: '13fe7023-b2bf-48f6-bf7e-7dca8b165e79', text: 'Analogue Telephony', hint: 'Previously known as traditional telephony (calls made through traditional devices such as telephones using cables and wires). Allows you to connect analogue telephony equipment with the public switched telephone network including voice connectivity and voice call packages'}),

(ansInboundTelephony:Answer {uuid: 'af808cbc-be0a-4258-85af-4326e51cd00c', text: 'Inbound Telephony', hint: 'Management services for inbound calls made to all centers. This includes managing calls to geographic and non-geographic numbers. Also includes maintenance of associated equipment and support services'}),

(ansMore:Answer {uuid: '942c2047-dfdd-4e0d-b57a-e250cca9a7bb', text: 'I need more than one of these'}),

(ansYes1:Answer {uuid: 'ec7bdc45-2775-4330-b82b-66e978b9fa65', text: 'Yes', hint: 'Access consultancy services to help you define and understand your needs. Also includes telephony, email and web-based communication services for contact centres'}),

(ansNo1:Answer {uuid: '11126184-2255-4370-a200-f585c0227095', text: 'No', hint: 'I need something different'}),

(ansYes2:Answer {uuid: '418f08b0-35c2-473f-bf0f-0370a8fc8f1b', text: 'Yes', hint: 'Provides contact centre workers. This does not include workers who install or maintain the contact centre services'}),

(ansNo2:Answer {uuid: '1e8fc6e4-3048-44e7-8c75-cbe5a3074ad3', text: 'No', hint: 'Staff not needed'}),

(ansIntegrated:Answer {
    uuid: 'd4b6f93f-e220-411b-86fd-5787c73666ff',
    text: 'Integrated registry',
    hint: 'Access services which will support the provision and operation of critical public sector domains including (but not limited to): <a href="https://www.gov.uk/">gov.uk</a>, <a href="https://www.nhs.uk/">nhs.uk</a>, <a href="https://www.gov.scot/">gov.scot</a>, <a href="https://www.gov.wales/">gov.wales</a>, <a href="https://www.police.uk/">police.uk</a>, <a href="https://www.gov.uk/government/organisations/ministry-of-defence">mod.uk</a>. Services include:
    <ul>
        <li>critical registry functions, as specified by ICANN (Internet Corporation for Assigned Names and Numbers)</li>
        <li>critical registry functions with enhanced resilience and availability</li>
        <li>functions to support the full management and governance of a nationally critical public sector domain</li>
    </ul>'
}),

(ansPublic:Answer {uuid: '70661d49-a0f0-4cd4-ba21-d600027b0a55', text: 'Public services network (PSN)', hint: 'Access domain name services which reconcile website names and allow the government and wider public sector to send digital information securely'}),


// Tree Structure
(jrnyJointNetworkSolution:Journey {uuid: 'a9ade3ee-417f-4533-8e1f-c51a7ebdc296', name: 'Joint  Network Solutions'}),
(jrnyJointNetworkSolution)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b88567dd-36d9-48d1-b37f-4995a5472d96'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpHSCN:AnswerGroup {name: 'ansGrpHSCN'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHSCN),
(ansGrpHSCN)-[:HAS_ANSWER {order: 1}]->(ansHSCN),
(ansGrpHSCN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
(ansGrpHSCN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3825'}),

(ansGrpConnectivity:AnswerGroup {name: 'ansGrpConnectivity'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivity),
(ansGrpConnectivity)-[:HAS_ANSWER {order: 2}]->(ansConnectivity),
(ansGrpConnectivity)-[:HAS_OUTCOME]->(qiConnectivity:QuestionInstance:Outcome {uuid: '72057b87-7da9-4eb0-b43e-a34d544e21d7'})-[:DEFINED_BY]->(qstnConnectivity),

    (ansGrpConnectivityAdd:AnswerGroup {name: 'ansGrpConnectivityAdd'}),
    (qiConnectivity)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivityAdd),
    (ansGrpConnectivityAdd)-[:HAS_ANSWER {order: 1}]->(ansConnectivityAdd),
    (ansGrpConnectivityAdd)-[:HAS_OUTCOME]->(qiWANorLAN:QuestionInstance:Outcome {uuid: '21a18dd5-1c6e-4771-aef9-2213b1c101ba'})-[:DEFINED_BY]->(qstnWANorLAN),

        (ansGrpWAN:AnswerGroup {name: 'ansGrpWAN'}),
        (qiWANorLAN)-[:HAS_ANSWER_GROUP]->(ansGrpWAN),
        (ansGrpWAN)-[:HAS_ANSWER {order: 1}]->(ansWAN),
        (ansGrpWAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
        (ansGrpWAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3825'}),

        (ansGrpLAN:AnswerGroup {name: 'ansGrpLAN'}),
        (qiWANorLAN)-[:HAS_ANSWER_GROUP]->(ansGrpLAN),
        (ansGrpLAN)-[:HAS_ANSWER {order: 2}]->(ansLAN),
        (ansGrpLAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),

        (ansGrpWANLAN:AnswerGroup {name: 'ansGrpWANLAN'}),
        (qiWANorLAN)-[:HAS_ANSWER_GROUP]->(ansGrpWANLAN),
        (ansGrpWANLAN)-[:HAS_ANSWER {order: 3}]->(ansWANLAN),
        (ansGrpWANLAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
        (ansGrpWANLAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '2a', url: '', type: 'CAT', scale: true}),
    
    (ansGrpConnectivityInf:AnswerGroup {name: 'ansGrpConnectivityInf'}),
    (qiConnectivity)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivityInf),
    (ansGrpConnectivityInf)-[:HAS_ANSWER {order: 2}]->(ansConnectivityInf),
    (ansGrpConnectivityInf)-[:HAS_OUTCOME]->(qiConnectivityInf:QuestionInstance:Outcome {uuid: 'd3e25521-35e1-48ea-baf9-bf16a681202f'})-[:DEFINED_BY]->(qstnService),

        (ansGrpBroadband:AnswerGroup {name: 'ansGrpBroadband'}),
        (qiConnectivityInf)-[:HAS_ANSWER_GROUP]->(ansGrpBroadband),
        (ansGrpBroadband)-[:HAS_ANSWER {order: 1}]->(ansBroadband),
        (ansGrpBroadband)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
        (ansGrpBroadband)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6095'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpInfrastructure:AnswerGroup {name: 'ansGrpInfrastructure'}),
        (qiConnectivityInf)-[:HAS_ANSWER_GROUP]->(ansGrpInfrastructure),
        (ansGrpInfrastructure)-[:HAS_ANSWER {order: 2}]->(ansInfrastructure),
        (ansGrpInfrastructure)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1a', url: '', type: 'CAT', scale: true}),
        (ansGrpInfrastructure)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6095'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpManaged:AnswerGroup {name: 'ansGrpManaged'}),
        (qiConnectivityInf)-[:HAS_ANSWER_GROUP]->(ansGrpManaged),
        (ansGrpManaged)-[:HAS_ANSWER {order: 3}]->(ansManaged),
        (ansGrpManaged)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6095'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpSpace:AnswerGroup {name: 'ansGrpSpace'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSpace),
(ansGrpSpace)-[:HAS_ANSWER {order: 3}]->(ansSpace),
(ansGrpSpace)-[:HAS_OUTCOME]->(qiSpace:QuestionInstance:Outcome {uuid: 'd2e39d01-c584-415d-937a-7c35edbea21e'})-[:DEFINED_BY]->(qstnService),

    (ansGrpProfessional:AnswerGroup {name: 'ansGrpProfessional'}),
    (qiSpace)-[:HAS_ANSWER_GROUP]->(ansGrpProfessional),
    (ansGrpProfessional)-[:HAS_ANSWER {order: 1}]->(ansProfessional),
    (ansGrpProfessional)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6235'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),


    (ansGrpSatellite:AnswerGroup {name: 'ansGrpSatellite'}),
    (qiSpace)-[:HAS_ANSWER_GROUP]->(ansGrpSatellite),
    (ansGrpSatellite)-[:HAS_ANSWER {order: 2}]->(ansSatellite),
    (ansGrpSatellite)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6235'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpDrones:AnswerGroup {name: 'ansGrpDrones'}),
    (qiSpace)-[:HAS_ANSWER_GROUP]->(ansGrpDrones),
    (ansGrpDrones)-[:HAS_ANSWER {order: 3}]->(ansDrones),
    (ansGrpDrones)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6235'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpGeospatial:AnswerGroup {name: 'ansGrpGeospatial'}),
    (qiSpace)-[:HAS_ANSWER_GROUP]->(ansGrpGeospatial),
    (ansGrpGeospatial)-[:HAS_ANSWER {order: 4}]->(ansGeospatial),
    (ansGrpGeospatial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6235'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
    (ansGrpGeospatial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6195'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpRadio:AnswerGroup {name: 'ansGrpRadio'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRadio),
(ansGrpRadio)-[:HAS_ANSWER {order: 4}]->(ansRadio),
(ansGrpRadio)-[:HAS_OUTCOME]->(qiRadio:QuestionInstance:Outcome {uuid: 'f929198d-d81a-4a87-b37b-e1f38f1d08b3'})-[:DEFINED_BY]->(qstnService),

    (ansGrpMobileVoice:AnswerGroup {name: 'ansGrpMobileVoice'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpMobileVoice),
    (ansGrpMobileVoice)-[:HAS_ANSWER {order: 1}]->(ansMobileVoice),
    (ansGrpMobileVoice)-[:HAS_OUTCOME]->(qiBuyService:QuestionInstance:Outcome {uuid: '2dba9155-36ff-40ea-9e2f-e4505a57a417'})-[:DEFINED_BY]->(qstnBuyService),

        (ansGrpDA:AnswerGroup {name: 'ansGrpDA'}),
        (qiBuyService)-[:HAS_ANSWER_GROUP]->(ansGrpDA),
        (ansGrpDA)-[:HAS_ANSWER {order: 1}]->(ansDA),
        (ansGrpDA)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6261'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpFC:AnswerGroup {name: 'ansGrpFC'}),
        (qiBuyService)-[:HAS_ANSWER_GROUP]->(ansGrpFC),
        (ansGrpFC)-[:HAS_ANSWER {order: 2}]->(ansFC),
        (ansGrpFC)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6261'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpTelecommunications:AnswerGroup {name: 'ansGrpTelecommunications'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpTelecommunications),
    (ansGrpTelecommunications)-[:HAS_ANSWER {order: 2}]->(ansTelecommunications),
    (ansGrpTelecommunications)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6261'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpProfessionalServices:AnswerGroup {name: 'ansGrpProfessionalServices'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpProfessionalServices),
    (ansGrpProfessionalServices)-[:HAS_ANSWER {order: 3}]->(ansProfessionalServices),
    (ansGrpProfessionalServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6261'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpTactical:AnswerGroup {name: 'ansGrpTactical'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpTactical),
    (ansGrpTactical)-[:HAS_ANSWER {order: 4}]->(ansTactical),
    (ansGrpTactical)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1c', url: '', type: 'CAT', scale: true}),

    (ansGrpCommercialRadio:AnswerGroup {name: 'ansGrpCommercialRadio'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpCommercialRadio),
    (ansGrpCommercialRadio)-[:HAS_ANSWER {order: 5}]->(ansCommercialRadio),
    (ansGrpCommercialRadio)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1b', url: '', type: 'CAT', scale: true}),

    (ansGrpPaging:AnswerGroup {name: 'ansGrpPaging'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpPaging),
    (ansGrpPaging)-[:HAS_ANSWER {order: 6}]->(ansPaging),
    (ansGrpPaging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4e', url: '', type: 'CAT', scale: true}),

    (ansGrpAudioVisual:AnswerGroup {name: 'ansGrpAudioVisual'}),
    (qiRadio)-[:HAS_ANSWER_GROUP]->(ansGrpAudioVisual),
    (ansGrpAudioVisual)-[:HAS_ANSWER {order: 7}]->(ansAudioVisual),
    (ansGrpAudioVisual)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4b', url: '', type: 'CAT', scale: true}),
    (ansGrpAudioVisual)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6225'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpTelephony:AnswerGroup {name: 'ansGrpTelephony'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTelephony),
(ansGrpTelephony)-[:HAS_ANSWER {order: 5}]->(ansTelephony),
(ansGrpTelephony)-[:HAS_OUTCOME]->(qiTelephony:QuestionInstance:Outcome {uuid: 'f91fec16-fa3b-4954-9343-48eb2f00a7a8'})-[:DEFINED_BY]->(qstnService),

    (ansGrpInternet:AnswerGroup {name: 'ansGrpInternet'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpInternet),
    (ansGrpInternet)-[:HAS_ANSWER {order: 1}]->(ansInternet),
    (ansGrpInternet)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4b', url: '', type: 'CAT', scale: true}),

    (ansGrpAnalogueTelephony:AnswerGroup {name: 'ansGrpAnalogueTelephony'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpAnalogueTelephony),
    (ansGrpAnalogueTelephony)-[:HAS_ANSWER {order: 2}]->(ansAnalogueTelephony),
    (ansGrpAnalogueTelephony)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4a', url: '', type: 'CAT', scale: true}),

    (ansGrpInboundTelephony:AnswerGroup {name: 'ansGrpInboundTelephony'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpInboundTelephony),
    (ansGrpInboundTelephony)-[:HAS_ANSWER {order: 3}]->(ansInboundTelephony),
    (ansGrpInboundTelephony)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4d', url: '', type: 'CAT', scale: true}),

    (ansGrpMore:AnswerGroup {name: 'ansGrpMore'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpMore),
    (ansGrpMore)-[:HAS_ANSWER {order: 4}]->(ansMore),
    (ansGrpMore)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpDigital:AnswerGroup {name: 'ansGrpDigital'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDigital),
(ansGrpDigital)-[:HAS_ANSWER {order: 6}]->(ansDigital),
(ansGrpDigital)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4b', url: '', type: 'CAT', scale: true}),

(ansGrpCommunication:AnswerGroup {name: 'ansGrpCommunication'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCommunication),
(ansGrpCommunication)-[:HAS_ANSWER {order: 7}]->(ansCommunication),
(ansGrpCommunication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '3b', url: '', type: 'CAT', scale: true}),

(ansGrpCCS:AnswerGroup {name: 'ansGrpCCS'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCCS),
(ansGrpCCS)-[:HAS_ANSWER {order: 8}]->(ansCCS),
(ansGrpCCS)-[:HAS_OUTCOME]->(qiCCS:QuestionInstance:Outcome {uuid: '9c3b7cae-5a3a-4430-b0fb-7026ef02aa61'})-[:DEFINED_BY]->(qstnContactCentreTechnology),

    (ansGrpYes1:AnswerGroup {name: 'ansGrpYes1'}),
    (qiCCS)-[:HAS_ANSWER_GROUP]->(ansGrpYes1),
    (ansGrpYes1)-[:HAS_ANSWER {order: 1}]->(ansYes1),
    (ansGrpYes1)-[:HAS_OUTCOME]->(qiYes:QuestionInstance:Outcome {uuid: 'f0c0ddce-e81c-43a4-97f5-66e14711e0e6'})-[:DEFINED_BY]->(qstnContactCenterStaff),

        (ansGrpYes2:AnswerGroup {name: 'ansGrpYes2'}),
        (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpYes2),
        (ansGrpYes2)-[:HAS_ANSWER {order: 1}]->(ansYes2),
        (ansGrpYes2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpNo2:AnswerGroup {name: 'ansGrpNo2'}),
        (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpNo2),
        (ansGrpNo2)-[:HAS_ANSWER {order: 2}]->(ansNo2),
        (ansGrpNo2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '4c', url: '', type: 'CAT', scale: true}),

    (ansGrpNo1:AnswerGroup {name: 'ansGrpNo1'}),
    (qiCCS)-[:HAS_ANSWER_GROUP]->(ansGrpNo1),
    (ansGrpNo1)-[:HAS_ANSWER {order: 2}]->(ansNo1),
    (ansGrpNo1)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpCritical:AnswerGroup {name: 'ansGrpCritical'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCritical),
(ansGrpCritical)-[:HAS_ANSWER {order: 9}]->(ansCritical),
(ansGrpCritical)-[:HAS_OUTCOME]->(qiCritical:QuestionInstance:Outcome {uuid: 'cbd11262-b657-4390-b6c2-af899ab76ad4'})-[:DEFINED_BY]->(qstnService),

    (ansGrpIntegrated:AnswerGroup {name: 'ansGrpIntegrated'}),
    (qiCritical)-[:HAS_ANSWER_GROUP]->(ansGrpIntegrated),
    (ansGrpIntegrated)-[:HAS_ANSWER {order: 1}]->(ansIntegrated),
    (ansGrpIntegrated)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '1d', url: '', type: 'CAT', scale: true}),

    (ansGrpPublic:AnswerGroup {name: 'ansGrpPublic'}),
    (qiCritical)-[:HAS_ANSWER_GROUP]->(ansGrpPublic),
    (ansGrpPublic)-[:HAS_ANSWER {order: 2}]->(ansPublic),
    (ansGrpPublic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6167'}),

(ansGrpSmartCity:AnswerGroup {name: 'ansGrpSmartCity'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSmartCity),
(ansGrpSmartCity)-[:HAS_ANSWER {order: 10}]->(ansSmartCity),
(ansGrpSmartCity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'})-[:HAS_LOT]->(:Lot {number: '3a', url: '', type: 'CAT', scale: true}),

(ansGrpTraffic:AnswerGroup {name: 'ansGrpTraffic'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTraffic),
(ansGrpTraffic)-[:HAS_ANSWER {order: 11}]->(ansTraffic),
(ansGrpTraffic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'}),

(ansGrpSomething:AnswerGroup {name: 'ansGrpSomething'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSomething),
(ansGrpSomething)-[:HAS_ANSWER {order: 12}]->(ansSomething),
(ansGrpSomething)-[:HAS_OUTCOME]->(resultCCSEscapePage);