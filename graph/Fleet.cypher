MATCH
(qstnFirstQuestion:Question {
    uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'
}),

(qstnWhatTypeService:Question {
    uuid: '18df190c-ef8e-4cda-a760-68929965b86a'
})


CREATE

(qstnWhatSector:Question {
    uuid: 'b7c333e4-682f-4f59-9a27-b72cadb79e44',
    text: 'What sector are you buying for?',
    type: 'LIST'
}),

// QUESTIONS

// Questions: level 3

(qstnWhatTypeVehicle:Question {
    uuid: '3215b985-1c89-48d4-a321-be3e073142b1',
    text: 'What type of vehicle do you need?',
    type: 'LIST'
}),

(qstnWhereNeedService:Question {
    uuid: '643eaa4e-9f67-4f76-a3dc-741cb07e2747',
    text: 'Where do you need the service?',
    type: 'LIST'
}),

(qstnHire28Days:Question {
    uuid: 'a4fc3168-857d-4590-94f3-f6a7dbb15c80',
    text: 'Do you need to hire a vehicle for less than 28 days?', type: 'LIST'
}),

(qstnWhatTypeVehicleHire:Question {
    uuid: '049aaa59-8164-4c60-a9f7-41e5c62d9092',
    text: 'What type of vehicle do you want to hire?',
    type: 'LIST'
}),

(qstnLessThan28Days:Question {
    uuid: '11b9935f-3f85-4ced-bd1d-e57e22885022',
    text: 'Do you need to hire a vehicle for less than 28 days? Error: Select if you need to hire a vehicle for less than 28 days', type: 'LIST'
}),

// ANSWERS

// Answers: level 1
(ansVehiclePurchase:Answer {
    uuid: '1e88c4e2-6f52-42b3-9268-b1d79b7c02ee',
    text: 'Vehicle purchase',
    hint: 'Buy new motor vehicles including:
    <ul>
        <li>passenger cars such as estate, hatchback convertible, sports utility vehicles, 4x4s and multi purpose vehicles</li>
        <li>light commercial vehicles which weigh up to 3.5 tonnes such as vans and tippers</li>
        <li>motorbikes</li>
        <li>heavy goods vehicles (HGVs) such as trucks</li>
        <li>buses and coaches</li>
    </ul> 
    Suppliers can also provide bespoke conversions to vehicles to suit your individual needs. Includes specification design, body build, testing and associated maintenance'
}),

(ansVehicleLease:Answer {
    uuid: 'ec2366dc-7058-4df3-b3da-85c081e0425e',
    text: 'Vehicle lease and hire',
    hint: 'Hire a range of vehicle types including:
    <ul>
        <li>cars such as 4x4s</li>
        <li>motorcycles</li>
        <li>vans</li>
        <li>light and heavy commercial vehicles</li>
        <li>minibuses</li>
        <li>coaches</li>
        <li>electric vehicles</li>
    </ul>
    Also includes the option to hire vehicles for short periods of time ranging from 1 day to 28 plus days'
}),

(ansVehicleConversion:Answer {
    uuid: '0e280696-dcc4-4b29-9475-da758c770859',
    text: 'Vehicle conversion',
    hint: 'Access a range of services to make changes to standard vehicles to suit different needs. Available through further competition only'
}),

(ansFleetManagementService:Answer {
    uuid: '8b1c2139-18b2-450a-bc1e-96d0004045e8',
    text: 'Fleet management service',
    hint: 'Access fleet management services provided by independent fleet managers (those who do not provide lease funding). Services include (but are not limited to):
    <ul>
        <li>management of owned and leased vehicles</li>
        <li>sourcing of new purchased or leased vehicles</li>
        <li>lease management</li>
        <li>Service Maintenance and Repair (SMR) for owned fleet</li>
        <li>provides salary sacrifice schemes</li>
        <li>all fleet optimisation</li>
        <li>duty of care and risk management such as insurance database management, licence checks, driver training)</li>
    </ul>'
}),

(ansVehicleTelematics:Answer {
    uuid: '8be6b094-4b24-4f2c-85ea-d2a24dd4b4be',
    text: 'Vehicle telematics',
    hint: 'Access products and services to improve the safety and efficiency of fleet operations within the public sector. Products and services include:
    <ul>
        <li>telecommunication devices to track the movement of vehicles and inform decision making</li>
        <li>vehicle in-cab cameras and equipment</li>
        <li>Global Positioning Systems (GPS)</li>
        <li>fleet data analysis and risk management solutions</li>
    </ul>'
}),

(ansTyresFastFit:Answer {
    uuid: 'd02b4882-6ab7-4c42-b0f3-dc6991598316',
    text: 'Tyres and/or fast fit products',
    hint: 'Access the supply, fit, repair and management of tyres. You can also access the supply of fast fit products and services such as:
    <ul>
        <li>wiper blades</li>
        <li>bulbs</li>
        <li>vehicle servicing</li>
    </ul>'
}),

(ansVehicleGlassRepair:Answer {
    uuid: '1f7c93f4-4030-44b6-bc6c-2c2fc6b8f267',
    text: 'Supply, fit and repair of vehicle glass',
    hint: 'Access the supply and fit of vehicle glass repairs. Also provides associated services and products on a regional or national basis. Glass can include any glass product which can be fitted to a vehicle including (but not limited to):
    <ul>
        <li>windscreens</li>
        <li>rear windscreens</li>
        <li>side windows</li>
    </ul>'
}),

(ansVehicleCharging:Answer {
    uuid: 'cae8c78a-1e71-4c72-aa4e-bf559ee12e1c',
    text: 'Vehicle charging infrastructure solutions',
    hint: 'Buy a range of solutions to help you develop your charging infrastructure for electric and hybrid vehicles. Buy a full end to end service or specific elements of a service to meet your needs. Products and services available include:
    <ul>
        <li>installation of electric and hybrid chargers</li>
        <li>consultancy and feasibility services to help support your transition to low emission vehicles</li>
        <li>servicing and maintenance services for charging infrastructure</li>
        <li>associated hardware and accessories</li>
    </ul>'
}),

// Answers: level 2

(ansBlueLightSector:Answer {
    uuid: 'f7dea8e2-70be-4067-88e4-e8007448ae32',
    text: 'Blue light sector',
    hint: 'I am buying vehicles for emergency services'
}),

(ansOtherSectors:Answer {
    uuid: '580d0e1e-0257-4c69-a800-ad48b2594fdd',
    text: 'Other sectors',
    hint: 'I am buying vehicles for non-emergency services'
}),

(ansHardwareAndSoftware:Answer {
    uuid: 'c37f1fd0-de6e-40bd-b1a8-91f561ed86ff',
    text: 'Hardware and software',
    hint: 'Lease, hire or buy vehicle telematics hardware and software solutions. Includes products such as cameras and tracking solutions for equipment which is fixed or stored within a vehicle'
}),

(ansSoftwareOnly:Answer {
    uuid: '5f89ae34-2a02-45a4-93ee-93d709c7cc8a',
    text: 'Software only',
    hint: 'Suppliers will provide a software platform designed to enable buyers to analyse data from multiple sources to:
    <ul>
        <li>support their fleet operation</li>
        <li>optimise fleet whole life costs</li>
        <li>undertake effective risk management activities</li>
    </ul>'
}),

// Answers: level 3

(ansPassengerVehicle:Answer {
    uuid: '292d0df5-c691-43a9-a9a5-731b36224ba9',
    text: 'Passenger vehicle (including 4x4 variants)'
}),

(ansLightCommercialVehicle:Answer {
    uuid: '2196eb76-11ec-4911-b413-69fc1dedf552',
    text: 'Light to medium commercial vehicle  (7.5T =<)'
}),

(ansMediumCommercialVehicle:Answer {
    uuid: '081a538d-fe1f-4c41-9697-95beb25371e8',
    text: 'Medium to heavy commercial vehicle (=>7.5T)'
}),

(ansMotorcycles:Answer {
    uuid: 'dbc500c9-c336-4b92-bbc8-c9fb432f9ab5',
    text: 'Motorcycles (including  scooters & quad bikes)'
}),

(ansBusesAndCoaches:Answer {
    uuid: 'fd8e1f6b-42ca-46d3-87f7-f0f1f0edb500',
    text: 'Buses and coaches'
}),


(ansBlueLightVehicle:Answer {
    uuid: '93a400e3-6a55-4bb6-b5e2-6cf21f36c9db',
    text: 'Blue Light Vehicle'
}),

(ansBlueLightToMedium:Answer {
    uuid: 'de87dd09-54f6-45db-8320-71f70a962265',
    text: 'Blue Light',
    hint: 'Light to medium commercial vehicle'
}),

(ansBlueLightSectorFastFit:Answer {
    uuid: 'fba4f5cf-08f9-49e2-90a3-bac84d1d9d73',
    text: 'Blue light sector',
    hint: 'I need tyres and/or fast fit products and services for emergency service vehicles'
}),

(ansOtherSectorsFastFit:Answer {
    uuid: 'b98fa6d5-9f23-4c78-99df-1dc723a4aa9e',
    text: 'Other sectors',
    hint: 'I need tyres and/or fast fit products and services for non-emergency service vehicles'
}),

(ansHireVehicles:Answer {
    uuid: '8a968bf2-b58e-4ea8-b2d1-e24d6f31e920',
    text: 'Hire vehicles up to 3.5 tonnes',
    hint: 'Hire cars and light commercial vehicles (LCV) of up to 3.5 tonnes. There is also the option to:
    <ul>
        <li>include service maintenance and repair services</li>
        <li>include fleet management services such as salary sacrifice schemes</li>
        <li>get quotes for converted vehicles directly from suppliers</li>
        <li>access quotes for hiring standard (non converted) vehicles through the CCS fleet portal</li>
    </ul>'
}),

(ansHireCommercialVehicles:Answer {
    uuid: 'cac35bbc-f786-494e-a93c-9b32b62d6485',
    text: ' Hire Commercial vehicles',
    hint: 'Hire light, medium, heavy and specialist commercial vehicles. You can also access:
    <ul>
        <li>service maintenance and repair services</li>
        <li>fleet management services</li>
    </ul>
    You will need to get quotes directly from suppliers and not through our fleet portal'
}),

(ansShortTermHire:Answer {
    uuid: '656ce68f-46d2-4f0b-be8e-9564b6386adc',
    text: 'Short term vehicle hire',
    hint: 'Hire a range of vehicle types for short periods of time ranging from 1 day to 28 plus days. Includes access to:
    <ul>
        <li>UK national and international hiring serivces</li>
        <li>a single supplier solution or specialist vehicle suppliers</li>
        <li>specialist vehicle hire companies with expert advice on how to meet your needs</li>
        <li>a car sharing lot designed to offer cost saving opportunities through hourly car share rates</li>
    </ul>'
}),

(ansUKnational:Answer {
    uuid: 'fea33d3a-4d1c-449d-8eac-ab44d3b3ff3a',
    text: 'UK national',
    hint: 'Hire passenger carrying vehicles including light commercial vehicles (vans for carrying goods) and 4x4 vehicles for use within the UK'
}),

(ansInternational:Answer {
    uuid: 'bbfa00cc8-2ed8-4792-8463-1c5c1de8535d',
    text: 'International',
    hint: 'Hire passenger carrying vehicles including light commercial vehicles (vans for carrying goods) and 4x4 vehicles for use outside of the UK. Provides worldwide coverage to countries including (but not limited to):
    <ul>
        <li>United States of America</li>
        <li>Canada</li>
        <li>Germany</li>
        <li>Norway</li>
        <li>Spain</li>
        <li>France</li>
        <li>Italy</li>
        <li>Cyprus</li>
        <li>Australia</li>
        <li>Sweden</li>
        <li>Netherlands</li>
    </ul>'
}),

// // Answers: level 4

(ansYes:Answer {
    uuid: '2460d222-f8b3-4218-8d81-5f810a218acd',
    text: 'Yes',
    hint: 'I need to hire a vehicle for less than 28 days'
}),

(ansNo:Answer {
    uuid: '6e8a787a-a537-4e94-b601-60ff53151cc4',
    text: 'No',
    hint: 'I need to hire a vehicle for more than 28 days'
}),

// // Answers: Level 5
(ansHire28Days:Answer {
    uuid: '0c955ee1-ae61-4ca0-a7c8-514d9496c35a',
    text: 'Hire vehicles for at least 28 days or more',
    hint: 'Hire a range of vehicles for 28 days or more. Includes access to:
    <ul>
        <li>cars</li>
        <li>light and heavy commercial vehicles such as vans and trucks</li>
        <li>standard build or bespoke vehicles (vehicles which have been altered to meet specific needs or uses)</li>
        <li>flexible contract terms</li>
    </ul>'
}),

(ansHireMoreThan28Days:Answer {
    uuid: '70a77ddd-b78e-460b-b640-b90979652e10',
    text: 'General hire of vehicles for more than 28 days',
    hint: 'Hire vehicles for more than 28 days only. Vehicle types include:
    <ul>
        <li>passenger cars</li>
        <li>light commercial vehicles</li>
        <li>on road and full off road 4x4s</li>
        <li>minibuses</li>
    </ul>'
}),

(ansGeneralVehicleHire:Answer {
    uuid: 'b8da6ffc-5524-4248-ba98-de3cfbe23a62',
    text: 'General vehicle hire',
    hint: 'Hire a range of passenger cars including light commercial vehicles, on road and full off road 4x4s and minibuses through a single supplier'
}),

(ansGeneralVehicleHireCarShare:Answer {
    uuid: 'fb57b53a-cc5d-4c4e-acbc-75c80abaa771',
    text: 'General vehicle hire with car share',
    hint: '<p>Hire passenger cars including light commercial vehicles, on road and full off road 4x4s and minibuses</p><p>4x4 vehicles will have full off road capability which can include automatic or manual 4 wheel drive and tow bars with the ability to tow up to 3.5 tonnes</p><p>Also includes a car share option which offers cost saving opportunities through hourly car share rates</p>'
}), 

(ans4x4Only:Answer {
    uuid: '754e7770-f379-40ca-a8c6-f0537e829da1',
    text: '4x4 only',
    hint: 'Hire 4 wheel drive vehicles with automatic or manual 4 wheel drive capability. All 4x4 vehicles will have full off road capability and may include a tow bar with the ability to tow up to 3.5 tonnes'
}),

(ansMinibusOnly:Answer {
    uuid: '7c21ee3b-7d46-47c7-853c-87fcf7418eb9',
    text: 'Minibus only',
    hint: 'Hire minibuses with 9 to 17 seats. Minibus hire does not include a driver'
}),

(ansHeavyGoodsVehicles:Answer {
    uuid: '9ef3dabf-627e-4dbb-a41b-af67930741f6',
    text: 'Heavy goods vehicles (HGVs) and Heavy commercial vehicles (HCVs) only',
    hint: 'Hire HGVs and HCVs which weigh over 3.5 tonnes'
}),

(ansCarShareOnly:Answer {
    uuid: 'f0173e26-d76a-45f2-98b3-266d53a18969',
    text: 'Car share only',
    hint: 'Hire vehicles using one of the 4 types of car share. These are:
    <ul>
        <li>virtual vehicles: hire vehicles through the supplier\'s established car share network for very short periods of time (usually for 1 hour and hire is capped at one daily rate)</li>
        <li>dedicated pool vehicles: hire cars exclusively for use by the buyer\'s staff or by the buyer(s) for an extended period of time</li>
        <li>mixed used vehicle pool: reserve vehicles through the suppliers car share network for set periods of time, for example between 9am to 5pm</li>
        <li>car share technology only: access services to convert fleet vehicles owned by the buyer(s) to allow these vehicles to be reserved for car sharing through the supplier\'s online book system</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyFleet:Journey {
    uuid: 'd4c39cb1-02db-4f55-9b61-231ace679b8c',
    name: 'Fleet'
}),

(jrnyFleet)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'b58d9640-3915-4623-bd96-0a09add9acc1'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpVehiclePurchase:AnswerGroup {name: 'ansGrpVehiclePurchase'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehiclePurchase),
    (ansGrpVehiclePurchase)-[:HAS_ANSWER {order: 1}]->(ansVehiclePurchase),
    (ansGrpVehiclePurchase)-[:HAS_OUTCOME]->(qiWhatSector_1:QuestionInstance:Outcome {uuid: 'fbca5415-bf73-478d-b680-84d529732c8f'})-[:DEFINED_BY]->(qstnWhatSector),

        (ansGrpBlueLightSector:AnswerGroup {name: 'ansGrpBlueLightSector'}),
        (qiWhatSector_1)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLightSector),
        (ansGrpBlueLightSector)-[:HAS_ANSWER {order: 1}]->(ansBlueLightSector),
        (ansGrpBlueLightSector)-[:HAS_OUTCOME]->(qiWhatTypeVehicle_1:QuestionInstance:Outcome {uuid: 'd00751d6-2337-44fe-8957-a8ecb929570b'})-[:DEFINED_BY]->(qstnWhatTypeVehicle),

            (ansGrpBlueLightVehicle:AnswerGroup {name: 'ansGrpBlueLightVehicle'}),
            (qiWhatTypeVehicle_1)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLightVehicle),
            (ansGrpBlueLightVehicle)-[:HAS_ANSWER {order: 1}]->(ansBlueLightVehicle),
            (ansGrpBlueLightVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

            (ansGrpBlueLightToMedium:AnswerGroup {name: 'ansGrpBlueLightToMedium'}),
            (qiWhatTypeVehicle_1)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLightToMedium),
            (ansGrpBlueLightToMedium)-[:HAS_ANSWER {order: 2}]->(ansBlueLightToMedium),
            (ansGrpBlueLightToMedium)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),
        
        (ansGrpOtherSectors:AnswerGroup {name: 'ansGrpOtherSectors'}),
        (qiWhatSector_1)-[:HAS_ANSWER_GROUP]->(ansGrpOtherSectors),
        (ansGrpOtherSectors)-[:HAS_ANSWER {order: 2}]->(ansOtherSectors),
        (ansGrpOtherSectors)-[:HAS_OUTCOME]->(qiWhatTypeVehicle_2:QuestionInstance:Outcome {uuid: '6083dde9-328f-40e7-bdf7-54cfa44f1244'})-[:DEFINED_BY]->(qstnWhatTypeVehicle),

            (ansGrpPassengerVehicle:AnswerGroup {name: 'ansGrpPassengerVehicle'}),
            (qiWhatTypeVehicle_2)-[:HAS_ANSWER_GROUP]->(ansGrpPassengerVehicle),
            (ansGrpPassengerVehicle)-[:HAS_ANSWER {order: 1}]->(ansPassengerVehicle),
            (ansGrpPassengerVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

            (ansGrpLightCommercialVehicle:AnswerGroup {name: 'ansGrpLightCommercialVehicle'}),
            (qiWhatTypeVehicle_2)-[:HAS_ANSWER_GROUP]->(ansGrpLightCommercialVehicle),
            (ansGrpLightCommercialVehicle)-[:HAS_ANSWER {order: 2}]->(ansLightCommercialVehicle),
            (ansGrpLightCommercialVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

            (ansGrpMediumCommercialVehicle:AnswerGroup {name: 'ansGrpMediumCommercialVehicle'}),
            (qiWhatTypeVehicle_2)-[:HAS_ANSWER_GROUP]->(ansGrpMediumCommercialVehicle),
            (ansGrpMediumCommercialVehicle)-[:HAS_ANSWER {order: 3}]->(ansMediumCommercialVehicle),
            (ansGrpMediumCommercialVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpMotorcycles:AnswerGroup {name: 'ansGrpMotorcycles'}),
            (qiWhatTypeVehicle_2)-[:HAS_ANSWER_GROUP]->(ansGrpMotorcycles),
            (ansGrpMotorcycles)-[:HAS_ANSWER {order: 4}]->(ansMotorcycles),
            (ansGrpMotorcycles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

            (ansGrpBusesAndCoaches:AnswerGroup {name: 'ansGrpBusesAndCoaches'}),
            (qiWhatTypeVehicle_2)-[:HAS_ANSWER_GROUP]->(ansGrpBusesAndCoaches),
            (ansGrpBusesAndCoaches)-[:HAS_ANSWER {order: 5}]->(ansBusesAndCoaches),
            (ansGrpBusesAndCoaches)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicleLease:AnswerGroup {name: 'ansGrpVehicleLease'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleLease),
    (ansGrpVehicleLease)-[:HAS_ANSWER {order: 2}]->(ansVehicleLease),
    (ansGrpVehicleLease)-[:HAS_OUTCOME]->(qiWhatTypeService_1:QuestionInstance:Outcome {uuid: 'a50704b7-ad75-4761-b132-d15ab5d3815d'})-[:DEFINED_BY]->(qstnWhatTypeService),

        (ansGrpHireVehicles:AnswerGroup {name: 'ansGrpHireVehicles'}),
        (qiWhatTypeService_1)-[:HAS_ANSWER_GROUP]->(ansGrpHireVehicles),
        (ansGrpHireVehicles)-[:HAS_ANSWER {order: 1}]->(ansHireVehicles),
        (ansGrpHireVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpHireCommercialVehicle:AnswerGroup {name: 'ansGrpHireCommercialVehicle'}),
        (qiWhatTypeService_1)-[:HAS_ANSWER_GROUP]->(ansGrpHireCommercialVehicle),
        (ansGrpHireCommercialVehicle)-[:HAS_ANSWER {order: 2}]->(ansHireCommercialVehicles),
        (ansGrpHireCommercialVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpShortTermHire:AnswerGroup {name: 'ansGrpShortTermHire'}),
        (qiWhatTypeService_1)-[:HAS_ANSWER_GROUP]->(ansGrpShortTermHire),
        (ansGrpShortTermHire)-[:HAS_ANSWER {order: 3}]->(ansShortTermHire),
        (ansGrpShortTermHire)-[:HAS_OUTCOME]->(qiWhereNeedService:QuestionInstance:Outcome {uuid: '338f3836-5b5c-403b-ac5c-ce374395a3e9'})-[:DEFINED_BY]->(qstnWhereNeedService),

            (ansGrpUKnational:AnswerGroup {name: 'ansGrpUKnational'}),
            (qiWhereNeedService)-[:HAS_ANSWER_GROUP]->(ansGrpUKnational),
            (ansGrpUKnational)-[:HAS_ANSWER {order: 1}]->(ansUKnational),
            (ansGrpUKnational)-[:HAS_OUTCOME]->(qiHire28Days:QuestionInstance:Outcome {uuid: 'dfcf7c8d-211b-40e3-b037-4299a86c1c08'})-[:DEFINED_BY]->(qstnHire28Days),

                (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
                (qiHire28Days)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
                (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
                (ansGrpYes)-[:HAS_OUTCOME]->(qiWhatTypeVehicleHire_1:QuestionInstance:Outcome {uuid: '604f03ea-c38b-407a-88d9-bc207253825b'})-[:DEFINED_BY]->(qstnWhatTypeVehicleHire),

                    (ansGrpGeneralVehicleHire:AnswerGroup {name: 'ansGrpGeneralVehicleHire'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralVehicleHire),
                    (ansGrpGeneralVehicleHire)-[:HAS_ANSWER {order: 1}]->(ansGeneralVehicleHire),
                    (ansGrpGeneralVehicleHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

                    (ansGrpGeneralVehicleHireCarShare:AnswerGroup {name: 'ansGrpGeneralVehicleHireCarShare'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralVehicleHireCarShare),
                    (ansGrpGeneralVehicleHireCarShare)-[:HAS_ANSWER {order: 2}]->(ansGeneralVehicleHireCarShare),
                    (ansGrpGeneralVehicleHireCarShare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

                    (ansGrp4x4Only:AnswerGroup {name: 'ansGrp4x4Only'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrp4x4Only),
                    (ansGrp4x4Only)-[:HAS_ANSWER {order: 3}]->(ans4x4Only),
                    (ansGrp4x4Only)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

                    (ansGrpMinibusOnly:AnswerGroup {name: 'ansGrpMinibusOnly'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrpMinibusOnly),
                    (ansGrpMinibusOnly)-[:HAS_ANSWER {order: 4}]->(ansMinibusOnly),
                    (ansGrpMinibusOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

                    (ansGrpHeavyGoodsVehicles:AnswerGroup {name: 'ansGrpHeavyGoodsVehicles'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrpHeavyGoodsVehicles),
                    (ansGrpHeavyGoodsVehicles)-[:HAS_ANSWER {order: 5}]->(ansHeavyGoodsVehicles),
                    (ansGrpHeavyGoodsVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

                    (ansGrpCarShareOnly:AnswerGroup {name: 'ansGrpCarShareOnly'}),
                    (qiWhatTypeVehicleHire_1)-[:HAS_ANSWER_GROUP]->(ansGrpCarShareOnly),
                    (ansGrpCarShareOnly)-[:HAS_ANSWER {order: 6}]->(ansCarShareOnly),
                    (ansGrpCarShareOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

                (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
                (qiHire28Days)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
                (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
                (ansGrpNo)-[:HAS_OUTCOME]->(qiWhatTypeVehicleHire_2:QuestionInstance:Outcome {uuid: 'edfc8094-40a9-43cb-a85b-2c4f6d4ea279'})-[:DEFINED_BY]->(qstnWhatTypeVehicleHire),

                    (ansGrpHire28Days:AnswerGroup {name: 'ansGrpHire28Days'}),
                    (qiWhatTypeVehicleHire_2)-[:HAS_ANSWER_GROUP]->(ansGrpHire28Days),
                    (ansGrpHire28Days)-[:HAS_ANSWER {order: 1}]->(ansHire28Days),
                    (ansGrpHire28Days)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

                    (ansGrpHireMoreThan28Days:AnswerGroup {name: 'ansGrpHireMoreThan28Days'}),
                    (qiWhatTypeVehicleHire_2)-[:HAS_ANSWER_GROUP]->(ansGrpHireMoreThan28Days),
                    (ansGrpHireMoreThan28Days)-[:HAS_ANSWER {order: 2}]->(ansHireMoreThan28Days),
                    (ansGrpHireMoreThan28Days)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),
                    
            (ansGrpInternational:AnswerGroup {name: 'ansGrpInternational'}),
            (qiWhereNeedService)-[:HAS_ANSWER_GROUP]->(ansGrpInternational),
            (ansGrpInternational)-[:HAS_ANSWER {order: 2}]->(ansInternational),
            (ansGrpInternational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicleConversion:AnswerGroup {name: 'ansGrpVehicleConversion'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleConversion),
    (ansGrpVehicleConversion)-[:HAS_ANSWER {order: 3}]->(ansVehicleConversion),
    (ansGrpVehicleConversion)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3814'}),

    (ansGrpFleetManagementService:AnswerGroup {name: 'ansGrpFleetManagementService'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFleetManagementService),
    (ansGrpFleetManagementService)-[:HAS_ANSWER {order: 4}]->(ansFleetManagementService),
    (ansGrpFleetManagementService)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicleTelematics:AnswerGroup {name: 'ansGrpVehicleTelematics'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleTelematics),
    (ansGrpVehicleTelematics)-[:HAS_ANSWER {order: 5}]->(ansVehicleTelematics),
    (ansGrpVehicleTelematics)-[:HAS_OUTCOME]->(qiWhatTypeService_2:QuestionInstance:Outcome {uuid: '1ff69975-69a7-41d0-a456-4295c2160c19'})-[:DEFINED_BY]->(qstnWhatTypeService),

        (ansGrpHardwareAndSoftware:AnswerGroup {name: 'ansGrpHardwareAndSoftware'}),
        (qiWhatTypeService_2)-[:HAS_ANSWER_GROUP]->(ansGrpHardwareAndSoftware),
        (ansGrpHardwareAndSoftware)-[:HAS_ANSWER {order: 1}]->(ansHardwareAndSoftware),
        (ansGrpHardwareAndSoftware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6143'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpSoftwareOnly:AnswerGroup {name: 'ansGrpSoftwareOnly'}),
        (qiWhatTypeService_2)-[:HAS_ANSWER_GROUP]->(ansGrpSoftwareOnly),
        (ansGrpSoftwareOnly)-[:HAS_ANSWER {order: 2}]->(ansSoftwareOnly),
        (ansGrpSoftwareOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6143'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpTyresFastFit:AnswerGroup {name: 'ansGrpTyresFastFit'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTyresFastFit),
    (ansGrpTyresFastFit)-[:HAS_ANSWER {order: 6}]->(ansTyresFastFit),
    (ansGrpTyresFastFit)-[:HAS_OUTCOME]->(qiWhatSector_2:QuestionInstance:Outcome {uuid: 'cdd5b21c-cb14-4006-bbee-5a451e6aee29'})-[:DEFINED_BY]->(qstnWhatSector),

        (ansGrpBlueLightSectorFastFit:AnswerGroup {name: 'ansGrpBlueLightSectorFastFit'}),
        (qiWhatSector_2)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLightSectorFastFit),
        (ansGrpBlueLightSectorFastFit)-[:HAS_ANSWER {order: 1}]->(ansBlueLightSectorFastFit),
        (ansGrpBlueLightSectorFastFit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpOtherSectorsFastFit:AnswerGroup {name: 'ansGrpOtherSectorsFastFit'}),
        (qiWhatSector_2)-[:HAS_ANSWER_GROUP]->(ansGrpOtherSectorsFastFit),
        (ansGrpOtherSectorsFastFit)-[:HAS_ANSWER {order: 2}]->(ansOtherSectorsFastFit),
        (ansGrpOtherSectorsFastFit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicleGlassRepair:AnswerGroup {name: 'ansGrpVehicleGlassRepair'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleGlassRepair),
    (ansGrpVehicleGlassRepair)-[:HAS_ANSWER {order: 7}]->(ansVehicleGlassRepair),
    (ansGrpVehicleGlassRepair)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpVehicleCharging:AnswerGroup {name: 'ansGrpVehicleCharging'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_ANSWER {order: 8}]->(ansVehicleCharging),
    (ansGrpVehicleCharging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'});


