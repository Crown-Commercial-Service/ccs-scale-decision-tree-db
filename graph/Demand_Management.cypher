Match
(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'}),
(qiEnergyFirstQuestion:QuestionInstance {uuid: '0a8b5f65-a531-4110-a49a-2ff2d48a94f1'})

CREATE
(qstnDecarbonise:Question {uuid: '70856dc0-3b05-43c8-b677-e2f3f8883e47', text: 'Do you want to decarbonise your energy?', type: 'LIST'}),
(qstnEfficient:Question {uuid: '93695838-8426-4409-8f82-7176f9aa2303', text: 'Do you want to make changes to your buildings to make your organisation more energy efficient?', type: 'LIST'}),
(qstnCost:Question {uuid: '9a9c52e2-a7f6-4b6f-8a1d-76082f9bf5f0', text: 'How much will your project cost?', type: 'LIST'}),

(ansYesForFirst:Answer {uuid: 'bae479e0-195e-4920-9378-fac9b1556e31', text: 'Yes', hint: 'I want to make my buildings more energy efficient and reduce my carbon emissions by changing the type of energy I use. For example, using renewable energy instead of natural gas'}),
(ansNoForFirst:Answer {uuid: 'aa52ace6-8e59-4eb0-9b01-43fb90b62803', text: 'No', hint: 'I want to access the supply of electricity, gas and sustainable transport technology services'}),

(ansSolar:Answer {
    uuid: '9e8ca4a7-ec40-4f48-961f-5764fd6c4952',
    text: 'Solar photovoltaic services',
    hint: 'Access solar services to generate electricity from the sun\'s energy. Services include:
    <ul>
        <li>ground mounted solar panels</li>
        <li>roof mounted solar panels</li>
        <li>exporting solar energy to the grid (electricity supply networks)</li>
        <li>solar farms</li>
        <li>solar car ports </li>
    </ul>'
}),

(ansBattery:Answer {
    uuid: 'e1b8a046-4022-4d34-8f0d-a1d5ec0f6517',
    text: 'Battery and energy storage',
    hint: 'Access energy storage services. Enables customers to store energy from renewable sources (like solar and wind) and use the power when they need it most. Services include:
    <ul>
        <li>battery optimisation</li>
        <li>solar thermal storage</li>
        <li>compressed air energy storage</li>
        <li>flow batteries</li>
        <li>mechanical gravity energy storage</li>
    </ul>'
}),

(ansHeat:Answer {
    uuid: '61db07be-3b10-4757-9908-59a5ced7f415',
    text: 'Heat pumps',
    hint: 'Use heat pumps to take energy from outside to generate heat within your buildings. Services include:
    <ul>
        <li>water source heat pumps (extracts heat from a body of water and uses this energy to heat your buildings)</li>
        <li>air source heat pumps (extracts heat from the air)</li>
        <li>ground source heat pumps (extracts heat from the ground)</li>
        <li>shared loop system (where two or more properties use a shared heat pump)</li>
    </ul>'
}),

(ansHeatNetworks:Answer {
    uuid: 'd71d685b-5e92-4961-a075-faaacf678a2c',
    text: 'Heat networks',
    hint: 'Supplies heat from a central source to customers using a network of underground pipes carrying hot water. Heat networks can cover small and large areas such as a cluster of buildings or even an entire city. Services include:
    <ul>
        <li>district energy centre</li>
        <li>energy from waste</li>
        <li>Heat Network Delivery Unit (HNDU)</li>
        <li>Green Heat Network Fund (GHNF)</li>
        <li>combined heat and power</li>
        <li>geothermal</li>
        <li>solar thermal heat</li>
        <li>hydrogen for heat</li>
    </ul>'
}),

(ansCNZ:Answer {
    uuid: 'f528b0fc-1e78-4cdf-aeee-e174e75e4cd8',
    text: 'Carbon Net Zero consultancy',
    hint: 'Access consultancy services to get advice on and design low carbon and renewable technologies. Services include:
    <ul>
        <li>power purchase agreement consultancy</li>
        <li>decarbonisation strategy </li>
        <li>carbon offsetting</li>
        <li>heat network design</li>
        <li>environmental planning</li>
        <li>scope emissions support</li>
        <li>carbon reporting</li>
    </ul>'
}),

(ansOther:Answer {
    uuid: 'a3d5157d-9370-4bec-9ea4-bd9ec2994e93',
    text: 'Other decarbonisation measures',
    hint: 'Switch to low carbon energy sources such as:
    <ul>
        <li>wind generation</li>
        <li>hydrogen</li>
        <li>building management systems</li>
        <li>LED lighting</li>
        <li>carbon capture and storage</li>
    </ul>'
}),

(ansNo:Answer {uuid: 'e57ff969-f60e-4662-be05-f9d40be206b3', text: 'No', hint: 'I want to access the supply of electricity, gas and sustainable transport technology services'}),
(ansYes:Answer {uuid: '1a45cde1-549b-44f7-9400-ecebd85cf870', text: 'Yes', hint: 'I want to make my buildings more energy efficient and reduce my carbon emissions by changing the type of energy I use. For example, using renewable energy instead of natural gas'}),

(ansDesign:Answer {
    uuid: '2cb45c63-2dd3-4af6-8a11-ce304cb879e0',
    text: 'Design and feasibility study',
    hint: 'Access the technical consultancy support you need to provide decarbonisation measures. Includes:
    <ul>
        <li>consultancy services</li>
        <li>survey reports on carbon reduction projects</li>
        <li>services to design solar farms</li>
    </ul>'
}),

(ansInstallation:Answer {
    uuid: '99ca209c-cab0-4519-a1c2-89f51ee4b9e3',
    text: 'Installation services',
    hint: 'Access services to support the installation and construction of demand management and/or renewable products such as:
    <ul>
        <li>heat pumps (provides heat to a building by transferring thermal energy from outside)</li>
        <li>wind generation</li>
        <li>L.E.D lighting </li>
        <li>solar panels </li>
    </ul>'
}),

(ansServicing:Answer {
    uuid: 'c6fc4b75-4ab2-4db3-9c57-8b08cb10d7de',
    text: 'Servicing and Maintenance',
    hint: 'Access services to maintain the efficiency of your current demand management or renewable generation asset to ensure it is providing the quality required within the specification. Energy assets include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
    </ul> <br> Renewable generation assets include:
    <ul>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansWiderEnergy:Answer {
    uuid: '320f6c4f-dd10-44ff-975a-ad9bc3f54e85',
    text: 'Wider energy or renewable generation products',
    hint: 'Buy wider energy or renewable generation products which will be installed at a later date. Products include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansPolicy:Answer {
    uuid: 'c59f7efc-f816-4772-815f-7d9866930159',
    text: 'Policy services',
    hint: 'Provides support in:
    <ul>
        <li>providing new government policy and legislation on decarbonisation </li>
        <li>carrying out existing government policy</li>
    </ul>'
}),

(ansDecommissioning:Answer {
    uuid: '09cb9c45-2d4b-4a8a-b5a5-5315aa4418ca',
    text: 'Decommissioning services',
    hint: 'Provides services to remove and dispose of any wider energy or renewable generation products in line with appropriate environmental standards. Wider energy or renewable generation products include:
    <ul>
        <li>heat pumps</li>
        <li>electric vehicle charging points</li>
        <li>hydrogen ready pipes</li>
        <li>wind power</li>
        <li>solar power</li>
        <li>bioenergy</li>
    </ul>'
}),

(ansEnd:Answer {
    uuid: 'ecc34f29-ad1f-4d35-9b5e-5a513c8fb6fa',
    text: 'End to end service',
    hint: 'Provides you with all the products and services you need to design, put in place and maintain your energy project from start to finish. Services include:
    <ul>
        <li>design and feasibility study</li>
        <li>installation services</li>
        <li>servicing and maintenance</li>
        <li>buying energy or renewable products (such as wind turbines)</li>
        <li>decommissioning services</li>
        <li>policy delivery</li>
    </ul>'
}),

(ansEandG:Answer {uuid: '808db471-f5d6-4e26-9718-241c2ddaf32c', text: 'Supply of electricity and gas', hint: 'Access the supply of electricity and gas to the public sector and their associated bodies and agencies. This includes billing, administration, customer service and ancillary services'}),

(ansEV:Answer {
    uuid: '14fcb695-909b-44b5-9af1-ff8dcc46815e',
    text: 'Sustainable transport technologies',
    hint: 'Access transport technology to help you move to sustainable transport and monitor the environmental impacts of your fleet. Includes:
    <ul>
        <li>electric vehicle charging equipment</li>
        <li>sustainable technologies including clean air zone and carbon net zero initiatives</li>
        <li>intelligent transport systems (such as, geographic, asset and environmental management and monitoring systems)</li>
    </ul>'
}),

(ansZeroToOne:Answer {uuid: '2c52193c-168b-4ab5-a411-f97b6307f47f', text: 'My project will cost between £0 and £1 million'}),
(ansOneOrMore:Answer {uuid: 'c9728db5-5ed2-4134-b73f-5b1a31f8a336', text: 'My project will cost £1 million or more'}),

(ansDesignForPublic:Answer {
    uuid: '553ed877-3f11-4983-b26e-58cd8f6c3109',
    text: 'Design and consultancy services for public sector organisations',
    hint: 'Access suppliers who can provide consultancy and design services for heat network, space heating and domestic heating solutions. Services include: 
    <ul>
        <li>onsite surveys and infrastructure assessments</li>
        <li>design services for the development of a new district energy centre</li>
        <li>business case support for connection to existing heat networks including financial forecasting</li>
        <li>design services to support the maintenance and improvement works on an existing Additional Clients heat network</li>
    </ul>'
}),

(ansDesignManagement:Answer {
    uuid: '18301dc8-b672-469a-a014-5422db1acbd5',
    text: 'Design, consultancy and subsequent construction management services',
    hint: 'Access suppliers who can provide consultancy, design and construction management services for heat network and space heating solutions. Services include:
    <ul>
        <li>civil engineering works </li>
        <li>installation works of insulated pipe systems </li>
        <li>operation and maintenance technical inspectors</li>
        <li>control system specialist </li>
        <li>design engineer and project management</li>
    </ul>'
}),

(Agreement_RM6313:Agreement:Outcome {number: 'RM6313'}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyDemandManagement:Journey {uuid: '1882b50f-ad71-4b82-9dbe-83e3226b11f0', name: 'Demand_Management'}),
(jrnyDemandManagement)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: '60b546b9-8160-4cea-b97f-69af5ee8d86a'})-[:DEFINED_BY]->(qstnDecarbonise),

(ansGrpYesForFirst:AnswerGroup {name: 'ansGrpYesForFirst'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpYesForFirst),
(ansGrpYesForFirst)-[:HAS_ANSWER {order: 1}]->(ansYesForFirst),
(ansGrpYesForFirst)-[:HAS_OUTCOME]->(qiYesForFirst:QuestionInstance:Outcome {uuid: 'd74f482d-20af-4446-ba13-de962f8683c7'})-[:DEFINED_BY]->(qstnService),

    (ansGrpSolar:AnswerGroup {name: 'ansGrpSolar'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpSolar),
    (ansGrpSolar)-[:HAS_ANSWER {order: 1}]->(ansSolar),
    (ansGrpSolar)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

    (ansGrpBattery:AnswerGroup {name: 'ansGrpBattery'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpBattery),
    (ansGrpBattery)-[:HAS_ANSWER {order: 2}]->(ansBattery),
    (ansGrpBattery)-[:HAS_OUTCOME]->(qiBattery:QuestionInstance:Outcome {uuid: 'df95bd92-cd46-4e94-a16d-8896a1afa5d2'})-[:DEFINED_BY]->(qstnCost),

        (ansGrpZeroToOne_1:AnswerGroup {name: 'ansGrpZeroToOne_1'}),
        (qiBattery)-[:HAS_ANSWER_GROUP]->(ansGrpZeroToOne_1),
        (ansGrpZeroToOne_1)-[:HAS_ANSWER {order: 1}]->(ansZeroToOne),
        (ansGrpZeroToOne_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '2.1', url: '', type: 'CAT', scale: true}),

        (ansGrpOneOrMore_1:AnswerGroup {name: 'ansGrpOneOrMore_1'}),
        (qiBattery)-[:HAS_ANSWER_GROUP]->(ansGrpOneOrMore_1),
        (ansGrpOneOrMore_1)-[:HAS_ANSWER {order: 2}]->(ansOneOrMore),
        (ansGrpOneOrMore_1)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '2.2', url: '', type: 'CAT', scale: true}),

    (ansGrpHeat:AnswerGroup {name: 'ansGrpHeat'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpHeat),
    (ansGrpHeat)-[:HAS_ANSWER {order: 3}]->(ansHeat),
    (ansGrpHeat)-[:HAS_OUTCOME]->(qiHeat:QuestionInstance:Outcome {uuid: '5ea44f02-db1b-4330-8497-15d061f7b450'})-[:DEFINED_BY]->(qstnCost),

        (ansGrpZeroToOne_2:AnswerGroup {name: 'ansGrpZeroToOne_2'}),
        (qiHeat)-[:HAS_ANSWER_GROUP]->(ansGrpZeroToOne_2),
        (ansGrpZeroToOne_2)-[:HAS_ANSWER {order: 1}]->(ansZeroToOne),
        (ansGrpZeroToOne_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '3.1', url: '', type: 'CAT', scale: true}),

        (ansGrpOneOrMore_2:AnswerGroup {name: 'ansGrpOneOrMore_2'}),
        (qiHeat)-[:HAS_ANSWER_GROUP]->(ansGrpOneOrMore_2),
        (ansGrpOneOrMore_2)-[:HAS_ANSWER {order: 2}]->(ansOneOrMore),
        (ansGrpOneOrMore_2)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '3.2', url: '', type: 'CAT', scale: true}),

    (ansGrpHeatNetworks:AnswerGroup {name: 'ansGrpHeatNetworks'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpHeatNetworks),
    (ansGrpHeatNetworks)-[:HAS_ANSWER {order: 4}]->(ansHeatNetworks),
    (ansGrpHeatNetworks)-[:HAS_OUTCOME]->(qiHeatNetworks:QuestionInstance:Outcome {uuid: 'e780d5d4-d253-404f-b922-7287ade4ec9e'})-[:DEFINED_BY]->(qstnService),

        (ansGrpDesignForPublic:AnswerGroup {name: 'ansGrpDesignForPublic'}),
        (qiHeatNetworks)-[:HAS_ANSWER_GROUP]->(ansGrpDesignForPublic),
        (ansGrpDesignForPublic)-[:HAS_ANSWER {order: 1}]->(ansDesignForPublic),
        (ansGrpDesignForPublic)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '4.1', url: '', type: 'CAT', scale: true}),

        (ansGrpDesignManagement:AnswerGroup {name: 'ansGrpDesignManagement'}),
        (qiHeatNetworks)-[:HAS_ANSWER_GROUP]->(ansGrpDesignManagement),
        (ansGrpDesignManagement)-[:HAS_ANSWER {order: 2}]->(ansDesignManagement),
        (ansGrpDesignManagement)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '4.2', url: '', type: 'CAT', scale: true}),

    (ansGrpCNZ:AnswerGroup {name: 'ansGrpCNZ'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpCNZ),
    (ansGrpCNZ)-[:HAS_ANSWER {order: 5}]->(ansCNZ),
    (ansGrpCNZ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6314'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

    (ansGrpOther:AnswerGroup {name: 'ansGrpOther'}),
    (qiYesForFirst)-[:HAS_ANSWER_GROUP]->(ansGrpOther),
    (ansGrpOther)-[:HAS_ANSWER {order: 6}]->(ansOther),
    (ansGrpOther)-[:HAS_OUTCOME]->(qiOther:QuestionInstance:Outcome {uuid: '42da5a09-7ecb-45dc-8870-efb1588c1b41'})-[:DEFINED_BY]->(qstnEfficient),

        (ansGrpYes:AnswerGroup {name: 'ansGrpYes'}),
        (qiOther)-[:HAS_ANSWER_GROUP]->(ansGrpYes),
        (ansGrpYes)-[:HAS_ANSWER {order: 1}]->(ansYes),
        (ansGrpYes)-[:HAS_OUTCOME]->(qiYes:QuestionInstance:Outcome {uuid: 'bd7136ba-9f65-46c8-97bd-62991c82ef5f'})-[:DEFINED_BY]->(qstnService),

            (ansGrpDesign:AnswerGroup {name: 'ansGrpDesign'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpDesign),
            (ansGrpDesign)-[:HAS_ANSWER {order: 1}]->(ansDesign),
            (ansGrpDesign)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpInstallation:AnswerGroup {name: 'ansGrpInstallation'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpInstallation),
            (ansGrpInstallation)-[:HAS_ANSWER {order: 2}]->(ansInstallation),
            (ansGrpInstallation)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpServicing:AnswerGroup {name: 'ansGrpServicing'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpServicing),
            (ansGrpServicing)-[:HAS_ANSWER {order: 3}]->(ansServicing),
            (ansGrpServicing)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpWiderEnergy:AnswerGroup {name: 'ansGrpWiderEnergy'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpWiderEnergy),
            (ansGrpWiderEnergy)-[:HAS_ANSWER {order: 4}]->(ansWiderEnergy),
            (ansGrpWiderEnergy)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpPolicy:AnswerGroup {name: 'ansGrpPolicy'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpPolicy),
            (ansGrpPolicy)-[:HAS_ANSWER {order: 5}]->(ansPolicy),
            (ansGrpPolicy)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpDecommissioning:AnswerGroup {name: 'ansGrpDecommissioning'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpDecommissioning),
            (ansGrpDecommissioning)-[:HAS_ANSWER {order: 6}]->(ansDecommissioning),
            (ansGrpDecommissioning)-[:HAS_OUTCOME]->(Agreement_RM6313),

            (ansGrpEnd:AnswerGroup {name: 'ansGrpEnd'}),
            (qiYes)-[:HAS_ANSWER_GROUP]->(ansGrpEnd),
            (ansGrpEnd)-[:HAS_ANSWER {order: 7}]->(ansEnd),
            (ansGrpEnd)-[:HAS_OUTCOME]->(Agreement_RM6313),

        (ansGrpNo:AnswerGroup {name: 'ansGrpNo'}),
        (qiOther)-[:HAS_ANSWER_GROUP]->(ansGrpNo),
        (ansGrpNo)-[:HAS_ANSWER {order: 2}]->(ansNo),
        (ansGrpNo)-[:HAS_OUTCOME]->(qiNo:QuestionInstance:Outcome {uuid: '8e6eb0f2-1298-4211-bf36-b29c40474d2d'})-[:DEFINED_BY]->(qstnService),

            (ansGrpEandG:AnswerGroup {name: 'ansGrpEandG'}),
            (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpEandG),
            (ansGrpEandG)-[:HAS_ANSWER {order: 1}]->(ansEandG),
            (ansGrpEandG)-[:HAS_OUTCOME]->(qiEnergyFirstQuestion), // SWITCH TREES

            (ansGrpEV:AnswerGroup {name: 'ansGrpEV'}),
            (qiNo)-[:HAS_ANSWER_GROUP]->(ansGrpEV),
            (ansGrpEV)-[:HAS_ANSWER {order: 2}]->(ansEV),
            (ansGrpEV)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6099'})-[:HAS_LOT]->(:Lot {number: '5', url: '', type: 'CAT', scale: true}),

(ansGrpNoForFirst:AnswerGroup {name: 'ansGrpNoForFirst'}),
(qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpNoForFirst),
(ansGrpNoForFirst)-[:HAS_ANSWER {order: 2}]->(ansNoForFirst),
(ansGrpNoForFirst)-[:HAS_OUTCOME]->(qiEnergyFirstQuestion); // SWITCH TREES