MATCH
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE
// Questions
(qstnFirstQ:Question {uuid: '516287ea-9709-43b2-a2b2-87e3a16ce2e3', text: 'What type of network service do you need?', type: 'LIST'}),

(qstnConnectivity:Question {uuid: 'b50f2f4f-9dd2-40f3-91e9-92cd8d4c0576', text: 'What type of connectivity do you need?', type: 'LIST'}),
(qstnTelephony:Question {uuid: '783417a6-4a54-439e-9f30-4122fc0c14e6', text: 'What type of telephony do you need?', type: 'LIST'}),
(qstnMobileService:Question {uuid: '56a15a16-263f-45d4-861f-e98792144de2', text: 'What type of mobile service do you need?', type: 'LIST'}),
(qstnConsultancy:Question {uuid: '91ebe974-88f1-4857-b7e0-ba940223030a', text: 'Do you need consultancy support to help you define your needs?', type: 'LIST'}),
(qstnContactCentre:Question {uuid: '3fbfc864-4f7e-4c99-9115-de9173d9105b', text: 'Do you need contact centre technology and services?', type: 'LIST'}),
(qstnCCTV:Question {uuid: '61202a8c-7eb9-43ec-8032-9752d0206f6c', text: 'Do you need CCTV services or equipment?', type: 'LIST'}),

(qstnWanOrLan:Question {uuid: '1cc3dd79-7869-4687-ada7-62981b211798', text: 'Do you need wide area network (WAN) services, local area network (LAN) services or both?', type: 'LIST'}),
(qstnConferencing:Question {uuid: '302878c8-cc17-43a4-8d5a-7136d2febea7', text: 'What type of conferencing service do you need?', type: 'LIST'}),
(qstnContactCentreStaff:Question {uuid: 'ca801cc6-4993-4387-b1f8-57139161eab1', text: 'Do you need contact centre staff?', type: 'LIST'}),


// Answer
(ansConnectivityServices:Answer {uuid: 'f8f82fe0-157f-413a-a135-71ccd2427986', text: 'Connectivity services', hint: 'Provides wide area network (WAN) and local area network (LAN) services. WAN is a communications network which allows you to connect with devices in other networks and over a large geographical area. LAN provides a computer network that connects devices in specific areas such as a school or office building. You can also access internet service providers (ISP), network security services, broadband installation or upgrades and associated equipment'}),
(ansFixedTelephony:Answer {uuid: '1b1c301d-e3e3-46b4-85f7-05f6bccc5da1', text: 'Fixed telephony', hint: 'Allows you to make calls or connect to the internet using a fixed cable instead of a wireless connection. Includes traditional landline telephones, Internet Protocol (IP) which enables voice calls over the internet and managing inbound calls to non-geographical numbers'}),
(ansMobileServices:Answer {uuid: '112e04c3-69aa-45c0-b585-3d8675412030', text: 'Mobile services', hint: 'Voice calls and Short Message Services (SMS) for mobile devices. Includes voicemail, paging, radio, email and data connectivity'}),
(ansConferencingServices:Answer {uuid: '263fa7f4-0a1b-486d-a158-49c04da661b7', text: 'Conferencing services', hint: 'Online technology which will allow you to hold meetings with users in different locations. Includes video and audio conferencing as well as software management tools and associated services'}),
(ansContactCentreServices:Answer {uuid: 'a09a0fd1-077e-480a-b995-92aa47e715ab', text: 'Contact centre services', hint: 'Allows you to make outbound calls and redirect incoming calls to a predefined destination, such as a specific contact centre'}),
(ansCCTV:Answer {uuid: '67a7121b-cfed-460a-9316-81de37133860', text: 'CCTV services', hint: 'Provides CCTV and physical security monitoring equipment such as image recognition and recording appliances, access control and automated gates or barriers. Also includes services to access video and audio footage from the monitoring equipment instantly'}),
(ansUnifiedCommunications:Answer {uuid: 'ecc7b684-a043-43cf-b031-e0bfba1a3239', text: 'Unified communications', hint: 'Application or platform that provides multiple communication methods including voice, video and data services'}),
(ansSomethingElse:Answer {uuid: '852fa20e-6a56-4b0d-b2c8-20e3c402072b', text: 'Something else', hint: 'I want to buy more than one of these services through a single procurement'}),

(ansConnectivityOnly:Answer {uuid: 'ae3f4ea0-cbf3-4b9f-b042-5d4da2a3d643', text: 'Connectivity only', hint: 'Access connectivity services such as WAN, internet service providers, network security and broadband without any additional services or equipment'}),
(ansConnectivityAddServices:Answer {uuid: 'b17ff968-747e-45f5-b0a0-6b1ebe19d456', text: 'Connectivity with additional services', hint: 'Access WAN and LAN connectivity. Includes additional services such as equipment maintenance and support'}),
(ansIpTelephony:Answer {uuid: '18117836-11c3-42a9-95a4-91f4a922de7e', text: 'Internet Protocol (IP) telephony', hint: 'Make and receive voice calls over the internet'}),
(ansTraditionalTelephony:Answer {uuid: '4cabbf34-9aab-4441-93d7-ee4a184cb6ae', text: 'Traditional telephony', hint: 'Traditional telephone services such as landline phones which use the <a href="https://www.crowncommercial.gov.uk/news/the-closure-of-the-public-switched-telephone-network" target="_blank">Public Switched Telephone Network (PSTN)</a>. PSTN is closing in December 2025. You can access support to help you move from PSTN to IP telephone services'}),
(ansNonGeographic:Answer {uuid: 'edbc37b7-91ee-47b5-b7ea-2443728b34dd', text: 'Non-Geographic numbers', hint: 'Management services for inbound calls made to call centres. This includes managing calls to non-geographical numbers such as 03, 05, 08 or 09. Also includes maintenance of associated equipment and support services'}),
(ansMore:Answer {uuid: 'a18dd818-a8c9-4a4f-b49d-8c8d7c413ea6', text: 'I need more than one of these options'}),
(ansVoiceData:Answer {uuid: '9431a94c-043a-4b47-bc82-75c4792ddd2e', text: 'Voice and/or data services', hint: 'Includes voice calls, voicemail, SMS texting, access to email and mobile data connectivity services'}),
(ansPaging:Answer {uuid: '46a00c31-ecab-4cb6-8003-17a59df7c76b', text: 'Paging and alerting services', hint: 'Access paging and mobile messaging and alerting services. Includes associated equipment, maintenance and support services'}),
(ansRadioServices:Answer {uuid: 'a5ccfea8-5ef6-4070-839b-3e9b305ede4f', text: 'Radio services', hint: 'Make and receive voice calls through the use of radio. Includes Ultra High Frequency (UHF) or Very High Frequency (VHF) radio waves'}),
(ansYesConferencing:Answer {uuid: 'e25bb2bb-4be1-41d2-ad7d-562623cdc7ca', text: 'Yes', hint: 'I need help defining my conferencing needs'}),
(ansNoConferencing:Answer {uuid: '0fabb4b0-bbe0-4ce8-a170-590cc4a0f853', text: 'No', hint: 'I do not need help defining my conferencing needs'}),
(ansYesContactCentre:Answer {uuid: '704ceace-63f9-4a04-ba1d-1afed6871d81', text: 'Yes', hint: 'Access consultancy services to help you define and understand your needs. Also includes telephony, email and web-based communication services for contact centres'}),
(ansNoContactCentre:Answer {uuid: 'd690fc55-695d-46ec-b8eb-51f45593d921', text: 'No', hint: 'What I need is not listed here'}),
(ansCCTVServices:Answer {uuid: '5296ae57-e422-46e8-bdb7-984175752db1', text: 'CCTV services', hint: 'Includes equipment installation, maintenance and support services'}),
(ansEquipment:Answer {uuid: '44e11723-3469-4ba7-a037-01089676d348', text: 'Equipment only', hint: 'Includes items such as CCTV cameras, sensors and monitoring units'}),

(ansWAN:Answer {uuid: '961c0c45-6629-430c-91ba-980ed16d8c11', text: 'WAN with additional services', hint: 'Allows you to connect with devices in other networks and over a large geographical area. Includes additional services such as equipment maintenance and support'}),
(ansLAN:Answer {uuid: 'd059b365-2865-4d56-a353-1095ee5284dd', text: 'LAN with additional services', hint: 'Provides a computer network that connects devices in specific areas such as a school or office building. Includes additional services such as equipment maintenance and support'}),
(ansWanAndLan:Answer {uuid: 'e4ad94ed-32b2-40eb-bbc6-7b59db8208a0', text: 'WAN and LAN with additional services', hint: 'Access WAN and LAN connectivity networks. Includes additional services such as equipment maintenance and support'}),
(ansVideoConferencing:Answer {uuid: 'd27a304f-aefb-423d-840d-fb31fbdcd5f1', text: 'Video Conferencing', hint: 'Allows users to hold face to face meetings online without having to be in the same location. Includes software management tools, call recording, training, transcribing and translation services'}),
(ansAudioConferencing:Answer {uuid: 'f658f502-684b-4920-bee8-788147eaad3d', text: 'Audio Conferencing', hint: 'Allows users to hold telephone meetings with multiple callers in different locations. Calls can take place using traditional telephone services or over the internet. Services include call recording, software management, transcribing and translation services'}),
(ansUnifiedCommunication:Answer {uuid: '5ea6a2a9-62ff-4a53-8e54-70ad3da517a2', text: 'Unified communication solutions', hint: 'Application or platform that provides multiple communication methods including voice, video and data services'}),
(ansStaffNeeded:Answer {uuid: 'd3dbc243-99a5-4ba5-9e06-ff80cc3a5f89', text: 'Staff needed', hint: 'Provides contact centre workers. This does not include workers who install or maintain the contact centre services'}),
(ansStaffNotNeeded:Answer {uuid: '3f1de833-f5ef-4545-8bcf-0131497049a5', text: 'Staff not needed'}),


// Tree Structure
(jrnyNetworkServicesTwo:Journey {uuid: '611b0f3f-da0d-4a5b-804e-2bbcd24086c7', name: 'Network Services 2'}),
(jrnyNetworkServicesTwo)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'c8009e32-cdc8-4a0b-86c0-a61ed331b871'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpConnectivityServices:AnswerGroup {name: 'ansGrpConnectivityServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivityServices),
(ansGrpConnectivityServices)-[:HAS_ANSWER {order: 1}]->(ansConnectivityServices),
(ansGrpConnectivityServices)-[:HAS_OUTCOME]->(qiConnectivity:QuestionInstance:Outcome {uuid: 'fa462ffd-1cfb-4940-a919-a70423c433bc'})-[:DEFINED_BY]->(qstnConnectivity),

    (ansGrpConnectivityOnly:AnswerGroup {name: 'ansGrpConnectivityOnly'}),
    (qiConnectivity)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivityOnly),
    (ansGrpConnectivityOnly)-[:HAS_ANSWER {order: 1}]->(ansConnectivityOnly),
    (ansGrpConnectivityOnly)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    (ansGrpConnectivityAddServices:AnswerGroup {name: 'ansGrpConnectivityAddServices'}),
    (qiConnectivity)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivityAddServices),
    (ansGrpConnectivityAddServices)-[:HAS_ANSWER {order: 2}]->(ansConnectivityAddServices),
    (ansGrpConnectivityAddServices)-[:HAS_OUTCOME]->(qiWanOrLan:QuestionInstance:Outcome {uuid: 'a3076b4b-d950-4770-8457-92d07ae95ce1'})-[:DEFINED_BY]->(qstnWanOrLan),

        (ansGrpWAN:AnswerGroup {name: 'ansGrpWAN'}),
        (qiWanOrLan)-[:HAS_ANSWER_GROUP]->(ansGrpWAN),
        (ansGrpWAN)-[:HAS_ANSWER {order: 1}]->(ansWAN),
        (ansGrpWAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
        (ansGrpWAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3825'}),

        (ansGrpLAN:AnswerGroup {name: 'ansGrpLAN'}),
        (qiWanOrLan)-[:HAS_ANSWER_GROUP]->(ansGrpLAN),
        (ansGrpLAN)-[:HAS_ANSWER {order: 2}]->(ansLAN),
        (ansGrpLAN)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpWanAndLan:AnswerGroup {name: 'ansGrpWanAndLan'}),
        (qiWanOrLan)-[:HAS_ANSWER_GROUP]->(ansGrpWanAndLan),
        (ansGrpWanAndLan)-[:HAS_ANSWER {order: 3}]->(ansWanAndLan),
        (ansGrpWanAndLan)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
        (ansGrpWanAndLan)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpFixedTelephony:AnswerGroup {name: 'ansGrpFixedTelephony'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFixedTelephony),
(ansGrpFixedTelephony)-[:HAS_ANSWER {order: 2}]->(ansFixedTelephony),
(ansGrpFixedTelephony)-[:HAS_OUTCOME]->(qiTelephony:QuestionInstance:Outcome {uuid: 'bd88ce56-da75-4b3c-b672-d25fc260a6f8'})-[:DEFINED_BY]->(qstnTelephony),

    (ansGrpIpTelephony:AnswerGroup {name: 'ansGrpIpTelephony'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpIpTelephony),
    (ansGrpIpTelephony)-[:HAS_ANSWER {order: 1}]->(ansIpTelephony),
    (ansGrpIpTelephony)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpTraditionalTelephony:AnswerGroup {name: 'ansGrpTraditionalTelephony'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpTraditionalTelephony),
    (ansGrpTraditionalTelephony)-[:HAS_ANSWER {order: 2}]->(ansTraditionalTelephony),
    (ansGrpTraditionalTelephony)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpNonGeographic:AnswerGroup {name: 'ansGrpNonGeographic'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpNonGeographic),
    (ansGrpNonGeographic)-[:HAS_ANSWER {order: 3}]->(ansNonGeographic),
    (ansGrpNonGeographic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpMore:AnswerGroup {name: 'ansGrpMore'}),
    (qiTelephony)-[:HAS_ANSWER_GROUP]->(ansGrpMore),
    (ansGrpMore)-[:HAS_ANSWER {order: 4}]->(ansMore),
    (ansGrpMore)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpMobileServices:AnswerGroup {name: 'ansGrpMobileServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpMobileServices),
(ansGrpMobileServices)-[:HAS_ANSWER {order: 3}]->(ansMobileServices),
(ansGrpMobileServices)-[:HAS_OUTCOME]->(qiMobileService:QuestionInstance:Outcome {uuid: '511b4ece-070a-46f4-aa04-d4094393b399'})-[:DEFINED_BY]->(qstnMobileService),

    (ansGrpVoiceData:AnswerGroup {name: 'ansGrpVoiceData'}),
    (qiMobileService)-[:HAS_ANSWER_GROUP]->(ansGrpVoiceData),
    (ansGrpVoiceData)-[:HAS_ANSWER {order: 1}]->(ansVoiceData),
    (ansGrpVoiceData)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

    (ansGrpPaging:AnswerGroup {name: 'ansGrpPaging'}),
    (qiMobileService)-[:HAS_ANSWER_GROUP]->(ansGrpPaging),
    (ansGrpPaging)-[:HAS_ANSWER {order: 2}]->(ansPaging),
    (ansGrpPaging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

    (ansGrpRadioServices:AnswerGroup {name: 'ansGrpRadioServices'}),
    (qiMobileService)-[:HAS_ANSWER_GROUP]->(ansGrpRadioServices),
    (ansGrpRadioServices)-[:HAS_ANSWER {order: 3}]->(ansRadioServices),
    (ansGrpRadioServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '11', url: '', type: 'CAT', scale: true}),    

    (ansGrpMoreForMobile:AnswerGroup {name: 'ansGrpMoreForMobile'}),
    (qiMobileService)-[:HAS_ANSWER_GROUP]->(ansGrpMoreForMobile),
    (ansGrpMoreForMobile)-[:HAS_ANSWER {order: 4}]->(ansMore),
    (ansGrpMoreForMobile)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpConferencingServices:AnswerGroup {name: 'ansGrpConferencingServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpConferencingServices),
(ansGrpConferencingServices)-[:HAS_ANSWER {order: 4}]->(ansConferencingServices),
(ansGrpConferencingServices)-[:HAS_OUTCOME]->(qiConsultancy:QuestionInstance:Outcome {uuid: '3d83face-d347-4961-80ec-67e6b1fc6c54'})-[:DEFINED_BY]->(qstnConsultancy),

    (ansGrpYesConferencing:AnswerGroup {name: 'ansGrpYesConferencing'}),
    (qiConsultancy)-[:HAS_ANSWER_GROUP]->(ansGrpYesConferencing),
    (ansGrpYesConferencing)-[:HAS_ANSWER {order: 1}]->(ansYesConferencing),
    (ansGrpYesConferencing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6225'}),


    (ansGrpNoConferencing:AnswerGroup {name: 'ansGrpNoConferencing'}),
    (qiConsultancy)-[:HAS_ANSWER_GROUP]->(ansGrpNoConferencing),
    (ansGrpNoConferencing)-[:HAS_ANSWER {order: 2}]->(ansNoConferencing),
    (ansGrpNoConferencing)-[:HAS_OUTCOME]->(qiConferencing:QuestionInstance:Outcome {uuid: 'de9cda4c-d8b9-4f52-8dcf-b1f1f0c34792'})-[:DEFINED_BY]->(qstnConferencing),

        (ansGrpVideoConferencing:AnswerGroup {name: 'ansGrpVideoConferencing'}),
        (qiConferencing)-[:HAS_ANSWER_GROUP]->(ansGrpVideoConferencing),
        (ansGrpVideoConferencing)-[:HAS_ANSWER {order: 1}]->(ansVideoConferencing),
        (ansGrpVideoConferencing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),    

        (ansGrpAudioConferencing:AnswerGroup {name: 'ansGrpAudioConferencing'}),
        (qiConferencing)-[:HAS_ANSWER_GROUP]->(ansGrpAudioConferencing),
        (ansGrpAudioConferencing)-[:HAS_ANSWER {order: 2}]->(ansAudioConferencing),
        (ansGrpAudioConferencing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '9', url: '', type: 'CAT', scale: true}),    

        (ansGrpUnifiedCommunication:AnswerGroup {name: 'ansGrpUnifiedCommunication'}),
        (qiConferencing)-[:HAS_ANSWER_GROUP]->(ansGrpUnifiedCommunication),
        (ansGrpUnifiedCommunication)-[:HAS_ANSWER {order: 3}]->(ansUnifiedCommunication),
        (ansGrpUnifiedCommunication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '10', url: '', type: 'CAT', scale: true}),

(ansGrpContactCentreServices:AnswerGroup {name: 'ansGrpContactCentreServices'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpContactCentreServices),
(ansGrpContactCentreServices)-[:HAS_ANSWER {order: 5}]->(ansContactCentreServices),
(ansGrpContactCentreServices)-[:HAS_OUTCOME]->(qiContactCentre:QuestionInstance:Outcome {uuid: '03782d3c-c26a-4af2-ad58-1f0ffbf1d020'})-[:DEFINED_BY]->(qstnContactCentre),

    (ansGrpYesContactCentre:AnswerGroup {name: 'ansGrpYesContactCentre'}),
    (qiContactCentre)-[:HAS_ANSWER_GROUP]->(ansGrpYesContactCentre),
    (ansGrpYesContactCentre)-[:HAS_ANSWER {order: 1}]->(ansYesContactCentre),
    (ansGrpYesContactCentre)-[:HAS_OUTCOME]->(qiContactCentreStaff:QuestionInstance:Outcome {uuid: 'f8889214-227e-4f1d-bd06-63bc483fa804'})-[:DEFINED_BY]->(qstnContactCentreStaff),

        (ansGrpStaffNeeded:AnswerGroup {name: 'ansGrpStaffNeeded'}),
        (qiContactCentreStaff)-[:HAS_ANSWER_GROUP]->(ansGrpStaffNeeded),
        (ansGrpStaffNeeded)-[:HAS_ANSWER {order: 1}]->(ansStaffNeeded),
        (ansGrpStaffNeeded)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6181'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpStaffNotNeeded:AnswerGroup {name: 'ansGrpStaffNotNeeded'}),
        (qiContactCentreStaff)-[:HAS_ANSWER_GROUP]->(ansGrpStaffNotNeeded),
        (ansGrpStaffNotNeeded)-[:HAS_ANSWER {order: 2}]->(ansStaffNotNeeded),
        (ansGrpStaffNotNeeded)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '13', url: '', type: 'CAT', scale: true}),

    (ansGrpNoContactCentre:AnswerGroup {name: 'ansGrpNoContactCentre'}),
    (qiContactCentre)-[:HAS_ANSWER_GROUP]->(ansGrpNoContactCentre),
    (ansGrpNoContactCentre)-[:HAS_ANSWER {order: 2}]->(ansNoContactCentre),
    (ansGrpNoContactCentre)-[:HAS_OUTCOME]->(resultCCSEscapePage),

(ansGrpCCTV:AnswerGroup {name: 'ansGrpCCTV'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCCTV),
(ansGrpCCTV)-[:HAS_ANSWER {order: 6}]->(ansCCTV),
(ansGrpCCTV)-[:HAS_OUTCOME]->(qiCCTV:QuestionInstance:Outcome {uuid: 'acaefca9-3ea6-40bf-8665-807ccb555f0c'})-[:DEFINED_BY]->(qstnCCTV),

    (ansGrpCCTVServices:AnswerGroup {name: 'ansGrpCCTVServices'}),
    (qiCCTV)-[:HAS_ANSWER_GROUP]->(ansGrpCCTVServices),
    (ansGrpCCTVServices)-[:HAS_ANSWER {order: 1}]->(ansCCTVServices),
    (ansGrpCCTVServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '12', url: '', type: 'CAT', scale: true}),

    (ansGrpEquipment:AnswerGroup {name: 'ansGrpEquipment'}),
    (qiCCTV)-[:HAS_ANSWER_GROUP]->(ansGrpEquipment),
    (ansGrpEquipment)-[:HAS_ANSWER {order: 2}]->(ansEquipment),
    (ansGrpEquipment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6068'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpUnifiedCommunications:AnswerGroup {name: 'ansGrpUnifiedCommunications'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpUnifiedCommunications),
(ansGrpUnifiedCommunications)-[:HAS_ANSWER {order: 7}]->(ansUnifiedCommunications),
(ansGrpUnifiedCommunications)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'})-[:HAS_LOT]->(:Lot {number: '10', url: '', type: 'CAT', scale: true}),

(ansGrpSomethingElse:AnswerGroup {name: 'ansGrpSomethingElse'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSomethingElse),
(ansGrpSomethingElse)-[:HAS_ANSWER {order: 8}]->(ansSomethingElse),
(ansGrpSomethingElse)-[:HAS_OUTCOME]->(resultCCSEscapePage)