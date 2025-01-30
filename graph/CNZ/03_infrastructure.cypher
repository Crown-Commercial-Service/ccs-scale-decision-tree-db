MATCH
(startingPoint:QuestionInstance {uuid: 'dcc54ad0-0607-4af0-863b-0033b6687da0'})

CREATE
(ansVCI:Answer {uuid: 'abc879a5-d07e-4adf-b359-c564923c7a9c', text: 'Vehicle charging infrastructure', hint: 'Find solutions to help develop charging infrastructure for electric and hybrid vehicles'}),
(ansEnergy:Answer {uuid: '4557fb79-81f0-48ad-b0b5-26859cb793d1', text: 'Energy supply', hint: 'Access long-term renewable electricity contracts'}),
(ansWater:Answer {uuid: '3c9d100e-9cf2-4994-a64c-914a71045892', text: 'Water and waste', hint: 'Water and wastewater management services, plus initiatives to reduce food and packaging waste'}),
(ansConnectivity:Answer {uuid: 'f1dff7a0-10f2-4b51-9564-532138b4610f', text: 'Connectivity and network services', hint: 'Access IT hardware, software, networks, and communication services, including Internet of Things (IoT) and Smart City technologies'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansGrpVCI:AnswerGroup {name: 'ansGrpVCI'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpVCI),
(ansGrpVCI)-[:HAS_ANSWER {order: 1}]->(ansVCI),
(ansGrpVCI)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),
(ansGrpVCI)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'}),

(ansGrpEnergy:AnswerGroup {name: 'ansGrpEnergy'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpEnergy),
(ansGrpEnergy)-[:HAS_ANSWER {order: 2}]->(ansEnergy),
(ansGrpEnergy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6289'}),

(ansGrpWater:AnswerGroup {name: 'ansGrpWater'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpWater),
(ansGrpWater)-[:HAS_ANSWER {order: 3}]->(ansWater),
(ansGrpWater)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6279'}),
(ansGrpWater)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6306'}),

(ansGrpConnectivity:AnswerGroup {name: 'ansGrpConnectivity'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpConnectivity),
(ansGrpConnectivity)-[:HAS_ANSWER {order: 4}]->(ansConnectivity),
(ansGrpConnectivity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6116'}),
(ansGrpConnectivity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6098'});