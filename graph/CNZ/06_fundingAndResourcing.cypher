MATCH
(startingPoint:QuestionInstance {uuid: 'ba04c087-4fdb-4cea-85d8-917a625f07a8'})

CREATE
(ansCNZ:Answer {uuid: 'b1f75176-0b2b-4bd4-82c8-234b2573ed0e', text: 'Carbon net zero (CNZ) funding and grants', hint: 'Take a look at CNZ grants and funding opportunities from across the government'}),
(ansLeasingAndLoans:Answer {uuid: '94fe738e-bd92-42bb-b536-f935af3f86e7', text: 'Leasing and loans', hint: 'Specialist advice on leasing options, asset classes and savings initiatives'}),
(ansProcuring:Answer {uuid: '429d9ab2-e423-4830-b190-c945a5c225c3', text: 'Procuring the help of experts', hint: 'Access expert knowledge and consultancy. Includes business, strategy and policy, finance, HR, procurement, health and community, infrastructure, environment, and technology'}),
(ansFund:Answer {uuid: 'd9323068-225f-420f-a4a3-f20411291c7c', text: 'Fund administration a disbursement services', hint: 'Access a range of services for designing and administering schemes that disburse funds'}),


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(ansGrpCNZ:AnswerGroup {name: 'ansGrpCNZ'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpCNZ),
(ansGrpCNZ)-[:HAS_ANSWER {order: 1}]->(ansCNZ),
(ansGrpCNZ)-[:HAS_OUTCOME]->(:Url:Outcome {text:"Carbon Net Zero Funding and Grants", link: 'https://www.crowncommercial.gov.uk/social-value/carbon-net-zero/funding-and-grants',hint:'Take a look at CNZ grants and funding opportunities from across the government'}),

(ansGrpLeasingAndLoans:AnswerGroup {name: 'ansGrpLeasingAndLoans'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpLeasingAndLoans),
(ansGrpLeasingAndLoans)-[:HAS_ANSWER {order: 2}]->(ansLeasingAndLoans),
(ansGrpLeasingAndLoans)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6120'}),


(ansGrpProcuring:AnswerGroup {name: 'ansGrpProcuring'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpProcuring),
(ansGrpProcuring)-[:HAS_ANSWER {order: 3}]->(ansProcuring),
(ansGrpProcuring)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6187'}),
(ansGrpProcuring)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.8'}),

(ansGrpFund:AnswerGroup {name: 'ansGrpFund'}),
(startingPoint)-[:HAS_ANSWER_GROUP]->(ansGrpFund),
(ansGrpFund)-[:HAS_ANSWER {order: 4}]->(ansFund),
(ansGrpFund)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6322'});