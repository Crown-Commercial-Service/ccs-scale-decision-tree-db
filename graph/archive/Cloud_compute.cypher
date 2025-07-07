CREATE
(qstnFirstQuestion:Question {uuid: '5fa4e4b8-e2cd-4b51-a94b-0c336b883cd0', text: 'What type of cloud hosting do you need?', type: 'LIST'}),

(ansCore:Answer {
    uuid: '6125a53e-b0af-480e-9cfe-4af36cad8c90',
    text: 'Core Services',
    hint: 'Access all commercial off-the-shelf services, including: 
    <ul>
        <li>platform-as-a-service (PaaS): provides hardware and software tools over the internet for application development (the provider hosts the hardware and software)</li>
        <li>infrastructure-as-a-service (IaaS): a cloud computing service that offers compute, storage and networking resources on demand, with pay-as-you-go pricing</li>
        <li>cloud-native microservices: small, independent software components that work together as a complete cloud-native software, such as third-party subscription services and virtualisation tools</li>
        <li>hybrid and \'edge\' computing: host some computing capacities on-site and the rest in a data centre</li>
    </ul>
    You can also add professional services, such as auditing, consultancy, training and customer or enterprise support'
}),

(ansValue:Answer {
    uuid: '924536c1-335b-4796-b30a-cd7cd44f502d',
    text: 'Value-Added Ancillary Services',
    hint: 'Value-Added Ancillary Services (VAAS) help make the cloud self-sufficient, secure and cost-effective. You can:
    <ul>
        <li>buy core cloud services from a reseller or cloud partner (core cloud capabilities are those that most applications will require simply to run)</li>
        <li>buy resold cloud services and VAAS either separately or together</li>
        <li>add professional services as extras, such as:
            <ul>
                <li>auditing</li>
                <li>consultancy</li>
                <li>training</li>
                <li>customer or enterprise support</li>
                </ul>
        </li>
    </ul>'
}),

(ansProfessional:Answer {
    uuid: 'a2ef7687-417a-40dc-aa69-f4e4d84af8a3',
    text: 'Professional Services',
    hint: 'Buy professional cloud services including: 
    <ul>
        <li>cloud consultancy</li>
        <li>adoption planning and support for moving from existing on-premises computing solutions to the cloud</li>
        <li>user training for cloud migration</li>
        <li>support for developing target operating models and cloud strategies</li>
        <li>auditing services</li>
        <li>customer and enterprise support provided by cloud partners</li>
    </ul>'
}),

(ansCloud:Answer {
    uuid: '22fba955-700e-43bf-b6cd-cecdfb6ebdf0',
    text: 'Cloud Secure+',
    hint: 'Access the full range of services in lots 1, 2 and 3. This ensures compliance with the UK secret security classification requirements (this is above official security classification).'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCloud2:Journey {uuid: 'a366dde4-203a-4389-b8d7-ccf8824cf5fe', name: 'Cloud Compute 2'}),
(jrnyCloud2)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '0999f16e-d63e-418b-9c7d-7302b9c38658'})-[:DEFINED_BY]->(qstnFirstQuestion),

(ansGrpCore:AnswerGroup {name: 'ansGrpCore'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCore),
(ansGrpCore)-[:HAS_ANSWER {order: 1}]->(ansCore),
(ansGrpCore)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6292'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpValue:AnswerGroup {name: 'ansGrpValue'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpValue),
(ansGrpValue)-[:HAS_ANSWER {order: 2}]->(ansValue),
(ansGrpValue)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6292'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpProfessional:AnswerGroup {name: 'ansGrpProfessional'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpProfessional),
(ansGrpProfessional)-[:HAS_ANSWER {order: 3}]->(ansProfessional),
(ansGrpProfessional)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6292'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpCloud:AnswerGroup {name: 'ansGrpCloud'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCloud),
(ansGrpCloud)-[:HAS_ANSWER {order: 4}]->(ansCloud),
(ansGrpCloud)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6292'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true})
