MATCH

(qstnService:Question {uuid: 'c0600456-9a91-49d3-8baa-6067554b4b92'})

CREATE

(ansUKcitizens:Answer {
    uuid: '10e63130-5eb4-4ade-a800-aee478d424b3',
    text: 'Voucher Schemes for UK citizens',
    hint: 'Access suppliers who can put in place and manage retail voucher schemes for UK citizens (also known as giftcards). You can also access a platform to help you provide and distribute vouchers to the end user. Includes:
    <ul>
        <li>free school meal vouchers</li>
        <li>food vouchers</li>
        <li>clothing vouchers</li>
        <li>utility bill vouchers</li>
        <li>survey completion reward vouchers</li>
    </ul>'
}),

(ansPublic:Answer {
    uuid: '19a89077-a273-4331-a7ab-7d86cf6787dd',
    text: 'Voucher schemes for public sector employees',
    hint: 'Provides employee benefit schemes such as on demand access to a range of multi-choice and branded vouchers, gift cards and egift cards. Employers can give these vouchers and gift cards to employees to reward loyalty and exceptional performance
'}),

(ansChildCare:Answer {
    uuid: 'be06f1dd-4fc0-451f-9129-544aa6816b86',
    text: 'Child care voucher scheme',
    hint: 'Allows employees to exchange part of their salary for childcare vouchers. This means you legally agree to receive less pay in return for vouchers which you can use to buy childcare services at many approved childcare providers nationwide, including:
    <ul>
        <li>child-minders</li>
        <li>nurseries</li>
        <li>pre-schools</li>
    </ul>After 5 October 2018 this scheme will no longer be available to new members. Existing members can continue to use the scheme'
}),

(ansCycle:Answer {
    uuid: '60df8b4d-942b-4a89-9fe2-a6ab96cd48e9',
    text: 'Cycle to work scheme',
    hint: 'Allows employees to exchange part of their salary for cycles and cyclist safety equipment. This means you legally agree to receive less pay in return for the equipment which may include:
    <ul>
        <li>adult cycles including electric, road, mountain, folding and hybrid (a mix of road and mountain bike) </li>
        <li>cycle helmets which conform to European safety standards</li>
        <li>bells and bulb horns</li>
        <li>cycle lights, mirrors and mudguards to ensure your visibility is not impaired </li>
        <li>locks and chains to ensure cycles can be safely secured</li>
        <li>reflective clothing</li>
        <li>pumps, puncture repair kits, cycle tool kits and tyre sealant for minor repairs</li>
    </ul>'
}),

(ansReward:Answer {
    uuid: '6ab7c9f7-908f-42d6-bc28-1f1f4f1d2a6e',
    text: 'Reward and recognition scheme',
    hint: 'Provides on demand access to a range of multi-choice and branded vouchers, gift cards and egift cards. Employers can give these vouchers and gift cards to employees to reward loyalty and exceptional performance'
}),

(ansPayroll:Answer {
    uuid: 'd57c831b-cc89-4c93-a48b-7a3aae7e81fe',
    text: 'Payroll and giving scheme',
    hint: 'Employees legally agree to receive less pay to make regular or one-off donations to the UK registered charities of their choice. The scheme deducts donations from an employee\'s gross pay. Gross pay is the amount an employee is paid before any pension contributions or deductions are made'
}),

(ansEmployeeDiscount:Answer {
    uuid: 'eb0863b1-0b5f-486c-b087-2a0f6ec68b54',
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
    uuid: '4d797ffd-2f07-4d3e-987f-422f9be9f8dc',
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

(ansTechnology:Answer {
    uuid: '07211770-4610-428f-882a-eebba7b6af67',
    text: 'Technology and Smartphone Discount Scheme (for personal use)',
    hint: 'Provides you with technology and smartphone discounts. Use these discounts to buy the most up to date technology from leading manufacturers and retail outlets. You can spread the cost over 12 months. Technology products you can buy includes:
    <ul>
        <li>mobiles and wearable technology like apple watches</li>
        <li>tv and audio products</li>
        <li>computers and tablets</li>
    </ul>'
}),

(ansGreenCar:Answer {
    uuid: '0b33b059-c9a6-4c5a-b86d-67bf6fc96a52',
    text: 'Green car scheme (for personal use)',
    hint: 'Provides the option for employees to buy a new low emission (green) vehicle at rates that are better than they could get through the retail market. Employees can use this scheme through salary sacrifice. This means they legally agree to receive less pay in return for using the scheme. Benefits of the scheme also includes:
    <ul>
        <li>savings on ultra low emission vechicles</li>
        <li>no deposit of credit check</li>
        <li>running costs such as MOT, car insurance and breakdown cover</li>
    </ul>'
}),

(ansEmployeeFinancial:Answer {
    uuid: 'UUIDLA',
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

(Agreement_RM6273:Agreement:Outcome {number: 'RM6273'})-[:HAS_LOT]->(:Lot {number: '1', url: '', type: 'CAT', scale: true}),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyEmployeeBenefits:Journey {uuid: '42bfbf8b-4a40-43ab-a9e8-95edcf13852c', name: 'Employee Benefits'}),
(jrnyEmployeeBenefits)-[:FIRST_QUESTION]->(qiFirstQuestion:QuestionInstance:Outcome {uuid: 'c0081903-92f0-4ca8-9f09-c5c6d6b23876'})-[:DEFINED_BY]->(qstnService),

    (ansGrpUKcitizens:AnswerGroup {name: 'ansGrpUKcitizens'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpUKcitizens),
    (ansGrpUKcitizens)-[:HAS_ANSWER {order: 1}]->(ansUKcitizens),
    (ansGrpUKcitizens)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6248'})-[:HAS_LOT]->(:Lot {number: '3', url: '', type: 'CAT', scale: true}),

    (ansGrpPublic:AnswerGroup {name: 'ansGrpPublic'}),
    (qiFirstQuestion)-[:HAS_ANSWER_GROUP]->(ansGrpPublic),
    (ansGrpPublic)-[:HAS_ANSWER {order: 2}]->(ansPublic),
    (ansGrpPublic)-[:HAS_OUTCOME]->(qiPublic:QuestionInstance:Outcome {uuid: '67a4b909-673a-4b3a-b305-11ea21dfef40'})-[:DEFINED_BY]->(qstnService),

        (ansGrpChildCare:AnswerGroup {name: 'ansGrpChildCare'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpChildCare),
        (ansGrpChildCare)-[:HAS_ANSWER {order: 1}]->(ansChildCare),
        (ansGrpChildCare)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpCycle:AnswerGroup {name: 'ansGrpCycle'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpCycle),
        (ansGrpCycle)-[:HAS_ANSWER {order: 2}]->(ansCycle),
        (ansGrpCycle)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpReward:AnswerGroup {name: 'ansGrpReward'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpReward),
        (ansGrpReward)-[:HAS_ANSWER {order: 3}]->(ansReward),
        (ansGrpReward)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpPayroll:AnswerGroup {name: 'ansGrpPayroll'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpPayroll),
        (ansGrpPayroll)-[:HAS_ANSWER {order: 4}]->(ansPayroll),
        (ansGrpPayroll)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpEmployeeDiscount:AnswerGroup {name: 'ansGrpEmployeeDiscount'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeDiscount),
        (ansGrpEmployeeDiscount)-[:HAS_ANSWER {order: 5}]->(ansEmployeeDiscount),
        (ansGrpEmployeeDiscount)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpDiscountedGym:AnswerGroup {name: 'ansGrpDiscountedGym'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpDiscountedGym),
        (ansGrpDiscountedGym)-[:HAS_ANSWER {order: 6}]->(ansDiscountedGym),
        (ansGrpDiscountedGym)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpTechnology:AnswerGroup {name: 'ansGrpTechnology'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpTechnology),
        (ansGrpTechnology)-[:HAS_ANSWER {order: 7}]->(ansTechnology),
        (ansGrpTechnology)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpGreenCar:AnswerGroup {name: 'ansGrpGreenCar'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpGreenCar),
        (ansGrpGreenCar)-[:HAS_ANSWER {order: 8}]->(ansGreenCar),
        (ansGrpGreenCar)-[:HAS_OUTCOME]->(Agreement_RM6273),

        (ansGrpEmployeeFinancial:AnswerGroup {name: 'ansGrpEmployeeFinancial'}),
        (qiPublic)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeFinancial),
        (ansGrpEmployeeFinancial)-[:HAS_ANSWER {order: 9}]->(ansEmployeeFinancial),
        (ansGrpEmployeeFinancial)-[:HAS_OUTCOME]->(Agreement_RM6273);
