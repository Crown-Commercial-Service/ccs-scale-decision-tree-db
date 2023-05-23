
MATCH

(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),

(ansNorthEngland:Answer {uuid: 'f6492d92-dc0b-4749-8465-3139c761aa93'}),            //North England
(ansSouthEngland:Answer {uuid: 'ec18ac05-89f9-43ec-8399-446871648bbc'}),            //South England
(ansEnglandAndOrWales:Answer {uuid: 'dc599cd9-6a28-4e22-8e59-b51c2c7ceb28'}),       //England and/or Wales
(ansNorthEastOfEngland:Answer {uuid: '5523f2ba-843a-11ec-a8a3-0242ac120002'}),      //North East of England
(ansNorthWestOfEngland:Answer {uuid: '5523f058-843a-11ec-a8a3-0242ac120002'}),      //North West of England
(ansMidlandsEastAndWest:Answer {uuid: 'b06eaf74-dda5-43c6-910e-0fdae69c216f'}),     //Midlands (East and West)
(ansEastOfEngland:Answer {uuid: '93bb4bc5-85a3-4c8d-ae29-ef53f9a37209'}),           //East of England
(ansLondon:Answer {uuid: '3065fb18-9ff7-42cb-b0f7-a093486bc3e5'}),                  //London
(ansSouthEastOfEngland:Answer {uuid: '67d2ca63-f3d3-4fe8-8367-d54a28a95836'}),      //South East of England
(ansSouthWestOfEngland:Answer {uuid: '5523f936-843a-11ec-a8a3-0242ac120002'}),      //South West of England
(ansScotland:Answer {uuid: 'ccb5c104-75b5-11ea-bc55-0242ac130003'}),                //Scotland
(ansWales:Answer {uuid: '481c2d3d-3fa3-4449-8898-5ce3ae220e54'}),                   //Wales
(ansNorthernIreland:Answer {uuid: '3a92a0fa-5e95-4525-a4a3-1067d7b82598'}),         //Northern Ireland

(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})

CREATE

(qstnHealthcare:Question {uuid: '100b0bd6-ff4f-433b-bd8c-48d31d210a66', text: 'Are you a healthcare establishment in England?', type: 'LIST'}),
(qstnSpecialist:Question {uuid: 'c925a794-b262-4c6e-87cd-973921c0d847', text: 'Do you need a specialist service?', type: 'LIST'}),
(qstnBudget:Question {uuid: 'bfe46144-9d88-44df-98b6-abf7dc5b1bc6', text: 'What is your budget or band value?', type: 'LIST'}),
(qstnWhere:Question {uuid: '5e41004a-cd4d-409c-b6bc-518d723e3528', text: 'Where do you need the services?', type: 'LIST'}),

(ans3To10:Answer {uuid: '89ae2b7b-435f-4128-b4f9-36c99e284fae', text: '£3 million to £10 million'}),
(ans10To30:Answer {uuid: '6557bbd5-ce6e-421c-b50b-8d73c28f058e', text: '£10 million to £30 million'}),
(ans30To80:Answer {uuid: '2fd418ea-8036-4624-899e-89cad1114106', text: '£30 million to £80 million'}),
(ansGreaterThan80:Answer {uuid: '5f317563-e461-4497-8528-9ff633a532f8', text: 'Greater than £80 million'}),
(ansUnknownBudget:Answer {uuid: 'e857affa-0332-4403-ba84-c88462fe99b6', text: 'I don\'t know my budget or band value'}),

(ansLessThan20:Answer {uuid: '76015f71-094b-4414-a445-f9d71f638c4c', text: 'Less than £20 million'}),
(ans20To70:Answer {uuid: '37a2e480-4cf9-436a-91cc-24e21f87fe07', text: '£20 million to £70 million'}),
(ansOver70:Answer {uuid: 'de858e0a-7b80-4030-8355-93bb2f4acf9c', text: 'Over £70 million'}),

(ansHelpMe:Answer {uuid: 'a8310500-4e5f-4fa8-8b1f-314d066ccce6', text: 'I need help deciding what services I need'}),

(ansYes:Answer {
    uuid: 'c8b5f8d0-c6bf-49a2-8120-4f325a3d363d',
    text: 'Yes',
    hint: 'I am buying for a healthcare establishment'
}),

(ansNo:Answer {
    uuid: '77cde4e4-1df0-4c61-bb83-f55817909032',
    text: 'No',
    hint: 'I am not buying for a healthcare establishment'
}),

(ansYesSpecialist:Answer {
    uuid: 'b3e83b3b-daf2-4722-b50e-12237dd2153f',
    text: 'Yes',
    hint: 'Provides a range of construction works including construction and civil engineering. A specialist service includes:
    <ul>
        <li>residential construction works and associated services</li>
        <li>high rise accommodation works (tall buildings with a lot of levels) and associated services</li>
        <li>demolition and decommissioning works and associated services</li>
        <li>full suite of maritime and ancillary structures</li>
        <li>airfield and ancillary associated services</li>
        <li>construction management services</li>
    </ul> If your need does not fall into any of these categories, select no'
}),

(ansNoSpecialist:Answer {
    uuid: 'fa7f9f15-9263-4596-ab23-7c16e95fbb74',
    text: 'No',
    hint: 'Access design, construction and building services for NHS and social care organisations. Includes services for all healthcare environments including:
    <ul>
        <li>primary care facilities</li>
        <li>inpatient and outpatient environments</li>
        <li>non-clinical facilities and accommodation</li>
    </ul>'
}),

(ansGeneralConstruction:Answer {
    uuid: '33f4dfc1-87ac-4682-981b-6cef5d5f00c3',
    text: 'General construction works',
    hint: 'Provides a wide range of major and minor construction works and associated services. Includes all stages of design, build, engineering and installation services. Also includes:
    <ul>
        <li>internal and external refurbishment and improvement works</li>
        <li>building of additional structures</li>
        <li>modernisation and upgrade works</li>
    </ul>'
}),

(ansResidentialWorks:Answer {
    uuid: '11a5fea4-cc52-4401-851b-fd078761eac5',
    text: 'Residential works',
    hint: 'Provides a full range of residential construction works and associated services. Residential projects include any construction work that is being carried out on housing (such as apartments, flats and houses). Does not provide low-rise multiple occupancy accommodation blocks such as nursing, military and student accommodation. If you need these services, choose the general construction works option'
}),

(ansHighRiseAccommodation:Answer {
    uuid: 'e9bcf6b6-380c-426f-879e-5afac19a9df5',
    text: 'High rise accommodation',
    hint: 'Provides a full range of high rise accommodation construction works and associated services. High rise accommodation refers to residential and associated buildings that are tall with a lot of levels. For example, flats or apartments'
}),

(ansMaritime:Answer {
    uuid: '57665024-cea1-4836-a53c-0b20fdc63468',
    text: 'Maritime and ancillary structures',
    hint: 'Provides both inland and coastal maritime and ancillary structures at locations across the UK. This work may include but is not limited to:
    <ul>
        <li>waterfront facilities including docks, locks, sea walls and slipways and navigation aids</li>
        <li>inland works such as flood defence works</li>
    </ul>'
}),

(ansDemolitionServices:Answer {
    uuid: '8a837d8d-82f6-44a4-8002-22097912bd91',
    text: 'Demolition services',
    hint: 'Provides a full range of demolition and decommissioning services at locations across the UK. Includes all pre-demolition, demolition and remediation services as well as close down activities and disposal of materials'
}),

(ansConstructionManagement:Answer {
    uuid: '7af98825-15bf-433e-b96a-f627e8c8446d',
    text: 'Construction management services ',
    hint: 'Provides the full range of construction management and associated services at locations across the UK'
}),

(ansAirfieldWorks:Answer {
    uuid: '871a2a09-f339-409d-a86d-dd203773fc26',
    text: 'Airfield works',
    hint: 'Provides a full range of airfield and ancillary structures at locations across the UK. This can include but is not limited to:
    <ul>
        <li>airside construction (construction in areas of an airport that is within its passport, customs control and security check zones)</li>
    </ul>'
}),

(ansCivilEngineering:Answer {
    uuid: '426d9f18-1566-4b06-878e-077d4181d9db',
    text: 'Civil engineering works',
    hint: 'Provides the full range of civil engineering works such as designing and building structural works that serve the general public. For example: 
    <ul>
        <li>dams and bridges</li>
        <li>aqueducts and canals</li>
        <li>highways and power plants</li>
        <li>sewage systems and other infrastructure</li>
    </ul>Also provides minor building works for small and straightforward construction projects that are less than £3 million in value'
}),

(ansProCure23:Answer {
    uuid: 'f385135f-6dcb-4e32-b504-439224aabbe9',
    text: 'ProCure 23',
    hint: 'This is a partnership agreement between NHS England and Crown Commercial Service (CCS). It provides design and construction works and is the preferred route to market for NHS England only'
}),

(ansBuildingWorks:Answer {
    uuid: 'e54fb4e8-d645-492f-ae2e-a790459d6c1d',
    text: 'Building works',
    hint: 'Provides full range of building works such as:
    <ul>
        <li>construction</li>
        <li>erection</li>
        <li>assembly or placement of a building or an incidental structure</li>
        <li>minor civil engineering works for small and straightforward projects costing less than £3 million in value</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCWAS:Journey {uuid: '0a34e0a2-c576-44cd-b8e3-91d307fd789d', name: 'CWAS'}),
(jrnyCWAS)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '6082fca5-1cd7-4198-89e3-cab970422419'})-[:DEFINED_BY]->(qstnHealthcare),

    (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
    (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
    (ansGrpYes)-[:HAS_OUTCOME]->(qiSpecialist:QuestionInstance:Outcome {uuid: 'bc92b199-8790-4c52-b6bd-dc700a448927'})-[:DEFINED_BY]->(qstnSpecialist),

        (ansGrpYesSpecialist:AnswerGroup {name: 'ansGrpYesSpecialist'}),
        (qiSpecialist)-[:HAS_ANSWER_GROUP]->(ansGrpYesSpecialist),
        (ansGrpYesSpecialist)-[:HAS_ANSWER {order: 1}]->(ansYesSpecialist),
        (ansGrpYesSpecialist)-[:HAS_OUTCOME]->(qiService:QuestionInstance:Outcome {uuid: 'fa51b487-709d-49aa-95f0-5707f66e64d6'})-[:DEFINED_BY]->(qstnService),

            (ansGrpGeneralConstruction:AnswerGroup {name: 'ansGrpGeneralConstruction'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralConstruction),
            (ansGrpGeneralConstruction)-[:HAS_ANSWER {order: 1}]->(ansGeneralConstruction),
            (ansGrpGeneralConstruction)-[:HAS_OUTCOME]->(qiBudget:QuestionInstance:Outcome {uuid: '264350ee-009e-4a58-93c4-869f7d6d3279'})-[:DEFINED_BY]->(qstnBudget),

                (ansGrp3To10:AnswerGroup {name: 'ansGrp3To10'}),
                (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrp3To10),
                (ansGrp3To10)-[:HAS_ANSWER {order: 1}]->(ans3To10),
                (ansGrp3To10)-[:HAS_OUTCOME]->(qiWhere4:QuestionInstance:Outcome {uuid: '7e1ddb4e-7cff-4001-ad3a-e659a0d52688'})-[:DEFINED_BY]->(qstnWhere),

                    (ansGrpNorthEngland3:AnswerGroup {name: 'ansGrpNorthEngland3'}),
                    (qiWhere4)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland3),
                    (ansGrpNorthEngland3)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                    (ansGrpNorthEngland3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '2.1', url: '', type: 'CAT', scale: true}),

                    (ansGrpSouthEngland3:AnswerGroup {name: 'ansGrpSouthEngland3'}),
                    (qiWhere4)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland3),
                    (ansGrpSouthEngland3)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                    (ansGrpSouthEngland3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '2.2', url: '', type: 'CAT', scale: true}),

                    (ansGrpWales3:AnswerGroup {name: 'ansGrpWales3'}),
                    (qiWhere4)-[:HAS_ANSWER_GROUP]->(ansGrpWales3),
                    (ansGrpWales3)-[:HAS_ANSWER {order: 3}]->(ansWales),
                    (ansGrpWales3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '2.3', url: '', type: 'CAT', scale: true}),

                    (ansGrpScotland3:AnswerGroup {name: 'ansGrpScotland3'}),
                    (qiWhere4)-[:HAS_ANSWER_GROUP]->(ansGrpScotland3),
                    (ansGrpScotland3)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                    (ansGrpScotland3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '2.4', url: '', type: 'CAT', scale: true}),

                    (ansGrpNorthernIreland3:AnswerGroup {name: 'ansGrpNorthernIreland3'}),
                    (qiWhere4)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland3),
                    (ansGrpNorthernIreland3)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                    (ansGrpNorthernIreland3)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '2.5', url: '', type: 'CAT', scale: true}),


                (ansGrp10To30:AnswerGroup {name: 'ansGrp10To30'}),
                (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrp10To30),
                (ansGrp10To30)-[:HAS_ANSWER {order: 2}]->(ans10To30),
                (ansGrp10To30)-[:HAS_OUTCOME]->(qiWhere3:QuestionInstance:Outcome {uuid: 'e80affba-231b-4428-9585-fb38dbde957d'})-[:DEFINED_BY]->(qstnWhere),

                    (ansGrpNorthEngland2:AnswerGroup {name: 'ansGrpNorthEngland2'}),
                    (qiWhere3)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland2),
                    (ansGrpNorthEngland2)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                    (ansGrpNorthEngland2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '3.1', url: '', type: 'CAT', scale: true}),

                    (ansGrpSouthEngland2:AnswerGroup {name: 'ansGrpSouthEngland2'}),
                    (qiWhere3)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland2),
                    (ansGrpSouthEngland2)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                    (ansGrpSouthEngland2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '3.2', url: '', type: 'CAT', scale: true}),

                    (ansGrpWales2:AnswerGroup {name: 'ansGrpWales2'}),
                    (qiWhere3)-[:HAS_ANSWER_GROUP]->(ansGrpWales2),
                    (ansGrpWales2)-[:HAS_ANSWER {order: 3}]->(ansWales),
                    (ansGrpWales2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '3.3', url: '', type: 'CAT', scale: true}),

                    (ansGrpScotland2:AnswerGroup {name: 'ansGrpScotland2'}),
                    (qiWhere3)-[:HAS_ANSWER_GROUP]->(ansGrpScotland2),
                    (ansGrpScotland2)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                    (ansGrpScotland2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '3.4', url: '', type: 'CAT', scale: true}),

                    (ansGrpNorthernIreland2:AnswerGroup {name: 'ansGrpNorthernIreland2'}),
                    (qiWhere3)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland2),
                    (ansGrpNorthernIreland2)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                    (ansGrpNorthernIreland2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '3.5', url: '', type: 'CAT', scale: true}),

                (ansGrp30To80:AnswerGroup {name: 'ansGrp30To80'}),
                (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrp30To80),
                (ansGrp30To80)-[:HAS_ANSWER {order: 3}]->(ans30To80),
                (ansGrp30To80)-[:HAS_OUTCOME]->(qiWhere2:QuestionInstance:Outcome {uuid: '67d83823-376b-4730-8c1f-38d5d460328f'})-[:DEFINED_BY]->(qstnWhere),

                    (ansGrpEnglandAndOrWales:AnswerGroup {name: 'ansGrpEnglandAndOrWales'}),
                    (qiWhere2)-[:HAS_ANSWER_GROUP]->(ansGrpEnglandAndOrWales),
                    (ansGrpEnglandAndOrWales)-[:HAS_ANSWER {order: 1}]->(ansEnglandAndOrWales),
                    (ansGrpEnglandAndOrWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '4.1', url: '', type: 'CAT', scale: true}),

                    (ansGrpNorthernIreland:AnswerGroup {name: 'ansGrpNorthernIreland'}),
                    (qiWhere2)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland),
                    (ansGrpNorthernIreland)-[:HAS_ANSWER {order: 2}]->(ansNorthernIreland),
                    (ansGrpNorthernIreland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '4.2', url: '', type: 'CAT', scale: true}),

                    (ansGrpScotland5:AnswerGroup {name: 'ansGrpScotland5'}),
                    (qiWhere2)-[:HAS_ANSWER_GROUP]->(ansGrpScotland5),
                    (ansGrpScotland5)-[:HAS_ANSWER {order: 3}]->(ansScotland),
                    (ansGrpScotland5)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '4.3', url: '', type: 'CAT', scale: true}),

                (ansGrpGreaterThan80:AnswerGroup {name: 'ansGrpGreaterThan80'}),
                (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpGreaterThan80),
                (ansGrpGreaterThan80)-[:HAS_ANSWER {order: 4}]->(ansGreaterThan80),
                (ansGrpGreaterThan80)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

                (ansGrpUnknownBudget:AnswerGroup {name: 'ansGrpUnknownBudget'}),
                (qiBudget)-[:HAS_ANSWER_GROUP]->(ansGrpUnknownBudget),
                (ansGrpUnknownBudget)-[:HAS_ANSWER {order: 5}]->(ansUnknownBudget),
                (ansGrpUnknownBudget)-[:HAS_OUTCOME]->(resultCCSEscapePage),

            (ansGrpResidentialWorks:AnswerGroup {name: 'ansGrpResidentialWorks'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpResidentialWorks),
            (ansGrpResidentialWorks)-[:HAS_ANSWER {order: 2}]->(ansResidentialWorks),
            (ansGrpResidentialWorks)-[:HAS_OUTCOME]->(qiWhere1:QuestionInstance:Outcome {uuid: '08c3ef8f-3c62-4d2a-8cf8-40c30c9eccef'})-[:DEFINED_BY]->(qstnWhere),

                (ansGrpNorthEngland1:AnswerGroup {name: 'ansGrpNorthEngland1'}),
                (qiWhere1)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland1),
                (ansGrpNorthEngland1)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                (ansGrpNorthEngland1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '6.1', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEngland1:AnswerGroup {name: 'ansGrpSouthEngland1'}),
                (qiWhere1)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland1),
                (ansGrpSouthEngland1)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                (ansGrpSouthEngland1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '6.2', url: '', type: 'CAT', scale: true}),

                (ansGrpWales1:AnswerGroup {name: 'ansGrpWales1'}),
                (qiWhere1)-[:HAS_ANSWER_GROUP]->(ansGrpWales1),
                (ansGrpWales1)-[:HAS_ANSWER {order: 3}]->(ansWales),
                (ansGrpWales1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '6.3', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland1:AnswerGroup {name: 'ansGrpScotland1'}),
                (qiWhere1)-[:HAS_ANSWER_GROUP]->(ansGrpScotland1),
                (ansGrpScotland1)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                (ansGrpScotland1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '6.4', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland1:AnswerGroup {name: 'ansGrpNorthernIreland1'}),
                (qiWhere1)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland1),
                (ansGrpNorthernIreland1)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                (ansGrpNorthernIreland1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '6.5', url: '', type: 'CAT', scale: true}),

            (ansGrpHighRiseAccommodation:AnswerGroup {name: 'ansGrpHighRiseAccommodation'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpHighRiseAccommodation),
            (ansGrpHighRiseAccommodation)-[:HAS_ANSWER {order: 3}]->(ansHighRiseAccommodation),
            (ansGrpHighRiseAccommodation)-[:HAS_OUTCOME]->(qiWhere:QuestionInstance:Outcome {uuid: '77abbabb-192d-45a7-9307-edf54fa5e5f5'})-[:DEFINED_BY]->(qstnWhere),

                (ansGrpNorthEngland:AnswerGroup {name: 'ansGrpNorthEngland'}),
                (qiWhere)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland),
                (ansGrpNorthEngland)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                (ansGrpNorthEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '7.1', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEngland:AnswerGroup {name: 'ansGrpSouthEngland'}),
                (qiWhere)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland),
                (ansGrpSouthEngland)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                (ansGrpSouthEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '7.2', url: '', type: 'CAT', scale: true}),

                (ansGrpWales:AnswerGroup {name: 'ansGrpWales'}),
                (qiWhere)-[:HAS_ANSWER_GROUP]->(ansGrpWales),
                (ansGrpWales)-[:HAS_ANSWER {order: 3}]->(ansWales),
                (ansGrpWales)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '7.3', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland:AnswerGroup {name: 'ansGrpScotland'}),
                (qiWhere)-[:HAS_ANSWER_GROUP]->(ansGrpScotland),
                (ansGrpScotland)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                (ansGrpScotland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '7.4', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland4:AnswerGroup {name: 'ansGrpNorthernIreland4'}),
                (qiWhere)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland4),
                (ansGrpNorthernIreland4)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                (ansGrpNorthernIreland4)-[:HAS_OUTCOME]->(resultCCSEscapePage),

            (ansGrpMaritime:AnswerGroup {name: 'ansGrpMaritime'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpMaritime),
            (ansGrpMaritime)-[:HAS_ANSWER {order: 4}]->(ansMaritime),
            (ansGrpMaritime)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

            (ansGrpDemolitionServices:AnswerGroup {name: 'ansGrpDemolitionServices'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpDemolitionServices),
            (ansGrpDemolitionServices)-[:HAS_ANSWER {order: 5}]->(ansDemolitionServices),
            (ansGrpDemolitionServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '10', url: '', type: 'CAT', scale: true}),

            (ansGrpConstructionManagement:AnswerGroup {name: 'ansGrpConstructionManagement'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionManagement),
            (ansGrpConstructionManagement)-[:HAS_ANSWER {order: 6}]->(ansConstructionManagement),
            (ansGrpConstructionManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '11', url: '', type: 'CAT', scale: true}),

            (ansGrpAirfieldWorks:AnswerGroup {name: 'ansGrpAirfieldWorks'}),
            (qiService)-[:HAS_ANSWER_GROUP]->(ansGrpAirfieldWorks),
            (ansGrpAirfieldWorks)-[:HAS_ANSWER {order: 7}]->(ansAirfieldWorks),
            (ansGrpAirfieldWorks)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpNoSpecialist:AnswerGroup {name: 'ansGrpNoSpecialist'}),
        (qiSpecialist)-[:HAS_ANSWER_GROUP]->(ansGrpNoSpecialist),
        (ansGrpNoSpecialist)-[:HAS_ANSWER {order: 2}]->(ansNoSpecialist),
        (ansGrpNoSpecialist)-[:HAS_OUTCOME]->(qiService1:QuestionInstance:Outcome {uuid: '9e5e95d6-6f91-46b5-a826-57774dfb6464'})-[:DEFINED_BY]->(qstnService),

            (ansGrpGeneralConstruction1:AnswerGroup {name: 'ansGrpGeneralConstruction1'}),
            (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralConstruction1),
            (ansGrpGeneralConstruction1)-[:HAS_ANSWER {order: 1}]->(ansGeneralConstruction),
            (ansGrpGeneralConstruction1)-[:HAS_OUTCOME]->(qiBudget),

            (ansGrpCivilEngineering:AnswerGroup {name: 'ansGrpCivilEngineering'}),
            (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpCivilEngineering),
            (ansGrpCivilEngineering)-[:HAS_ANSWER {order: 2}]->(ansCivilEngineering),
            (ansGrpCivilEngineering)-[:HAS_OUTCOME]->(qiWhere6:QuestionInstance:Outcome {uuid: 'cb9cd41c-1424-4216-9aba-ff67303ddde9'})-[:DEFINED_BY]->(qstnWhere),

                (ansGrpNorthEngland4:AnswerGroup {name: 'ansGrpNorthEngland4'}),
                (qiWhere6)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland4),
                (ansGrpNorthEngland4)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                (ansGrpNorthEngland4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.2.1', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEngland4:AnswerGroup {name: 'ansGrpSouthEngland4'}),
                (qiWhere6)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland4),
                (ansGrpSouthEngland4)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                (ansGrpSouthEngland4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.2.2', url: '', type: 'CAT', scale: true}),

                (ansGrpWales4:AnswerGroup {name: 'ansGrpWales4'}),
                (qiWhere6)-[:HAS_ANSWER_GROUP]->(ansGrpWales4),
                (ansGrpWales4)-[:HAS_ANSWER {order: 3}]->(ansWales),
                (ansGrpWales4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.2.3', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland4:AnswerGroup {name: 'ansGrpScotland4'}),
                (qiWhere6)-[:HAS_ANSWER_GROUP]->(ansGrpScotland4),
                (ansGrpScotland4)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                (ansGrpScotland4)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.2.4', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland5:AnswerGroup {name: 'ansGrpNorthernIreland5'}),
                (qiWhere6)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland5),
                (ansGrpNorthernIreland5)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                (ansGrpNorthernIreland5)-[:HAS_OUTCOME]->(resultCCSEscapePage),

            (ansGrpProCure23:AnswerGroup {name: 'ansGrpProCure23'}),
            (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpProCure23),
            (ansGrpProCure23)-[:HAS_ANSWER {order: 3}]->(ansProCure23),
            (ansGrpProCure23)-[:HAS_OUTCOME]->(qiBudget1:QuestionInstance:Outcome {uuid: '0680ceb5-2a5e-4104-8054-34b145f64397'})-[:DEFINED_BY]->(qstnBudget),

                (ansGrpansLessThan20:AnswerGroup {name: 'ansGrpansLessThan20'}),
                (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpansLessThan20),
                (ansGrpansLessThan20)-[:HAS_ANSWER {order: 1}]->(ansLessThan20),
                (ansGrpansLessThan20)-[:HAS_OUTCOME]->(qiWhere5:QuestionInstance:Outcome {uuid: '0754df4c-3cef-4fd2-81e3-7b1e2ad211d9'})-[:DEFINED_BY]->(qstnWhere),

                    (ansGrpNorthEastOfEngland:AnswerGroup {name: 'ansGrpNorthEastOfEngland'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEastOfEngland),
                    (ansGrpNorthEastOfEngland)-[:HAS_ANSWER {order: 1}]->(ansNorthEastOfEngland),
                    (ansGrpNorthEastOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.1', url: '', type: 'CAT', scale: true}),

                    (ansGrpNorthWestOfEngland:AnswerGroup {name: 'ansGrpNorthWestOfEngland'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpNorthWestOfEngland),
                    (ansGrpNorthWestOfEngland)-[:HAS_ANSWER {order: 2}]->(ansNorthWestOfEngland),
                    (ansGrpNorthWestOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.2', url: '', type: 'CAT', scale: true}),

                    (ansGrpMidlandsEastAndWest:AnswerGroup {name: 'ansGrpMidlandsEastAndWest'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpMidlandsEastAndWest),
                    (ansGrpMidlandsEastAndWest)-[:HAS_ANSWER {order: 3}]->(ansMidlandsEastAndWest),
                    (ansGrpMidlandsEastAndWest)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.3', url: '', type: 'CAT', scale: true}),

                    (ansGrpEastOfEngland:AnswerGroup {name: 'ansGrpEastOfEngland'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpEastOfEngland),
                    (ansGrpEastOfEngland)-[:HAS_ANSWER {order: 4}]->(ansEastOfEngland),
                    (ansGrpEastOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.4', url: '', type: 'CAT', scale: true}),

                    (ansGrpLondon:AnswerGroup {name: 'ansGrpLondon'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpLondon),
                    (ansGrpLondon)-[:HAS_ANSWER {order: 5}]->(ansLondon),
                    (ansGrpLondon)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.5', url: '', type: 'CAT', scale: true}),

                    (ansGrpSouthEastOfEngland:AnswerGroup {name: 'ansGrpSouthEastOfEngland'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEastOfEngland),
                    (ansGrpSouthEastOfEngland)-[:HAS_ANSWER {order: 6}]->(ansSouthEastOfEngland),
                    (ansGrpSouthEastOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.6', url: '', type: 'CAT', scale: true}),

                    (ansGrpSouthWestOfEngland:AnswerGroup {name: 'ansGrpSouthWestOfEngland'}),
                    (qiWhere5)-[:HAS_ANSWER_GROUP]->(ansGrpSouthWestOfEngland),
                    (ansGrpSouthWestOfEngland)-[:HAS_ANSWER {order: 7}]->(ansSouthWestOfEngland),
                    (ansGrpSouthWestOfEngland)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '1.7', url: '', type: 'CAT', scale: true}),

                (ansGrpans20To70:AnswerGroup {name: 'ansGrpans20To70'}),
                (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpans20To70),
                (ansGrpans20To70)-[:HAS_ANSWER {order: 2}]->(ans20To70),
                (ansGrpans20To70)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

                (ansGrpOver70:AnswerGroup {name: 'ansGrpOver70'}),
                (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpOver70),
                (ansGrpOver70)-[:HAS_ANSWER {order: 3}]->(ansOver70),
                (ansGrpOver70)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6267'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

                (qiBudget1)-[:HAS_ANSWER_GROUP]->(ansGrpUnknownBudget),

            (ansGrpHelpMe:AnswerGroup {name: 'ansGrpHelpMe'}),
            (qiService1)-[:HAS_ANSWER_GROUP]->(ansGrpHelpMe),
            (ansGrpHelpMe)-[:HAS_ANSWER {order: 4}]->(ansHelpMe),
            (ansGrpHelpMe)-[:HAS_OUTCOME]->(resultCCSEscapePage),
   
    (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
    (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
    (ansGrpNo)-[:HAS_OUTCOME]->(qiNoService:QuestionInstance:Outcome {uuid: 'b97b79f4-62ef-4f17-a1e2-81b3f1da4edc'})-[:DEFINED_BY]->(qstnService),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralConstruction),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpResidentialWorks),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpHighRiseAccommodation),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpMaritime),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpDemolitionServices),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpConstructionManagement),

            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpAirfieldWorks),
            
            (ansGrpCivilEngineering_1:AnswerGroup {name: 'ansGrpCivilEngineering_1'}),
            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpCivilEngineering_1),
            (ansGrpCivilEngineering_1)-[:HAS_ANSWER {order: 8}]->(ansCivilEngineering),
            (ansGrpCivilEngineering_1)-[:HAS_OUTCOME]->(qiWhere6),

            (ansGrpBuildingWorks:AnswerGroup {name: 'ansGrpBuildingWorks'}),
            (qiNoService)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingWorks),
            (ansGrpBuildingWorks)-[:HAS_ANSWER {order: 9}]->(ansBuildingWorks),
            (ansGrpBuildingWorks)-[:HAS_OUTCOME]->(qiWhereForBuilding:QuestionInstance:Outcome {uuid: 'c1f9d7c5-7387-419d-ac66-2d6e9b5b503e'})-[:DEFINED_BY]->(qstnWhere),

                (ansGrpNorthEngland5:AnswerGroup {name: 'ansGrpNorthEngland5'}),
                (qiWhereForBuilding)-[:HAS_ANSWER_GROUP]->(ansGrpNorthEngland5),
                (ansGrpNorthEngland5)-[:HAS_ANSWER {order: 1}]->(ansNorthEngland),
                (ansGrpNorthEngland5)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.1.1', url: '', type: 'CAT', scale: true}),

                (ansGrpSouthEngland5:AnswerGroup {name: 'ansGrpSouthEngland5'}),
                (qiWhereForBuilding)-[:HAS_ANSWER_GROUP]->(ansGrpSouthEngland5),
                (ansGrpSouthEngland5)-[:HAS_ANSWER {order: 2}]->(ansSouthEngland),
                (ansGrpSouthEngland5)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.1.2', url: '', type: 'CAT', scale: true}),

                (ansGrpWales5:AnswerGroup {name: 'ansGrpWales5'}),
                (qiWhereForBuilding)-[:HAS_ANSWER_GROUP]->(ansGrpWales5),
                (ansGrpWales5)-[:HAS_ANSWER {order: 3}]->(ansWales),
                (ansGrpWales5)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.1.3', url: '', type: 'CAT', scale: true}),

                (ansGrpScotland6:AnswerGroup {name: 'ansGrpScotland6'}),
                (qiWhereForBuilding)-[:HAS_ANSWER_GROUP]->(ansGrpScotland6),
                (ansGrpScotland6)-[:HAS_ANSWER {order: 4}]->(ansScotland),
                (ansGrpScotland6)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.1.4', url: '', type: 'CAT', scale: true}),

                (ansGrpNorthernIreland6:AnswerGroup {name: 'ansGrpNorthernIreland6'}),
                (qiWhereForBuilding)-[:HAS_ANSWER_GROUP]->(ansGrpNorthernIreland6),
                (ansGrpNorthernIreland6)-[:HAS_ANSWER {order: 5}]->(ansNorthernIreland),
                (ansGrpNorthernIreland6)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'})-[:HAS_LOT]->(:Lot {number: '1.1.5', url: '', type: 'CAT', scale: true});