MATCH
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})


CREATE
// Answers
(ansSoftwareFocusedSolutions:Answer {
    uuid: '308d5c82-23e9-4502-933b-92564591f908',
    text: 'Software focused solutions',
    hint: 'Specific industry needs, business application or services, including:
    <ul>
        <li>software licences</li>
        <li>associated hardware</li>
        <li>app-related consultancy services</li>
        <li>software support and maintenance</li>
    </ul>'
}),

(ansSaaS:Answer {
    uuid: 'a443aff0-861e-48d9-b91b-5e8846f23904',
    text: 'Software as a service (SaaS), new software requirements and all back office functions',
    hint: 'Non bespoke and readily available software and or associated professional services to help configure and implement new solutions. Including:
    <ul>
        <li>enterprise resource planning (ERP): the ability to provide an integrated suite of business applications</li>
        <li>human capital management (HCM): a set of practices related to people resource management finance</li>
        <li>customer relationship management</li>
        <li>procurement and sourcing portals</li>
        <li>workflow technologies</li>
        <li>content management</li>
        <li>integration software</li>
    </ul>'
}),

(ansBusinessApplication:Answer {
    uuid: '344d11f9-fe32-4c24-aef7-48a48a942b7b',
    text: 'Business application solutions',
    hint: 'Computer software used  for day-to-day’ business operations such as:
    <ul>
        <li>revenues and Benefits Solution</li>
        <li>payment processing and cash receipting solution</li>
        <li>civil enforcement solutions</li>
        <li>workflow, asset and document management systems</li>
        <li>electronic client records</li>
    </ul>'
}),

(ansEducation:Answer {
    uuid: '17bb5661-5f7a-461b-98da-8c864a60625e',
    text: 'Education, community health and social care solutions',
    hint: 'Services and software solutions for customers such as Local Government, Academic and Health customers to access in the following areas;
    <ul>
        <li>learning applications and platforms;</li>
        <li>education, academic scheduling and management solutions (EMS)</li>
        <li>community health and social care solutions</li>
        <li>enterprise health solutions</li>
        <li>safeguarding software</li>
        <li>community health and social care case management</li>
    </ul>'
}),

(ansHousing:Answer {
    uuid: '29b56cd4-8083-4d19-bcc7-123db8e22c1d',
    text: 'Housing, environmental and planning solutions',
    hint: 'Services and software solutions such as;
    <ul>
        <li>environmental planning</li>
        <li>building control</li>
        <li>local land changes</li>
        <li>regulatory services licensing</li>
        <li>property, housing management</li>
        <li>geographic information system (GIS)</li>
        <li>waste management solutions</li>
        <li>built environment</li>
    </ul>'
}),

(ansCitizenServices:Answer {
    uuid: '119bdd18-ba67-4c31-b228-4fc1c65837a6',
    text: 'Citizen services',
    hint: 'Services and software solutions such as;
    <ul>
        <li>library solutions</li>
        <li>museums systems</li>
        <li>sports and recreation systems</li>
        <li>registrar systems</li>
        <li>democratic and citizen engagement systems</li>
        <li>electoral management solutions</li>
        <li>citizen information provision and consultation</li>
        <li>burials and crematoria solutions</li>
    </ul>'
}),

(ansBlueLightSolutions:Answer {
    uuid: '16a6f10f-671f-4524-80e7-7ad18d0c7754',
    text: 'Blue light solutions',
    hint: 'Services and software solutions such as;
    <ul>
        <li>blue light operations</li>
        <li>intelligence gathering systems</li>
        <li>case and custody applications</li>
        <li>forensics (including digital forensics)</li>
        <li>fraud detection</li>
        <li>real-time analytics</li>
        <li>surveillance, reconnaissance (overt and covert)</li>
        <li>command and control, integrated command and control systems (ICCS)</li>
        <li>emergency response & crisis management</li>
        <li>blue light data and information management</li>
        <li>digital asset management</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnySoftware:Journey {uuid: 'e46d181a-b19e-4a1c-8272-831b57c9ac6f', name: 'Software'}),
(jrnySoftware)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '41ab08cf-9b51-420c-9eb4-90a990405a80'})-[:DEFINED_BY]->(qstnService),


(ansGrpSoftwareFocusedSolutions:AnswerGroup {name: 'ansGrpSoftwareFocusedSolutions'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSoftwareFocusedSolutions),
(ansGrpSoftwareFocusedSolutions)-[:HAS_ANSWER {order: 1}]->(ansSoftwareFocusedSolutions),
(ansGrpSoftwareFocusedSolutions)-[:HAS_OUTCOME]->(qiSoftwareFocusedSolutions:QuestionInstance:Outcome {uuid: '4007eaf6-0d14-43d4-bdb9-6c3af98be0f0'})-[:DEFINED_BY]->(qstnService),

    (ansGrpBusinessApplication:AnswerGroup {name: 'ansGrpBusinessApplication'}),
    (qiSoftwareFocusedSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpBusinessApplication),
    (ansGrpBusinessApplication)-[:HAS_ANSWER {order: 1}]->(ansBusinessApplication),
    (ansGrpBusinessApplication)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6259'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),
    
    (ansGrpEducation:AnswerGroup {name: 'ansGrpEducation'}),
    (qiSoftwareFocusedSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpEducation),
    (ansGrpEducation)-[:HAS_ANSWER {order: 2}]->(ansEducation),
    (ansGrpEducation)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6259'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpHousing:AnswerGroup {name: 'ansGrpHousing'}),
    (qiSoftwareFocusedSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpHousing),
    (ansGrpHousing)-[:HAS_ANSWER {order: 3}]->(ansHousing),
    (ansGrpHousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6259'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpCitizenServices:AnswerGroup {name: 'ansGrpCitizenServices'}),
    (qiSoftwareFocusedSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpCitizenServices),
    (ansGrpCitizenServices)-[:HAS_ANSWER {order: 4}]->(ansCitizenServices),
    (ansGrpCitizenServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6259'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

    (ansGrpBlueLightSolutions:AnswerGroup {name: 'ansGrpBlueLightSolutions'}),
    (qiSoftwareFocusedSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLightSolutions),
    (ansGrpBlueLightSolutions)-[:HAS_ANSWER {order: 5}]->(ansBlueLightSolutions),
    (ansGrpBlueLightSolutions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6259'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpSaaS:AnswerGroup {name: 'ansGrpSaaS'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSaaS),
(ansGrpSaaS)-[:HAS_ANSWER {order: 2}]->(ansSaaS),
(ansGrpSaaS)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6194'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});