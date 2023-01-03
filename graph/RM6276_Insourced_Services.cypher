MATCH

(qstnFirstQuestion:Question {uuid: '6530dfa4-a1b1-40c7-8f06-77045302fa4a'})

CREATE

// ANSWERS

(ansSurgicalAndMedicalSpecialties:Answer {
    uuid: '96e2d28f-8348-4468-8bf1-e4553b3c22e9',
    text: 'Full range of surgical and medical specialties',
    hint: 'Access a range of surgical and medical solutions to help you provide an end to end healthcare service. Services can include:
    <ul>
        <li>cardiology diagnostics: methods of identifying heart conditions</li>
        <li>diagnostic imaging: uses images of inside the body to help diagnose medical conditions</li>
        <li>endoscopy: allows doctors to see inside the body using an instrument called an endoscope</li>
        <li>ophthalmology: the diagnosis, treatment and prevention of disorders of the eye</li>
        <li>orthopaedics: treats injuries and diseases of your bones, joints, ligaments, tendons, muscles, and nerves</li>
        <li>physiotherapy: helps to restore movement and function after injury, illness or disability</li>
        <li>other medical or surgical specialties including general surgery, gynaecology, urology and dermatology</li>
    </ul>'
}),

(ansPatientPathways:Answer {
    uuid: 'a4a34a28-eea5-432c-9bd9-4cf75966845b',
    text: 'Managed solutions for full or partial patient pathways',
    hint: 'Access suppliers to manage the patient pathway. This can include managing:
     <ul>
        <li>outpatients</li>
        <li>diagnostics</li>
        <li>survey</li>
        <li>ward</li>
        <li>non-clinical administration</li>
    </ul>
    A patient pathway is the route a patient will take from first contact with a NHS staff member (usually a GP) through to referral and completion of treatment'
}),

(ansOtherServices:Answer {
    uuid: '89e9a400-0518-44b5-8d77-0136f6c05f88',
    text: 'Other health, community or population services',
    hint: 'Access health and social care services designed to improve wellbeing and reduce health inequalities. Includes:
     <ul>
        <li>mental health services</li>
        <li>health services provided by community health centres</li>
        <li>population services provided by the NHS, central government and local authorities such as housing, employment and education services</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyInsourcedServices:Journey {uuid: '50fefe83-cc6d-4c12-af81-085e656a420f', name: 'Health'}),
(jrnyInsourcedServices)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '3f108619-df40-4257-a71a-969811cb895d'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpSurgicalAndMedicalSpecialties:AnswerGroup {name: 'ansGrpSurgicalAndMedicalSpecialties'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSurgicalAndMedicalSpecialties),
    (ansGrpSurgicalAndMedicalSpecialties)-[:HAS_ANSWER {order: 1}]->(ansSurgicalAndMedicalSpecialties),
    (ansGrpSurgicalAndMedicalSpecialties)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6276'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpPatientPathways:AnswerGroup {name: 'ansGrpPatientPathways'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPatientPathways),
    (ansGrpPatientPathways)-[:HAS_ANSWER {order: 2}]->(ansPatientPathways),
    (ansGrpPatientPathways)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6276'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpOtherServices:AnswerGroup {name: 'ansGrpOtherServices'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpOtherServices),
    (ansGrpOtherServices)-[:HAS_ANSWER {order: 3}]->(ansOtherServices),
    (ansGrpOtherServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6276'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true});
