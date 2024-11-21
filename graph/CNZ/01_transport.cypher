MATCH
(qstnSolution:Question {uuid: '8d972d0f-fd89-445f-9aa5-ae7a7854c54f'}),
(startingPoint:QuestionInstance {uuid: '21794ee2-aa77-47e4-9ab2-ad399676d0f5'})

CREATE
(ansVehicles:Answer {
    uuid: 'e6980e87-bfbf-41c7-833d-d96d655a0589',
    text: 'Vehicles',
    hint: 'Access services such as:
    <ul>
        <li>green salary sacrifice</li>
        <li>fleet vehicles</li>
        <li>charging points</li>
        <li>low emission vehicles</li>
    </ul>'
}),
(ansTrafficManagement:Answer {
    uuid: '1a49a557-c562-432c-ae42-45b18595d573',
    text: 'Traffic management',
    hint: 'Lease or buy transport technologies:
    <ul>
        <li>telematics</li>
        <li>tracking</li>
        <li>data systems for road, rail, air, and sea sectors</li>
    </ul>'
}),
(ansZeroEmission:Answer {uuid: 'f81374f6-8c06-40a3-8038-4f7f0ecbe3ba', text: 'Zero emission public transport', hint: 'Zero or low emission vehicles of all sizes, specifications and fuel types'}),
(ansCycle:Answer {uuid: 'd993bd75-e8dd-4691-bcf4-d72873a34df1', text: 'Cycle to work scheme', hint: 'Provides a cycle to work scheme for your workforce. Includes those who are working remotely or travelling'}),
(ansLogistics:Answer {uuid: '776b413f-803e-4c6e-ba09-b3d3b5653dd9', text: 'Logistics and warehousing', hint: 'Comprehensive logistics services: storage, food, warehousing, distribution and transport solutions, both UK and international, with quality control'}),
(ansMobility:Answer {uuid: 'eb0980bf-43c8-4d98-ad51-69abb59f353b', text: 'Mobility solutions', hint: 'Find reduced or zero-emissions options for your workforce or customers\' travel, accommodation and transport needs'}),


(ansGreenSalary:Answer {uuid: 'f3968bee-de1b-4b72-84ea-75ad6b18193d', text: 'Green salary sacrifice', hint: 'This scheme offers employees new, cost-effective Ultra Low Emissions Vehicles (ULEVs), through pre-tax salary deductions'}),
(ansOperationalFleet:Answer {uuid: '841a8676-3953-4c68-a11f-fbae1c40fc76', text: 'Operational fleet vehicles', hint: 'Access leasing and hiring options, purchase vehicles, manage your fleet and get quick, efficient repairs and parts replacement'}),
(ansVCP:Answer {uuid: 'cf507c67-c285-437f-bd42-bdaa61a37c48', text: 'Vehicle charging point', hint: 'Find solutions to help design and install charging infrastructure for electric and hybrid vehicles'}),
(ansULEVs:Answer {uuid: 'a8026258-fd5d-42f1-a51d-0547ed0dab4b', text: 'Ultra low and zero emission vehicles (ULEVs)', hint: 'Buy, hire and lease ULEVs, to help reduce your organisations carbon commissions'}),

(ansBetterFood:Answer {uuid: 'c1549f07-b1af-4068-b639-6cc7a36d4517', text: 'Buying Better Food Portal', hint: 'Buy food and drink online. Simplify logistics to reduce food miles and emissions'}),
(ansLogisticsAndWarehousing:Answer {
    uuid: '5d76cd71-4330-4c84-8a40-e196dfe2ab23',
    text: 'Logistics and warehousing solutions',
    hint: 'Comprehensive logistics services:
    <ul>
        <li>storage</li>
        <li>warehousing </li>
        <li>distribution</li>
        <li>transport solutions, both UK and international, with quality control</li>

    </ul>'
}),

(ansTravelAndVenue:Answer {uuid: '74f4d91b-0b20-432f-a722-c246302aeac6', text: 'Travel and Venue Solutions', hint: 'Book air, rail, accommodation, meeting venues and additional travel services in the UK and overseas through leading travel suppliers'}),
(ansVehiclePurchase:Answer {uuid: '3043a182-122a-4c8b-9fe8-98407b2c07aa', text: 'Vehicle purchase, lease and hiring solutions', hint: 'Hire or buy various vehicles for all needs, from fleet operations to specialised requirements, locally and abroad'}),

(ansLease:Answer {uuid: 'a7e07358-eb32-4e59-b435-909a89094608', text: 'Lease and hiring solutions', hint: 'Central government and wider public sector can lease passenger cars and light, medium and heavy commercial vehicles. Includes fleet management and salary sacrifice car schemes'}),
(ansPurchasingSolutions:Answer {uuid: '056b8e76-66fc-4ae7-9a5f-2ad8903ade5e', text: 'Purchasing solutions', hint: 'Buy standard, converted and specialist vehicles. Includes access to vehicles of all sizes, specifications and fuel types'}),
(ansTyre:Answer {uuid: 'd277d935-0f24-4bc3-a2be-13769c034086', text: 'Tyre, glass and fast fit solutions', hint: 'Services to supply and fit tyres, and repair or replace all glass on vehicles'}),

(ansVehicleLease:Answer {uuid: 'e12467f9-89e0-4f63-8e38-5d24ea001848', text: 'Vehicle Lease, Fleet Management and Salary Sacrifice Car Schemes', hint: 'This will allow you to lease passenger cars and commercial vehicles. Includes fleet management and salary sacrifice car schemes'}),
(ansVehicleHire:Answer {uuid: '9d75e245-5559-4868-8293-1ac96af525ba', text: 'Vehicle hire and purchase solutions', hint: 'Hire or buy vehicles for all needs, from fleet operations to specialised requirements, locally and abroad'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


(ansGrpVehicles:AnswerGroup {name: 'ansGrpVehicles'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpVehicles),
(ansGrpVehicles)-[:HAS_ANSWER {order: 1}]->(ansVehicles),
(ansGrpVehicles)-[:HAS_OUTCOME]->(qiVehicles:QuestionInstance:Outcome {uuid: '1281a5bb-4c07-4f0b-b1ee-26c09c3cfcb9'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpGreenSalary:AnswerGroup {name: 'ansGrpGreenSalary'}),
    (qiVehicles)-[:HAS_ANSWER_GROUP]->(ansGrpGreenSalary),
    (ansGrpGreenSalary)-[:HAS_ANSWER {order: 1}]->(ansGreenSalary),
    (ansGrpGreenSalary)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6268'}),

    (ansGrpOperationalFleet:AnswerGroup {name: 'ansGrpOperationalFleet'}),
    (qiVehicles)-[:HAS_ANSWER_GROUP]->(ansGrpOperationalFleet),
    (ansGrpOperationalFleet)-[:HAS_ANSWER {order: 2}]->(ansOperationalFleet),
    (ansGrpOperationalFleet)-[:HAS_OUTCOME]->(qiCycle:QuestionInstance:Outcome {uuid: '98f3998f-86a5-4de2-a434-f157edf30d8e'})-[:DEFINED_BY]->(qstnSolution),

        (ansGrpLease:AnswerGroup {name: 'ansGrpLease'}),
        (qiCycle)-[:HAS_ANSWER_GROUP]->(ansGrpLease),
        (ansGrpLease)-[:HAS_ANSWER {order: 1}]->(ansLease),
        (ansGrpLease)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6268'}),
        (ansGrpLease)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6265'}),

        (ansGrpPurchasingSolutions:AnswerGroup {name: 'ansGrpPurchasingSolutions'}),
        (qiCycle)-[:HAS_ANSWER_GROUP]->(ansGrpPurchasingSolutions),
        (ansGrpPurchasingSolutions)-[:HAS_ANSWER {order: 2}]->(ansPurchasingSolutions),
        (ansGrpPurchasingSolutions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'}),

        (ansGrpTyre:AnswerGroup {name: 'ansGrpTyre'}),
        (qiCycle)-[:HAS_ANSWER_GROUP]->(ansGrpTyre),
        (ansGrpTyre)-[:HAS_ANSWER {order: 3}]->(ansTyre),
        (ansGrpTyre)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6142'}),

    (ansGrpVCP:AnswerGroup {name: 'ansGrpVCP'}),
    (qiVehicles)-[:HAS_ANSWER_GROUP]->(ansGrpVCP),
    (ansGrpVCP)-[:HAS_ANSWER {order: 3}]->(ansVCP),
    (ansGrpVCP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),
    (ansGrpVCP)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'}),

    (ansGrpULEVs:AnswerGroup {name: 'ansGrpULEVs'}),
    (qiVehicles)-[:HAS_ANSWER_GROUP]->(ansULEVs),
    (ansGrpULEVs)-[:HAS_ANSWER {order: 4}]->(ansMobility),
    (ansGrpULEVs)-[:HAS_OUTCOME]->(qiULEVs:QuestionInstance:Outcome {uuid: 'bd47469a-7dc4-402b-b79a-2f698fac534f'})-[:DEFINED_BY]->(qstnSolution),

        (ansGrpVehicleLease:AnswerGroup {name: 'ansGrpVehicleLease'}),
        (qiULEVs)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleLease),
        (ansGrpVehicleLease)-[:HAS_ANSWER {order: 1}]->(ansVehicleLease),
        (ansGrpVehicleLease)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6268'}),
        
        (ansGrpVehicleHire:AnswerGroup {name: 'ansGrpVehicleHire'}),
        (qiULEVs)-[:HAS_ANSWER_GROUP]->(ansGrpVehicleHire),
        (ansGrpVehicleHire)-[:HAS_ANSWER {order: 2}]->(ansVehicleHire),
        (ansGrpVehicleHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6265'}),
        (ansGrpVehicleHire)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'}),

(ansGrpTrafficManagement:AnswerGroup {name: 'ansGrpTrafficManagement'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpTrafficManagement),
(ansGrpTrafficManagement)-[:HAS_ANSWER {order: 2}]->(ansTrafficManagement),
(ansGrpTrafficManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3615'}),
(ansGrpTrafficManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'}),


(ansGrpZeroEmission:AnswerGroup {name: 'ansGrpZeroEmission'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpZeroEmission),
(ansGrpZeroEmission)-[:HAS_ANSWER {order: 3}]->(ansZeroEmission),
(ansGrpZeroEmission)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6244'}),

(ansGrpCycle:AnswerGroup {name: 'ansGrpCycle'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpCycle),
(ansGrpCycle)-[:HAS_ANSWER {order: 4}]->(ansCycle),
(ansGrpCycle)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6273'}),


(ansGrpLogistics:AnswerGroup {name: 'ansGrpLogistics'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpLogistics),
(ansGrpLogistics)-[:HAS_ANSWER {order: 5}]->(ansLogistics),
(ansGrpLogistics)-[:HAS_OUTCOME]->(qiLogistics:QuestionInstance:Outcome {uuid: '69747f62-f144-4c8f-96b5-c10ec3d1bff4'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpBetterFood:AnswerGroup {name: 'ansGrpBetterFood'}),
    (qiLogistics)-[:HAS_ANSWER_GROUP]->(ansGrpBetterFood),
    (ansGrpBetterFood)-[:HAS_ANSWER {order: 1}]->(ansBetterFood),
    (ansGrpBetterFood)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6279'}),

    (ansGrpLogisticsAndWarehousing:AnswerGroup {name: 'ansGrpLogisticsAndWarehousing'}),
    (qiLogistics)-[:HAS_ANSWER_GROUP]->(ansGrpLogisticsAndWarehousing),
    (ansGrpLogisticsAndWarehousing)-[:HAS_ANSWER {order: 2}]->(ansLogisticsAndWarehousing),
    (ansGrpLogisticsAndWarehousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6329'}),
    (ansGrpLogisticsAndWarehousing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6282'}),

(ansGrpMobility:AnswerGroup {name: 'ansGrpMobility'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpMobility),
(ansGrpMobility)-[:HAS_ANSWER {order: 6}]->(ansMobility),
(ansGrpMobility)-[:HAS_OUTCOME]->(qiMobility:QuestionInstance:Outcome {uuid: 'a20237b6-722d-427a-8c7f-c75a6520ad52'})-[:DEFINED_BY]->(qstnSolution),

    (ansGrpTravelAndVenue:AnswerGroup {name: 'ansGrpTravelAndVenue'}),
    (qiMobility)-[:HAS_ANSWER_GROUP]->(ansGrpTravelAndVenue),
    (ansGrpTravelAndVenue)-[:HAS_ANSWER {order: 1}]->(ansTravelAndVenue),
    (ansGrpTravelAndVenue)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6342'}),

    (ansGrpVehiclePurchase:AnswerGroup {name: 'ansGrpVehiclePurchase'}),
    (qiMobility)-[:HAS_ANSWER_GROUP]->(ansGrpVehiclePurchase),
    (ansGrpVehiclePurchase)-[:HAS_ANSWER {order: 2}]->(ansVehiclePurchase),
    (ansGrpVehiclePurchase)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6268'}),
    (ansGrpVehiclePurchase)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6265'});