CREATE

// QUESTION

(qstnFirstQuestion:Question {
    uuid: '6530dfa4-a1b1-40c7-8f06-77045302fa4a',
    text: 'What type of service do you need?',
    type: 'LIST'
}),


// ANSWERS

(ansChildCareVoucher:Answer {
    uuid: '57fefd7f-2ee5-4e26-b0f3-e01410c200b6',
    text: 'Child care voucher scheme',
    hint: 'Allows employees to exchange part of their salary for childcare vouchers. This means you legally agree to receive less pay in return for vouchers which you can use to buy childcare services at many approved childcare providers nationwide, including:
    <ul>
        <li>child-minders</li>
        <li>nurseries</li>
        <li>pre-schools</li>

    </ul>
    After 5 October 2018 this scheme will no longer be available to new members. Existing members can continue to use the scheme'
}),

(ansCycleToWork:Answer {
    uuid: '6aa025af-b5ea-4f3a-9586-6a085f34e606',
    text: 'Cycle to work scheme',
    hint: 'Allows employees to exchange part of their salary for cycles and cyclist safety equipment. This means you legally agree to receive less pay in return for the equipment which may include:
    <ul>
        <li>adult cycles including electric, road, mountain, folding and hybrid (a mix of road and mountain bike)</li>
        <li>cycle helmets which conform to European safety standards</li>
        <li>bells and bulb horns</li>
        <li>cycle lights, mirrors and mudguards to ensure your visibility is not impaired</li>
        <li>locks and chains to ensure cycles can be safely secured</li>
        <li>reflective clothing</li>
        <li>pumps, puncture repair kits, cycle tool kits and tyre sealant for minor repairs</li>
    </ul>'
}),

(ansRewardAndRecognition:Answer {
    uuid: 'b3b3c589-dd2a-437c-bda1-a6a767f1980e',
    text: 'Reward and recognition scheme',
    hint: 'Provides on demand access to a range of multi-choice and branded vouchers, gift cards and eGift cards. Employers can give these vouchers and gift cards to employees to reward loyalty and exceptional performance'
}),

(ansPayrollAndGiving:Answer {
    uuid: '682fcb77-e62d-492c-956c-3bb920c30700',
    text: 'Payroll and giving scheme',
    hint: 'Employees legally agree to receive less pay to make regular or one-off donations to the UK registered charities of their choice. The scheme deducts donations from an employee\'s gross pay. Gross pay is the amount an employee is paid before any pension contributions or deductions are made'
}),

(ansEmployeeDiscount:Answer {
    uuid: '9b3b7c02-5fe7-4de3-8d3c-9599fc46adab',
    text: 'Employee discount scheme',
    hint: 'Employees can voluntarily access discounts, online offers, promotions and eGift cards for a range of stores and products including:
    <ul>
        <li>retail vouchers and food</li>
        <li>entertainment and leisure</li>
        <li>health and wellbeing</li>
        <li>holiday and travel</li>
        <li>cashback</li>
        <li>discount cards</li>
    </ul>'
}),

(ansDiscountedGym:Answer {
    uuid: '2e26cf3a-55fa-4a5a-bcea-5588ac0596b4',
    text: 'Discounted gym membership',
    hint: 'Access discounts at over 3700 gyms, leisure centres and boutique operators nationwide. Provides savings to suit every budget, membership and need such as:
    <ul>
        <li>gym flex with 12 months membership</li>
        <li>gym discounts for weekly and monthly passes</li>
        <li>swimming</li>
        <li>indoor or outdoor training</li>
        <li>martial arts</li>
        <li>racquets</li>
        <li>yoga</li>
        <li>crossfit training</li>
    </ul>'
}),

(ansTechnologyDiscount:Answer {
    uuid: '642b20c0-ebf5-4f97-9ca1-267fb33329cc',
    text: 'Technology and smartphone discount scheme (for personal use)',
    hint: 'Provides you with technology and smartphone discounts. Use these discounts to buy the most up to date technology from leading manufacturers and retail outlets. You can spread the cost over 12 months. Technology products you can buy include:
    <ul>
        <li>mobiles and wearable technology like apple watches</li>
        <li>tv and audio products</li>
        <li>computers and tablets</li>
    </ul>'
}),

(ansGreenCarScheme:Answer {
    uuid: '89c5d29d-ba72-44ca-b6f9-0fbb4ae0a12b',
    text: 'Green car scheme (for personal use)',
    hint: 'Provides the option for employees to buy a new low emission (green) vehicle at rates that are better than they could get through the retail market. Employees can use this scheme through salary sacrifice. This means they legally agree to receive less pay in return for using the scheme. Benefits of the scheme also include:
    <ul>
        <li>savings on ultra low emission vehicles</li>
        <li>no deposit of credit check</li>
        <li>running costs such as MOT, car insurance and breakdown cover </li>
    </ul>'
}),

(ansEmployeeFinancialWellbeing:Answer {
    uuid: '837a7ea0-4ed1-4df2-bd4d-3ef3da7e0930',
    text: 'Employee financial wellbeing scheme',
    hint: 'Provides a range of products and services to support employees wellbeing and help them to take control of their finances. Services include:
    <ul>
        <li>online educational resources</li>
        <li>onsite workshops and seminars</li>
        <li>debt consolidation</li>
        <li>preferential borrowing: a loan made by you to your employee or former employee</li>
        <li>salary linked savings: employees making regular savings directly from their pay</li>
        <li>savings and investment options</li>
    </ul>'
}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyEmployeeBenefits:Journey {uuid: '42bfbf8b-4a40-43ab-a9e8-95edcf13852c', name: 'Employee Belefits'}),
(jrnyEmployeeBenefits)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'c0081903-92f0-4ca8-9f09-c5c6d6b23876'})-[:DEFINED_BY]->(qstnFirstQuestion),

    (ansGrpChildCareVoucher:AnswerGroup {name: 'ansGrpChildCareVoucher'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpChildCareVoucher),
    (ansGrpChildCareVoucher)-[:HAS_ANSWER {order: 1}]->(ansChildCareVoucher),
    (ansGrpChildCareVoucher)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpCycleToWork:AnswerGroup {name: 'ansGrpCycleToWork'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpCycleToWork),
    (ansGrpCycleToWork)-[:HAS_ANSWER {order: 2}]->(ansCycleToWork),
    (ansGrpCycleToWork)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpRewardAndRecognition:AnswerGroup {name: 'ansGrpRewardAndRecognition'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpRewardAndRecognition),
    (ansGrpRewardAndRecognition)-[:HAS_ANSWER {order: 3}]->(ansRewardAndRecognition),
    (ansGrpRewardAndRecognition)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpPayrollAndGiving:AnswerGroup {name: 'ansGrpPayrollAndGiving'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPayrollAndGiving),
    (ansGrpPayrollAndGiving)-[:HAS_ANSWER {order: 4}]->(ansPayrollAndGiving),
    (ansGrpPayrollAndGiving)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpEmployeeDiscount:AnswerGroup {name: 'ansGrpEmployeeDiscount'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeDiscount),
    (ansGrpEmployeeDiscount)-[:HAS_ANSWER {order: 5}]->(ansEmployeeDiscount),
    (ansGrpEmployeeDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpDiscountedGym:AnswerGroup {name: 'ansGrpDiscountedGym'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpDiscountedGym),
    (ansGrpDiscountedGym)-[:HAS_ANSWER {order: 6}]->(ansDiscountedGym),
    (ansGrpDiscountedGym)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpTechnologyDiscount:AnswerGroup {name: 'ansGrpTechnologyDiscount'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpTechnologyDiscount),
    (ansGrpTechnologyDiscount)-[:HAS_ANSWER {order: 7}]->(ansTechnologyDiscount),
    (ansGrpTechnologyDiscount)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpGreenCarScheme:AnswerGroup {name: 'ansGrpGreenCarScheme'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpGreenCarScheme),
    (ansGrpGreenCarScheme)-[:HAS_ANSWER {order: 8}]->(ansGreenCarScheme),
    (ansGrpGreenCarScheme)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    (ansGrpEmployeeFinancialWellbeing:AnswerGroup {name: 'ansGrpEmployeeFinancialWellbeing'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeFinancialWellbeing),
    (ansGrpEmployeeFinancialWellbeing)-[:HAS_ANSWER {order: 9}]->(ansEmployeeFinancialWellbeing),
    (ansGrpEmployeeFinancialWellbeing)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'});

