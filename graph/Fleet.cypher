Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qstnTypeOfService:Question {uuid: '18df190c-ef8e-4cda-a760-68929965b86a'}),
(qstnSector:Question {uuid: '64f00811-ebd6-40b1-8870-20e5aeaf891c'}),
(resultCCSEscapePage:Support {uuid: 'ccb5beb6-75b5-11ea-bc55-0242ac130003'})


CREATE
//Question
(qstnVehicle:Question {uuid: '18e62a31-e806-4eaa-a693-6eb17ceee186', text: 'What type of vehicle do you need?', type: 'LIST'}),
(qstn28Days:Question {uuid: '0fedc6b6-0c29-4599-ac91-0e8a6ebe1e2b', text: 'Do you need to hire a vehicle for less than 28 days?', type: 'LIST'}),
(qstnTypeOfVehicle:Question {uuid: '4861e177-8c80-4ff0-a197-516386858508', text: 'What type of vehicle do you want to hire?', type: 'LIST'}),
(qstnWhere:Question {uuid: '5fd1dabb-3ef3-4243-a08f-94682dc17abd', text: 'Where do you need the service?', type: 'LIST'}),

//Answer
(ansVehiclePurchase:Answer {
    uuid: '181b6efc-8563-4343-b03f-d8471037268c',
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
    uuid: 'd58d9e8a-5d04-4034-80dd-f97e7db14bf4',
    text: 'Vehicle lease and hire',
    hint: 'Hire or lease a range of vehicle types including:
    <ul>
        <li>cars such as 4x4s</li>
        <li>motorcycles</li>
        <li>vans</li>
        <li>light and heavy commercial vehicles</li>
        <li>minibuses</li>
        <li>coaches</li>
        <li>electric vehicles</li>
    </ul>Also includes the option to hire vehicles for short periods of time ranging from 1 day to 28 plus days'
}),

(ansFleetManagement:Answer {
    uuid: '54bf9a20-c5fa-49b6-93c8-7ddfcf1de38e',
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
    uuid: '766ff1ea-2d86-4272-bcb4-10a6481feb70',
    text: 'Vehicle telematics',
    hint: 'Access products and services to improve the safety and efficiency of fleet operations within the public sector. Products and services include:
    <ul>
        <li>telecommunication devices to track the movement of vehicles and inform decision making</li>
        <li>vehicle in-cab cameras and equipment</li>
        <li>Global Positioning Systems (GPS)</li>
        <li>fleet data analysis and risk management solutions</li>
    </ul>'
}),

(ansTyres:Answer {
    uuid: 'bc20e088-c543-4ab3-aba3-00f0944cf109',
    text: 'Tyres and/or fast fit products',
    hint: 'Access the supply, fit, repair and management of tyres. You can also access the supply of fast fit products and services such as:
    <ul>
        <li>wiper blades</li>
        <li>bulbs</li>
        <li>vehicle servicing</li>
    </ul>'
}),

(ansSupply:Answer {
    uuid: 'fcc6d387-b53b-4a54-ae0a-2284282d9644',
    text: 'Supply, fit and repair of vehicle glass',
    hint: 'Access the supply and fit of vehicle glass repairs. Also provides associated services and products on a regional or national basis. Glass can include any glass product which can be fitted to a vehicle including (but not limited to):
    <ul>
        <li>windscreens</li>
        <li>rear windscreens</li>
        <li>side windows</li>
    </ul>'
}),

(ansVehicleCharging:Answer {
    uuid: '865c8868-7933-4db9-b2dd-0c688e2ac496',
    text: 'Vehicle charging infrastructure solutions',
    hint: 'Buy a range of solutions to help you develop your charging infrastructure for electric and hybrid vehicles. Buy a full end to end service or specific elements of a service to meet your needs. Products and services available include:
    <ul>
        <li>installation of electric and hybrid chargers</li>
        <li>consultancy and feasibility services to help support your transition to low emission vehicles</li>
        <li>servicing and maintenance services for charging infrastructure</li>
        <li>associated hardware and accessories including charepoint equipment and peripherals (such as mounting poles and cables)</li>
    </ul>'
}),

(ansBlueLight:Answer {
    uuid: '2b49ffcb-3fb0-4593-b3db-bcc1707945ea',
    text: 'Blue light sector',
    hint: 'I am buying vehicles for emergency services'
}),

(ansBlueLight2:Answer {
    uuid: '83e71160-94d6-4bf6-aca0-cce02b64b003',
    text: 'Blue light sector',
    hint: 'I need tyres and/or fast fit products and services for emergency service vehicles'
}),

(ansOtherSectors:Answer {
    uuid: 'd9546c95-5e3f-4558-9514-f1c75dcd0831',
    text: 'Other sectors',
    hint: 'I am buying vehicles for non-emergency services'
}),

(ansOtherSectors2:Answer {
    uuid: '69b11626-d0b9-42de-9af3-7c354f1ad9cc',
    text: 'Other sectors',
    hint: 'I need tyres and/or fast fit products and services for non-emergency service vehicles'
}),

(ansBluelightCars:Answer {
    uuid: '8a0ce46e-079a-4587-b4d2-8eb365e13e86',
    text: 'Bluelight Cars and Motorcycles (Emergency Services)',
    hint: 'Buy emergency vehicles for blue light services including passenger cars, all terrain vehicles, motorcycles, scooters and quad bikes'
}),

(ansBluelightLight:Answer  {
    uuid: '21b5bb88-9531-4754-b970-fce06dc7f502',
    text: 'Bluelight Light and Medium Commercial Vehicles up to 7.5 Tonnes (Emergency Services)',
    hint: 'Buy light and medium emergency service vehicles. Includes emergency vehicles such as vans, car derived vans and pickups'
}),

(ansPassengerCars:Answer  {
    uuid: '898cfe37-7361-4110-9169-e3af72112906',
    text: 'Passenger cars',
    hint: 'Buy passenger cars including saloon, hatchback, estate, coupe, convertible, sports utility vehicles, 4x4s and multi purpose vehicles'
}),

(ansLightVehicles:Answer {
    uuid: 'bf3e6df6-2d10-45e6-84ea-d7722ff069f6',
    text: 'Light and medium commercial vehicles up to 7.5 tonnes',
    hint: 'Buy light and medium commercial vehicles up to 7.5 tonnes. Provides a range of commercial vehicle types including:
    <ul>
        <li>vans</li>
        <li>chassis cab</li>
        <li>combi</li>
        <li>crew</li>
        <li>panel</li>
        <li>tippers</li>
        <li>dropside</li>
        <li>fridge vans</li>
        <li>fridge box</li>
        <li>platform cab</li>
        <li>luton</li>
        <li>car derived vans and pickups</li>
    </ul>'
}),

(ansMediumVehicles:Answer  {
    uuid: '9cf44d42-652b-4d06-b330-7d3d9d083d75',
    text: 'Medium to heavy commercial vehicles',
    hint: 'Buy medium and heavy commercial vehicles. Includes chassis and cabs, heavy goods vehicles and trucks'
}),

(ansRefuseCollection:Answer {
    uuid: '3f6aa757-8c98-4e64-bea4-016cb6bd9fd3',
    text: 'Refuse collection and other waste management vehicles',
    hint: 'Buy refuse and waste manage vehicles including:
    <ul>
        <li>rear loaders</li>
        <li>side loaders</li>
        <li>front loaders</li>
    </ul>'
}),

(ansMinibuses:Answer {
    uuid: 'bc79523d-e57d-4544-9563-6bf3433b7e16',
    text: 'Minibuses (up to 17 Seats), including accessible and patient transport',
    hint: 'Buy minibuses with up to 17 seats. You can also use these vehicles for accessible and patient transport'
}),

(ansBuses:Answer {
    uuid: '2b3e86f0-6011-4c56-9fd7-872904bf32fd',
    text: 'Buses and coaches',
    hint: 'Buy buses and coaches with over 17 seats'
}),

(ansTrailers:Answer {
    uuid: '87276317-ef41-421d-a86d-babe8fd7a464',
    text: 'Trailers and mobile units, including health screening, events and mobile office units',
    hint: 'Buy trailers and mobile units which you can also use for health screening locations, events and as mobile office units. Trailer types can include:
    <ul>
        <li>flatbed </li>
        <li>refrigerated</li>
        <li>medical</li>
        <li>display and exhibition</li>
        <li>motorised and demountable</li>
        <li>mobile units</li>
    </ul>'
}),

(ansStandardVehicles:Answer {
    uuid: 'bf159105-07d2-4462-844c-3b65a857d6d3',
    text: 'Standard and specialist vehicles',
    hint: 'Buy a range of specialist bespoke vehicles and conversion services from a vehicle manufacturer or converter. These services allows you to make changes to a range of vehicles and can include:
    <ul>
        <li>specification design</li>
        <li>body build</li>
        <li>testing and associated maintenance</li>
    </ul>'
}),

(ansHireVehicles:Answer {
    uuid: '555bd8ea-998e-4511-9003-43337d49759c',
    text: 'Hire vehicles up to 3.5 tonnes',
    hint: 'Hire cars and light commercial vehicles (LCV) of up to 3.5 tonnes. There is also the option to:
    <ul>
        <li>include service maintenance and repair services</li>
        <li>include fleet management services such as salary sacrifice schemes</li>
        <li>get quotes for converted vehicles directly from suppliers</li>
        <li>access quotes for hiring standard (non converted) vehicles through the CCS fleet portal</li>
    </ul>'
}),

(ansHireCommercial:Answer {
    uuid: 'c11eebcf-151b-48d9-a309-4ae75d539f90',
    text: 'Hire Commercial vehicles',
    hint: 'Hire light, medium, heavy and specialist commercial vehicles. You can also access:
    <ul>
        <li>service maintenance and repair services</li>
        <li>fleet management services</li>
    </ul>
    You will need to get quotes directly from suppliers and not through our fleet portal'
}),

(ansShortTerm:Answer {
    uuid: 'c70e7214-6c55-4832-805b-ddc6b2e1602d',
    text: 'Short term vehicle hire',
    hint: 'Hire a range of vehicle types for short periods of time ranging from 1 day to 28 plus days. Includes access to:
    <ul>
        <li>UK national and international hiring serivces• a single supplier solution or specialist vehicle suppliers</li>
        <li>specialist vehicle hire companies with expert advice on how to meet your needs </li>
        <li>a car sharing lot designed to offer cost saving opportunities through hourly car share rates</li>
    </ul>'
}),

(ansUkNational:Answer {
    uuid: '1c79851f-e3e5-4761-82c6-817f1e959b91',
    text: 'UK national',
    hint: 'Hire passenger carrying vehicles including light commercial vehicles (vans for carrying goods) and 4x4 vehicles for use within the UK'
}),

(ansInternational:Answer {
    uuid: 'c3c7a40f-24af-480c-896b-25a7ba3216f6',
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

(ansYes:Answer {
    uuid: '69cdfd54-6cb0-4b87-acc8-d6e58f4a6725',
    text: 'Yes',
    hint: 'I need to hire a vehicle for less than 28 days'
}),

(ansNo:Answer {
    uuid: '2ff838d7-69e3-4246-a299-af0047199ae5',
    text: 'No',
    hint: 'I need to hire a vehicle for more than 28 days'
}),

(ansGeneralVehicle:Answer {
    uuid: 'ebccd97d-f91f-4ce5-9274-abf1789ea228',
    text: 'General vehicle hire',
    hint: 'Hire a range of passenger cars including light commercial vehicles, on road and full off road 4x4s and minibuses through a single supplier'
}),

(ansGeneralCar:Answer {
    uuid: '43c887f8-ae33-4307-b7a6-03e44a7b3346',
    text: 'General vehicle hire with car share',
    hint: 'Hire passenger cars including light commercial vehicles, on road and full off road 4x4s and minibuses. \n
4x4 vehicles will have full off road capability which can include automatic or manual 4 wheel drive and tow bars with the ability to tow up to 3.5 tonnes.\n
Also includes a car share option which offers cost saving opportunities through hourly car share rates.\n'
}),

(ans4x4Only:Answer {
    uuid: '46031101-fecc-4e38-8b9c-9b7c53111ced',
    text: '4x4 only',
    hint: 'Hire 4 wheel drive vehicles with automatic or manual 4 wheel drive capability. All 4x4 vehicles will have full off road capability and may include a tow bar with the ability to tow up to 3.5 tonnes'
}),

(ansMinibusOnly:Answer {
    uuid: 'e4a38263-0bdc-418b-b810-caf46a75bfca',
    text: 'Minibus only',
    hint: 'Hire minibuses with 9 to 17 seats. Minibus hire does not include a driver'
}),

(ansHeavy:Answer {
    uuid: '58df0092-716c-4d60-9aa3-365fd2e924d6',
    text: 'Heavy goods vehicles (HGVs) and Heavy commercial vehicles (HCVs) only',
    hint: 'Hire HGVs and HCVs which weigh over 3.5 tonnes'
}),

(ansCarShareOnly:Answer {
    uuid: '21ceb999-58c6-4663-aafa-12cfb6e085f7',
    text: 'Car share only',
    hint: 'Hire vehicles using one of the 4 types of car share. These are:
    <ul>
        <li>virtual vehicles: hire vehicles through the supplier\'s established car share network for very short periods of time (usually for 1 hour and hire is capped at one daily rate)</li>
        <li>dedicated pool vehicles: hire cars exclusively for use by the buyer\'s staff or by the buyer(s) for an extended period of time</li>
        <li>mixed used vehicle pool: reserve vehicles through the suppliers car share network for set periods of time, for example between 9am to 5pm </li>
        <li>car share technology only: access services to convert fleet vehicles owned by the buyer(s) to allow these vehicles to be reserved for car sharing through the supplier\'s online book system</li>
    </ul>'
}),

(ansHire:Answer {
    uuid: '91be056d-2a73-49e0-aee5-033aebe892af',
    text: 'Hire vehicles for at least 28 days or more',
    hint: 'Hire a range of vehicles for 28 days or more. Includes access to:
    <ul>
        <li>cars</li>
        <li>light and heavy commercial vehicles such as vans and trucks</li>
        <li>standard build or bespoke vehicles (vehicles which have been altered to meet specific needs or uses)</li>
        <li>flexible contract terms</li>
    </ul>'
}),

(ansGeneralHire:Answer {
    uuid: '2e7e8f82-99df-45e1-8ec7-5b843274877c',
    text: 'General hire of vehicles for more than 28 days',
    hint: 'Hire vehicles for more than 28 days only. Vehicle types include:
    <ul>
        <li>passenger cars</li>
        <li>light commercial vehicles</li>
        <li>on road and full off road 4x4s </li>
        <li>minibuses</li>
    </ul>'
}),

(ansHardware:Answer {
    uuid: '6835e74f-efd8-418f-9e7b-7c2fd5ba76ca',
    text: 'Hardware and software',
    hint: 'Lease, hire or buy vehicle telematics hardware and software solutions. Includes products such as cameras and tracking solutions for equipment which is fixed or stored within a vehicle'
}),


(ansSoftware:Answer {
    uuid: '0734f6e6-c67a-4e4f-a5e5-9d1b5cf11afa',
    text: 'Software only',
    hint: 'Suppliers will provide a software platform designed to enable buyers to analyse data from multiple sources to:
    <ul>
        <li>support their fleet operation</li>
        <li>optimise fleet whole life costs</li>
        <li>undertake effective risk management activities</li>
    </ul>'
}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyFleet:Journey {uuid: 'd6d4854a-aafc-40a2-96a1-6997e8af615a', name: 'Fleet'}),
(jrnyFleet)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '98046bdb-7c43-4fdb-a87d-67157419bc96'})-[:DEFINED_BY]->(qstnService),

(ansGrpVehiclePurchase:AnswerGroup {name: 'ansGrpVehiclePurchase'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehiclePurchase),
(ansGrpVehiclePurchase)-[:HAS_ANSWER {order: 1}]->(ansVehiclePurchase),
(ansGrpVehiclePurchase)-[:HAS_OUTCOME]->(qiVehiclePurchase:QuestionInstance:Outcome {uuid: 'af5a75e5-660a-42c0-b9e4-bb193cdff947'})-[:DEFINED_BY]->(qstnSector),

    (ansGrpBlueLight:AnswerGroup {name: 'ansGrpBlueLight'}),
    (qiVehiclePurchase)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLight),
    (ansGrpBlueLight)-[:HAS_ANSWER {order: 1}]->(ansBlueLight),
    (ansGrpBlueLight)-[:HAS_OUTCOME]->(qiBlueLight:QuestionInstance:Outcome {uuid: '58bcb119-9bfc-4fd2-8aaf-d50e94779f16'})-[:DEFINED_BY]->(qstnVehicle),

        (ansGrpBluelightCars:AnswerGroup {name: 'ansGrpBluelightCars'}),
        (qiBlueLight)-[:HAS_ANSWER_GROUP]->(ansGrpBluelightCars),
        (ansGrpBluelightCars)-[:HAS_ANSWER {order: 1}]->(ansBluelightCars),
        (ansGrpBluelightCars)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        (ansGrpBluelightLight:AnswerGroup {name: 'ansGrpBluelightLight'}),
        (qiBlueLight)-[:HAS_ANSWER_GROUP]->(ansGrpBluelightLight),
        (ansGrpBluelightLight)-[:HAS_ANSWER {order: 2}]->(ansBluelightLight),
        (ansGrpBluelightLight)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpOtherSectors:AnswerGroup {name: 'ansGrpOtherSectors'}),
    (qiVehiclePurchase)-[:HAS_ANSWER_GROUP]->(ansGrpOtherSectors),
    (ansGrpOtherSectors)-[:HAS_ANSWER {order: 2}]->(ansOtherSectors),
    (ansGrpOtherSectors)-[:HAS_OUTCOME]->(qiOtherSectors:QuestionInstance:Outcome {uuid: 'd1e79ef2-0d60-49a9-ada3-efedb57f9f9e'})-[:DEFINED_BY]->(qstnTypeOfService),
    
        (ansGrpPassengerCars:AnswerGroup {name: 'ansGrpPassengerCars'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpPassengerCars),
        (ansGrpPassengerCars)-[:HAS_ANSWER {order: 1}]->(ansPassengerCars),
        (ansGrpPassengerCars)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        (ansGrpLightVehicles:AnswerGroup {name: 'ansGrpLightVehicles'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpLightVehicles),
        (ansGrpLightVehicles)-[:HAS_ANSWER {order: 2}]->(ansLightVehicles),
        (ansGrpLightVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        (ansGrpMediumVehicles:AnswerGroup {name: 'ansGrpMediumVehicles'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpMediumVehicles),
        (ansGrpMediumVehicles)-[:HAS_ANSWER {order: 3}]->(ansMediumVehicles),
        (ansGrpMediumVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        (ansGrpRefuseCollection:AnswerGroup {name: 'ansGrpRefuseCollection'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpRefuseCollection),
        (ansGrpRefuseCollection)-[:HAS_ANSWER {order: 4}]->(ansRefuseCollection),
        (ansGrpRefuseCollection)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        (ansGrpMinibuses:AnswerGroup {name: 'ansGrpMinibuses'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpMinibuses),
        (ansGrpMinibuses)-[:HAS_ANSWER {order: 5}]->(ansMinibuses),
        (ansGrpMinibuses)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

        (ansGrpBuses:AnswerGroup {name: 'ansGrpBuses'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpBuses),
        (ansGrpBuses)-[:HAS_ANSWER {order: 6}]->(ansBuses),
        (ansGrpBuses)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),
        
        (ansGrpTrailers:AnswerGroup {name: 'ansGrpTrailers'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpTrailers),
        (ansGrpTrailers)-[:HAS_ANSWER {order: 7}]->(ansTrailers),
        (ansGrpTrailers)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '9', url: '', type: 'CAT', scale: true}),

        (ansGrpStandardVehicles:AnswerGroup {name: 'ansGrpStandardVehicles'}),
        (qiOtherSectors)-[:HAS_ANSWER_GROUP]->(ansGrpStandardVehicles),
        (ansGrpStandardVehicles)-[:HAS_ANSWER {order: 8}]->(ansStandardVehicles),
        (ansGrpStandardVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'})-[:HAS_LOT]->(:Lot {number: '10', url: '', type: 'CAT', scale: true}),

(ansGrpVehicleLease:AnswerGroup {name: 'ansGrpVehicleLease'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleLease),
(ansGrpVehicleLease)-[:HAS_ANSWER {order: 2}]->(ansVehicleLease),
(ansGrpVehicleLease)-[:HAS_OUTCOME]->(resultCCSEscapePage),

    // (ansGrpHireVehicles:AnswerGroup {name: 'ansGrpHireVehicles'}),
    // (qiVehicleLease)-[:HAS_ANSWER_GROUP]->(ansGrpHireVehicles),
    // (ansGrpHireVehicles)-[:HAS_ANSWER {order: 1}]->(ansHireVehicles),
    // (ansGrpHireVehicles)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    // (ansGrpHireCommercial:AnswerGroup {name: 'ansGrpHireCommercial'}),
    // (qiVehicleLease)-[:HAS_ANSWER_GROUP]->(ansGrpHireCommercial),
    // (ansGrpHireCommercial)-[:HAS_ANSWER {order: 2}]->(ansHireCommercial),
    // (ansGrpHireCommercial)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

    // (ansGrpShortTerm:AnswerGroup {name: 'ansGrpShortTerm'}),
    // (qiVehicleLease)-[:HAS_ANSWER_GROUP]->(ansGrpShortTerm),
    // (ansGrpShortTerm)-[:HAS_ANSWER {order: 3}]->(ansShortTerm),
    // (ansGrpShortTerm)-[:HAS_OUTCOME]->(resultCCSEscapePage),

        // (ansGrpUkNational:AnswerGroup {name: 'ansGrpUkNational'}),
        // (qiShortTerm)-[:HAS_ANSWER_GROUP]->(ansGrpUkNational),
        // (ansGrpUkNational)-[:HAS_ANSWER {order: 1}]->(ansUkNational),
        // (ansGrpUkNational)-[:HAS_OUTCOME]->(qiUkNational:QuestionInstance:Outcome {uuid: '292b6934-609b-4ceb-b403-ae051730c3e5'})-[:DEFINED_BY]->(qstn28Days),

        //     (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        //     (qiUkNational)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        //     (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        //     (ansGrpYes)-[:HAS_OUTCOME]->(qiYes:QuestionInstance:Outcome {uuid: 'ea0a7990-0c2e-4873-9fe5-476cf73e5364'})-[:DEFINED_BY]->(qstnTypeOfVehicle),

        //         (ansGrpGeneralVehicle:AnswerGroup {name: 'ansGrpGeneralVehicle'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralVehicle),
        //         (ansGrpGeneralVehicle)-[:HAS_ANSWER {order: 1}]->(ansGeneralVehicle),
        //         (ansGrpGeneralVehicle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

        //         (ansGrpGeneralCar:AnswerGroup {name: 'ansGrpGeneralCar'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralCar),
        //         (ansGrpGeneralCar)-[:HAS_ANSWER {order: 2}]->(ansGeneralCar),
        //         (ansGrpGeneralCar)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

        //         (ansGrp4x4Only:AnswerGroup {name: 'ansGrp4x4Only'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrp4x4Only),
        //         (ansGrp4x4Only)-[:HAS_ANSWER {order: 3}]->(ans4x4Only),
        //         (ansGrp4x4Only)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        //         (ansGrpMinibusOnly:AnswerGroup {name: 'ansGrpMinibusOnly'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpMinibusOnly),
        //         (ansGrpMinibusOnly)-[:HAS_ANSWER {order: 4}]->(ansMinibusOnly),
        //         (ansGrpMinibusOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

        //         (ansGrpHeavy:AnswerGroup {name: 'ansGrpHeavy'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpHeavy),
        //         (ansGrpHeavy)-[:HAS_ANSWER {order: 5}]->(ansHeavy),
        //         (ansGrpHeavy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true}),

        //         (ansGrpCarShareOnly:AnswerGroup {name: 'ansGrpCarShareOnly'}),
        //         (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpCarShareOnly),
        //         (ansGrpCarShareOnly)-[:HAS_ANSWER {order: 6}]->(ansCarShareOnly),
        //         (ansGrpCarShareOnly)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '7', url: '', type: 'CAT', scale: true}),

        //     (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        //     (qiUkNational)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        //     (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        //     (ansGrpNo)-[:HAS_OUTCOME]->(qiNo:QuestionInstance:Outcome {uuid: 'd3d523d1-b805-46fa-ac1e-f33dbe613418'})-[:DEFINED_BY]->(qstnTypeOfVehicle),

        //         (ansGrpHire:AnswerGroup {name: 'ansGrpHire'}),
        //         (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpHire),
        //         (ansGrpHire)-[:HAS_ANSWER {order: 1}]->(ansHire),
        //         (ansGrpHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),

        //         (ansGrpGeneralHire:AnswerGroup {name: 'ansGrpGeneralHire'}),
        //         (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpGeneralHire),
        //         (ansGrpGeneralHire)-[:HAS_ANSWER {order: 2}]->(ansGeneralHire),
        //         (ansGrpGeneralHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

        // (ansGrpInternational:AnswerGroup {name: 'ansGrpInternational'}),
        // (qiShortTerm)-[:HAS_ANSWER_GROUP]->(ansGrpInternational),
        // (ansGrpInternational)-[:HAS_ANSWER {order: 2}]->(ansInternational),
        // (ansGrpInternational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'})-[:HAS_LOT]->(:Lot {number: '8', url: '', type: 'CAT', scale: true}),

(ansGrpFleetManagement:AnswerGroup {name: 'ansGrpFleetManagement'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpFleetManagement),
(ansGrpFleetManagement)-[:HAS_ANSWER {order: 3}]->(ansFleetManagement),
(ansGrpFleetManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpVehicleTelematics:AnswerGroup {name: 'ansGrpVehicleTelematics'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleTelematics),
(ansGrpVehicleTelematics)-[:HAS_ANSWER {order: 4}]->(ansVehicleTelematics),
(ansGrpVehicleTelematics)-[:HAS_OUTCOME]->(qiVehicleTelematics:QuestionInstance:Outcome {uuid: '31cb0f60-fd85-41e2-9c37-0e4c33b6adb7'})-[:DEFINED_BY]->(qstnTypeOfService),

    (ansGrpHardware:AnswerGroup {name: 'ansGrpHardware'}),
    (qiVehicleTelematics)-[:HAS_ANSWER_GROUP]->(ansGrpHardware),
    (ansGrpHardware)-[:HAS_ANSWER {order: 1}]->(ansHardware),
    (ansGrpHardware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6143'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpSoftware:AnswerGroup {name: 'ansGrpSoftware'}),
    (qiVehicleTelematics)-[:HAS_ANSWER_GROUP]->(ansGrpSoftware),
    (ansGrpSoftware)-[:HAS_ANSWER {order: 2}]->(ansSoftware),
    (ansGrpSoftware)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6143'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpTyres:AnswerGroup {name: 'ansGrpTyres'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTyres),
(ansGrpTyres)-[:HAS_ANSWER {order: 5}]->(ansTyres),
(ansGrpTyres)-[:HAS_OUTCOME]->(qiTyres:QuestionInstance:Outcome {uuid: 'cdb061a2-b50d-4b21-a662-b3d04b86bed4'})-[:DEFINED_BY]->(qstnSector),

    (ansGrpBlueLight2:AnswerGroup {name: 'ansGrpBlueLight2'}),
    (qiTyres)-[:HAS_ANSWER_GROUP]->(ansGrpBlueLight2),
    (ansGrpBlueLight2)-[:HAS_ANSWER {order: 1}]->(ansBlueLight2),
    (ansGrpBlueLight2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpOtherSectors2:AnswerGroup {name: 'ansGrpOtherSectors2'}),
    (qiTyres)-[:HAS_ANSWER_GROUP]->(ansGrpOtherSectors2),
    (ansGrpOtherSectors2)-[:HAS_ANSWER {order: 2}]->(ansOtherSectors2),
    (ansGrpOtherSectors2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),

(ansGrpSupply:AnswerGroup {name: 'ansGrpSupply'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpSupply),
(ansGrpSupply)-[:HAS_ANSWER {order: 6}]->(ansSupply),
(ansGrpSupply)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

(ansGrpVehicleCharging:AnswerGroup {name: 'ansGrpVehicleCharging'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleCharging),
(ansGrpVehicleCharging)-[:HAS_ANSWER {order: 7}]->(ansVehicleCharging),
(ansGrpVehicleCharging)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'});
