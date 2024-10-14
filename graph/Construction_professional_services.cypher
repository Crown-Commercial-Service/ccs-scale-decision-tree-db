Match

(qstnFirstQ:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE

(ansBuilt:Answer {
    uuid: '06eec9a2-bb33-443d-b881-066014c3f9a3',
    text: 'Built Environment and General Infrastructure',
    hint: 'Multi-disciplinary construction advisory services to support a wide range of projects and programmes in the built environment, including project types such as:
    <ul>
        <li>hospitals</li>
        <li>schools and further education</li>
        <li>rail</li>
        <li>airports </li>
        <li>ports</li>
    </ul>'
}),

(ansUrbanRegeneration:Answer {
    uuid: '5e8e51f3-5ef7-4d09-bbaa-3e61497e1679',
    text: 'Urban Regeneration',
    hint: 'Multi-disciplinary construction advisory services to support a wide range of urban regeneration and infrastructure projects and programmes. This includes: 
    <ul>
        <li>town centre regeneration</li>
        <li>SMART and digital cities consultancy </li>
        <li>transportation links (rail, bus and road)</li>
        <li>sciene and tech campus development</li>
    </ul>'
}),

(ansInternational:Answer {
    uuid: 'f5233449-978b-4579-8aef-9f77c1a5699c',
    text: 'International',
    hint: 'Multi-disciplinary construction advisory services to support a wide range of projects and programmes in overseas locations across the world, including:
    <ul>
        <li>embassies</li>
        <li>ambassaor\'s Residences </li>
        <li>staff accommodation</li>
    </ul>'
}),

(ansHighRise:Answer {
    uuid: '5a9a90d0-5a45-45b3-9a06-150fa818d5d5',
    text: 'High Rise',
    hint: 'Multi-disciplinary construction advisory services to support a wide range of high rise projects and programmes, including:
    <ul>
      <li>high rise accommodation (7 storeys or more or 18 metres or above)</li>
      <li>construction and renovation (related to housing and/or residential accommodation)</li>
    </ul>'
}),

(ansDefence:Answer {
    uuid: 'b2ea392b-551f-4fb9-9b63-95ac3e2a9376',
    text: 'Defence',
    hint: 'Comprehensive construction advisory services for diverse projects, including sensitive programs requiring strict security measures for classified data, materials and sites. Project types include:
    <ul>
        <li>marine</li>
        <li>aviation</li>
        <li>airfields and civil infrastructure works</li>
    </ul>'
}),

(ansEnvironmentalAndSustainability:Answer {
    uuid: 'c1682c5d-eb3a-480f-9feb-bc36e69a90d6',
    text: 'Environmental and Sustainability',
    hint: 'Environmental and sustainability technical advisory services in support of construction related projects and programmes, including:
    <ul>
        <li>smart cities</li>
        <li>offshore energy </li>
        <li>flood defence</li>
    </ul>'
}),

(Agreement_RM6242:Agreement:Outcome {number: 'RM6242'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyCPS:Journey {uuid: '49d02c24-4561-4080-95c7-4d8b1549dbe5', name: 'Construction Professional Services'}),
(jrnyCPS)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '1cd7047f-52d9-400a-b22a-f9567ac11413'})-[:DEFINED_BY]->(qstnFirstQ),

(ansGrpBuilt:AnswerGroup {name: 'ansGrpBuilt'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpBuilt),
(ansGrpBuilt)-[:HAS_ANSWER {order: 1}]->(ansBuilt),
(ansGrpBuilt)-[:HAS_OUTCOME]->(Agreement_RM6242),
(ansGrpBuilt)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

(ansGrpUrbanRegeneration:AnswerGroup {name: 'ansGrpUrbanRegeneration'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpUrbanRegeneration),
(ansGrpUrbanRegeneration)-[:HAS_ANSWER {order: 2}]->(ansUrbanRegeneration),
(ansGrpUrbanRegeneration)-[:HAS_OUTCOME]->(Agreement_RM6242),
(ansGrpUrbanRegeneration)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '2', url: '', type: 'CAT', scale: true}),


(ansGrpInternational:AnswerGroup {name: 'ansGrpInternational'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpInternational),
(ansGrpInternational)-[:HAS_ANSWER {order: 3}]->(ansInternational),
(ansGrpInternational)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),


(ansGrpHighRise:AnswerGroup {name: 'ansGrpHighRise'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpHighRise),
(ansGrpHighRise)-[:HAS_ANSWER {order: 4}]->(ansHighRise),
(ansGrpHighRise)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '4', url: '', type: 'CAT', scale: true}),


(ansGrpDefence:AnswerGroup {name: 'ansGrpDefence'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDefence),
(ansGrpDefence)-[:HAS_ANSWER {order: 5}]->(ansDefence),
(ansGrpDefence)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),


(ansGrpEnvironmentalAndSustainability:AnswerGroup {name: 'ansGrpEnvironmentalAndSustainability'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEnvironmentalAndSustainability),
(ansGrpEnvironmentalAndSustainability)-[:HAS_ANSWER {order: 6}]->(ansEnvironmentalAndSustainability),
(ansGrpEnvironmentalAndSustainability)-[:HAS_OUTCOME]->(Agreement_RM6242),
(ansGrpEnvironmentalAndSustainability)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6165'})-[:HAS_LOT]->(:Lot {number: '6', url: '', type: 'CAT', scale: true});


