MATCH

(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})


CREATE

// QUESTIONS

// Questions: level 1
(qstnFirstQ:Question {
    uuid: 'e7789e0b-4509-4133-a999-f9bd425f3ac4',
    text: 'Where do you need the language services?',
    type: 'LIST'
}),

// Questions: level 2
(qstnWhatRegion:Question {
    uuid: 'efceecf9-11b5-4880-9f19-f0b32a865e31',
    text: 'What region do you need?',
    type: 'LIST'
}),



// ANSWERS

// Answers: level 1

(ansInternationally:Answer {
    uuid: 'dd856d8c-d8b4-4af8-b988-21908ba991e3',
    text: 'Internationally',
    hint: 'Provides language services overseas and outside of the UK. Services include:
    <ul>
        <li>face to face spoken and unspoken interpreting services</li>
        <li>translation, transcription and ancillary services</li>
        <li>spoken and unspoken telephone and video interpreting</li>
    </ul>'
}),

(ansNationally:Answer {
    uuid: 'e060c92a-401e-4c1c-89c9-6622252df958',
    text: 'Nationally',
    hint: 'Access language services available to use across the UK'
}),


(ansRegionally:Answer {
    uuid: '8acb0c04-9052-48ca-9f96-1682bd504159',
    text: 'Regionally',
    hint: 'Access language services available to use in specific regions of the UK'
}),



// ANSWERS: level 2 

// Nationally

(ansNationallyManagedService:Answer {
    uuid: 'c90d3f7a-a88c-4f14-9044-2deca634ee77',
    text: 'Nationally managed service',
    hint: 'Provides a managed service throughout the UK. You can buy one, some or all services including:
    <ul>
        <li>face to face spoken and unspoken interpreting</li>
        <li>spoken and unspoken telephone and video interpreting</li>
        <li>translation, transcription and ancillary services</li>
    </ul>'
}),

(ansTranslationTranscriptionAncillary:Answer {
    uuid: '0704bd2a-c5fc-452f-b9c1-5bbf7f89730f',
    text: 'Translation, Transcription and Ancillary Services',
    hint: 'Provides translation, transcription and ancillary services throughout the United Kingdom. Services include:
    <ul>
        <li>translation: the conversion of written documents into another language as text</li>
        <li>transcription: the conversion of audio recordings into alternative formats (such as print or video)</li>
        <li>ancillary services: supporting services (such as editing and formatting)</li>
    </ul>'
}),

(ansTelephoneAndSpokenVideoInterpreting:Answer {
    uuid: '29d0da0c-3308-4f2e-8138-d2a0c0f6dadb',
    text: 'Telephone and Spoken Video Interpreting',
    hint: 'Provides telephone and spoken video interpreting services throughout the United Kingdom. Services include:
    <ul>
        <li>a scheduled telephone or video interpreting service (for customers who prefer to book an interpreter in advance)</li>
        <li>on demand telephone interpreting (for non-English speakers who need to use an interpreter immediately over the telephone)</li>
    <ul>'
}),

(ansQualityAssuranceAssessment:Answer {
    uuid: 'b9c2a5d0-af1b-4c45-b705-46e30db43336',
    text: 'Quality Assurance Assessment Services',
    hint: 'Provides quality assurance checks on services provided by suppliers and any interpreters/translators used to carry out those services. Common services include:
    <ul>
        <li>checking that the supplier meets the needs set out in the booking</li>
        <li>end user surveys</li>
        <li>assessment of a recorded face to face booking (audio or video)</li>
        <li>assessment of a live booking in person (spoken and unspoken)</li>
        <li>assessment of a telephone or video interpretation (spoken and unspoken)</li>
        <li>assessment of translated documents or transcriptions</li>
    </ul>'
}),

// Answers: level 2 – Regionally

(ansNonSpokenLanguageServices:Answer {
    uuid: '5f850b35-1a2b-40ec-a480-88693770057d',
    text: 'Non Spoken Language Services',
    hint: 'Provides unspoken language services for deaf, deaf-blind and others who need support to access English. You can buy one, some or all services. Common services include:
    <ul>
        <li>unspoken face to face interpreting such as British Sign Language (BSL)</li>
        <li>translation services such as braille</li>
        <li>transcription services</li>
        <li>video interpreting services for unspoken language</li>
    </ul>'
}),

(ansRegionalManagedService:Answer {
    uuid: '8ca7b353-8585-4812-935b-06f755e988e5',
    text: 'Regional Managed Service',
    hint: 'Provides a managed service on a regional level. You can buy one, some or all services. Common services include:
    <ul>
        <li>spoken and unspoken translation, transcription and ancillary services</li>
        <li>spoken telephone and spoken and unspoken video interpreting</li>
        <li>spoken and unspoken face to face interpreting</li>
    </ul>'
}),

// Answers: level 3 - Non Spoken Language Services

(ansNorthEast:Answer {
    uuid: '2d47d7f7-629e-4488-947d-06ee2786d609',
    text: 'North East'
}),

(ansNorthWest:Answer {
    uuid: 'cf844cbe-e78b-4119-8502-0654c8564427',
    text: 'North West'
}),

(ansYorkshireAndHumberside:Answer {
    uuid: 'ffb0e33c-9ead-49ff-984a-78393e11c182',
    text: 'Yorkshire and Humberside'
}),

(ansEastMidlands:Answer {
    uuid: '43db3900-dac7-44bf-b2d4-6757582df5bf',
    text: 'East Midlands'
}),

(ansWestMidlands:Answer {
    uuid: '38bbf94a-5e01-4184-84da-be871aae9157',
    text: 'West Midlands'
}),

(ansMultipleRegions:Answer {
    uuid: '6737ac40-254d-4b82-be3a-81727c9ddf78',
    text: 'Multiple Regions'
}),

(ansEastOfEngland:Answer {
    uuid: '93bb4bc5-85a3-4c8d-ae29-ef53f9a37209',
    text: 'East of England'
}),

(ansLondon:Answer {
    uuid: '3065fb18-9ff7-42cb-b0f7-a093486bc3e5',
    text: 'London'
}),

(ansSouthEast:Answer {
    uuid: 'ad0473fa-865c-4b30-a119-aecde4ee7ba6',
    text: 'South East'
}),

(ansSouthWest:Answer {
    uuid: '04475d43-532b-4a95-8b0e-78db40051bd7',
    text: 'South West'
}),

(ansWales:Answer {
    uuid: '481c2d3d-3fa3-4449-8898-5ce3ae220e54',
    text: 'Wales'
}),

(ansScotland:Answer {
    uuid: '519372cf-a917-40c6-8b20-5fef8e46440a',
    text: 'Scotland'
}),

(ansNorthernIreland:Answer {
    uuid: '3a92a0fa-5e95-4525-a4a3-1067d7b82598',
    text: 'Northern Ireland'
}),

(ansNational:Answer {
    uuid: '601af67d-0055-4e63-9941-70ab799d4194',
    text: 'National'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyLanguageServices:Journey {uuid: 'd173dc66-3513-4d20-8029-3451a89471c8', name: 'Language Services'}),
(jrnyLanguageServices)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '586446f5-279e-4efb-878e-c162faf4d797'})-[:DEFINED_BY]->(qstnFirstQ),

        (ansGrpInternationally:AnswerGroup {name: 'ansGrpInternationally'}),
        (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInternationally),
        (ansGrpInternationally)-[:HAS_ANSWER {order: 1}]->(ansInternationally),
        (ansGrpInternationally)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5m', url: '', type: 'CAT', scale: true}),

        (ansGrpNationally:AnswerGroup {name: 'ansGrpNationally'}),
        (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpNationally),
        (ansGrpNationally)-[:HAS_ANSWER {order: 2}]->(ansNationally),
        (ansGrpNationally)-[:HAS_OUTCOME]->(qiWhatService_1:QuestionInstance:Outcome {uuid: 'f323db29-f8d1-4d9f-8348-d2dd1d737f0e'})-[:DEFINED_BY]->(qstnService),

            (ansGrpNationallyManagedService:AnswerGroup {name: 'ansGrpNationallyManagedService'}),
            (qiWhatService_1)-[:HAS_ANSWER_GROUP]->(ansGrpNationallyManagedService),
            (ansGrpNationallyManagedService)-[:HAS_ANSWER {order: 1}]->(ansNationallyManagedService),
            (ansGrpNationallyManagedService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpTranslationTranscriptionAncillary:AnswerGroup {name: 'ansGrpTranslationTranscriptionAncillary'}),
            (qiWhatService_1)-[:HAS_ANSWER_GROUP]->(ansGrpTranslationTranscriptionAncillary),
            (ansGrpTranslationTranscriptionAncillary)-[:HAS_ANSWER {order: 2}]->(ansTranslationTranscriptionAncillary),
            (ansGrpTranslationTranscriptionAncillary)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpTelephoneAndSpokenVideoInterpreting:AnswerGroup {name: 'ansGrpTelephoneAndSpokenVideoInterpreting'}),
            (qiWhatService_1)-[:HAS_ANSWER_GROUP]->(ansGrpTelephoneAndSpokenVideoInterpreting),
            (ansGrpTelephoneAndSpokenVideoInterpreting)-[:HAS_ANSWER {order: 3}]->(ansTelephoneAndSpokenVideoInterpreting),
            (ansGrpTelephoneAndSpokenVideoInterpreting)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpQualityAssuranceAssessment:AnswerGroup {name: 'ansGrpQualityAssuranceAssessment'}),
            (qiWhatService_1)-[:HAS_ANSWER_GROUP]->(ansGrpQualityAssuranceAssessment),
            (ansGrpQualityAssuranceAssessment)-[:HAS_ANSWER {order: 4}]->(ansQualityAssuranceAssessment),
            (ansGrpQualityAssuranceAssessment)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpRegionally:AnswerGroup {name: 'ansGrpRegionally'}),
        (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRegionally),
        (ansGrpRegionally)-[:HAS_ANSWER {order: 3}]->(ansRegionally),
        (ansGrpRegionally)-[:HAS_OUTCOME]->(qiWhatService_2:QuestionInstance:Outcome {uuid: '9ec81e7f-bf14-42fc-9222-d4eb92ba2f4e'})-[:DEFINED_BY]->(qstnService),

            (ansGrpQualityAssuranceAssesment_2:AnswerGroup {name: 'ansGrpQualityAssuranceAssesment_2'}),
            (qiWhatService_2)-[:HAS_ANSWER_GROUP]->(ansGrpQualityAssuranceAssesment_2),
            (ansGrpQualityAssuranceAssesment_2)-[:HAS_ANSWER {order: 1}]->(ansQualityAssuranceAssessment),
            (ansGrpQualityAssuranceAssesment_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpNonSpokenLanguageServices:AnswerGroup {name: 'ansGrpNonSpokenLanguageServices'}),
            (qiWhatService_2)-[:HAS_ANSWER_GROUP]->(ansGrpNonSpokenLanguageServices),
            (ansGrpNonSpokenLanguageServices)-[:HAS_ANSWER {order: 2}]->(ansNonSpokenLanguageServices),
            (ansGrpNonSpokenLanguageServices)-[:HAS_OUTCOME]->(qiWhatRegion:QuestionInstance:Outcome {uuid: '22107e8b-6ae3-4252-9a5c-e7a9f9db62f1'})-[:DEFINED_BY]->(qstnWhatRegion),

                (ansGrpNorthEast:AnswerGroup {name: 'ansGrpNorthEast'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEast),
                (ansGrpNorthEast)-[:HAS_ANSWER {order: 1}]->(ansNorthEast),
                (ansGrpNorthEast)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4a', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthWest:AnswerGroup {name: 'ansGrpNorthWest'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpNorthWest),
                (ansGrpNorthWest)-[:HAS_ANSWER {order: 2}]->(ansNorthWest),
                (ansGrpNorthWest)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4b', url: '', type: 'CAT', scale: true}),

                (ansGrpYorkshireAndHumberside:AnswerGroup {name: 'ansGrpYorkshireAndHumberside'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpYorkshireAndHumberside),
                (ansGrpYorkshireAndHumberside)-[:HAS_ANSWER {order: 3}]->(ansYorkshireAndHumberside),
                (ansGrpYorkshireAndHumberside)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4c', url: '', type: 'CAT', scale: true}),

                (ansGrpEastMidlands:AnswerGroup {name: 'ansGrpEastMidlands'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpEastMidlands),
                (ansGrpEastMidlands)-[:HAS_ANSWER {order: 4}]->(ansEastMidlands),
                (ansGrpEastMidlands)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4d', url: '', type: 'CAT', scale: true}),

                (ansGrpWestMidlands:AnswerGroup {name: 'ansGrpWestMidlands'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpWestMidlands),
                (ansGrpWestMidlands)-[:HAS_ANSWER {order: 5}]->(ansWestMidlands),
                (ansGrpWestMidlands)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4e', url: '', type: 'CAT', scale: true}),

                (ansGrpEastOfEngland:AnswerGroup {name: 'ansGrpEastOfEngland'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpEastOfEngland),
                (ansGrpEastOfEngland)-[:HAS_ANSWER {order: 6}]->(ansEastOfEngland),
                (ansGrpEastOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4f', url: '', type: 'CAT', scale: true}),

                (ansGrpLondon:AnswerGroup {name: 'ansGrpLondon'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpLondon),
                (ansGrpLondon)-[:HAS_ANSWER {order: 7}]->(ansLondon),
                (ansGrpLondon)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4g', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEast:AnswerGroup {name: 'ansGrpSouthEast'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEast),
                (ansGrpSouthEast)-[:HAS_ANSWER {order: 8}]->(ansSouthEast),
                (ansGrpSouthEast)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4h', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthWest:AnswerGroup {name: 'ansGrpSouthWest'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpSouthWest),
                (ansGrpSouthWest)-[:HAS_ANSWER {order: 9}]->(ansSouthWest),
                (ansGrpSouthWest)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4i', url: '', type: 'CAT', scale: true}),

                (ansGrpWales:AnswerGroup {name: 'ansGrpWales'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpWales),
                (ansGrpWales)-[:HAS_ANSWER {order: 10}]->(ansWales),
                (ansGrpWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4j', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland:AnswerGroup {name: 'ansGrpScotland'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpScotland),
                (ansGrpScotland)-[:HAS_ANSWER {order: 11}]->(ansScotland),
                (ansGrpScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4k', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland:AnswerGroup {name: 'ansGrpNorthernIreland'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland),
                (ansGrpNorthernIreland)-[:HAS_ANSWER {order: 12}]->(ansNorthernIreland),
                (ansGrpNorthernIreland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '4l', url: '', type: 'CAT', scale: true}),

                (ansGrpNationalEscapePage:AnswerGroup {name: 'ansGrpNationalEscapePage'}),
                (qiWhatRegion)-[:HAS_ANSWER_GROUP]->(ansGrpNationalEscapePage),
                (ansGrpNationalEscapePage)-[:HAS_ANSWER {order: 13}]->(ansNational),
                (ansGrpNationalEscapePage)-[:HAS_OUTCOME]->(resultCCSEscapePage),


            (ansGrpRegionalManagedService:AnswerGroup {name: 'ansGrpRegionalManagedService'}),
            (qiWhatService_2)-[:HAS_ANSWER_GROUP]->(ansGrpRegionalManagedService),
            (ansGrpRegionalManagedService)-[:HAS_ANSWER {order: 3}]->(ansRegionalManagedService),
            (ansGrpRegionalManagedService)-[:HAS_OUTCOME]->(qiWhatRegion_2:QuestionInstance:Outcome {uuid: '4a899f9b-e968-4982-a2c4-6a7e3b607f0c'})-[:DEFINED_BY]->(qstnWhatRegion),

                (ansGrpNorthEast_2:AnswerGroup {name: 'ansGrpNorthEast_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEast_2),
                (ansGrpNorthEast_2)-[:HAS_ANSWER {order: 1}]->(ansNorthEast),
                (ansGrpNorthEast_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5a', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthWest_2:AnswerGroup {name: 'ansGrpNorthWest_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpNorthWest_2),
                (ansGrpNorthWest_2)-[:HAS_ANSWER {order: 2}]->(ansNorthWest),
                (ansGrpNorthWest_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5b', url: '', type: 'CAT', scale: true}),

                (ansGrpYorkshireAndHumberside_2:AnswerGroup {name: 'ansGrpYorkshireAndHumberside_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpYorkshireAndHumberside_2),
                (ansGrpYorkshireAndHumberside_2)-[:HAS_ANSWER {order: 3}]->(ansYorkshireAndHumberside),
                (ansGrpYorkshireAndHumberside_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5c', url: '', type: 'CAT', scale: true}),

                (ansGrpEastMidlands_2:AnswerGroup {name: 'ansGrpEastMidlands_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpEastMidlands_2),
                (ansGrpEastMidlands_2)-[:HAS_ANSWER {order: 4}]->(ansEastMidlands),
                (ansGrpEastMidlands_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5d', url: '', type: 'CAT', scale: true}),

                (ansGrpMultipleRegions:AnswerGroup {name: 'ansGrpMultipleRegions'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpMultipleRegions),
                (ansGrpMultipleRegions)-[:HAS_ANSWER {order: 5}]->(ansMultipleRegions),
                (ansGrpMultipleRegions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

                (ansGrpWestMidlands_2:AnswerGroup {name: 'ansGrpWestMidlands_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpWestMidlands_2),
                (ansGrpWestMidlands_2)-[:HAS_ANSWER {order: 6}]->(ansWestMidlands),
                (ansGrpWestMidlands_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5e', url: '', type: 'CAT', scale: true}),

                (ansGrpEastOfEngland_2:AnswerGroup {name: 'ansGrpEastOfEngland_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpEastOfEngland_2),
                (ansGrpEastOfEngland_2)-[:HAS_ANSWER {order: 7}]->(ansEastOfEngland),
                (ansGrpEastOfEngland_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5f', url: '', type: 'CAT', scale: true}),

                (ansGrpLondon_2:AnswerGroup {name: 'ansGrpLondon_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpLondon_2),
                (ansGrpLondon_2)-[:HAS_ANSWER {order: 8}]->(ansLondon),
                (ansGrpLondon_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5g', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEast_2:AnswerGroup {name: 'ansGrpSouthEast_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEast_2),
                (ansGrpSouthEast_2)-[:HAS_ANSWER {order: 9}]->(ansSouthEast),
                (ansGrpSouthEast_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5h', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthWest_2:AnswerGroup {name: 'ansGrpSouthWest_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpSouthWest_2),
                (ansGrpSouthWest_2)-[:HAS_ANSWER {order: 10}]->(ansSouthWest),
                (ansGrpSouthWest_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5i', url: '', type: 'CAT', scale: true}),

                (ansGrpWales_2:AnswerGroup {name: 'ansGrpWales_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpWales_2),
                (ansGrpWales_2)-[:HAS_ANSWER {order: 11}]->(ansWales),
                (ansGrpWales_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5j', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland_2:AnswerGroup {name: 'ansGrpScotland_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpScotland_2),
                (ansGrpScotland_2)-[:HAS_ANSWER {order: 12}]->(ansScotland),
                (ansGrpScotland_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5k', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland_2:AnswerGroup {name: 'ansGrpNorthernIreland_2'}),
                (qiWhatRegion_2)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland_2),
                (ansGrpNorthernIreland_2)-[:HAS_ANSWER {order: 13}]->(ansNorthernIreland),
                (ansGrpNorthernIreland_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6141'})-[:HAS_LOT]->(:Lot {number: '5l', url: '', type: 'CAT', scale: true});

