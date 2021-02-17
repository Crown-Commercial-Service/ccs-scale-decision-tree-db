MATCH
// Required QuestionDefinition nodes:
// Level 1 question
(qstnWhichPillar:Question {uuid: '2efb026a-f85c-42d1-b294-3d72f2b95736'}),

// Level 1 answer
(ansBuildings:Answer {uuid: 'b52be1f7-b621-4f2f-888e-cadbe70103ea'}),
(ansCorporateSolutions:Answer {uuid: '19fdb85e-f224-4842-b856-6119039c3acd'}),
(ansPeople:Answer {uuid: 'cf484bfe-13a9-4ac9-8489-bb39239751a6'}),
(ansTechnology:Answer {uuid: '023a7ca0-d772-4471-ba3c-12df811cf816'}),

// Level 2 questions
(qstnBuildings:Question {uuid: '22462bd6-9323-4f8a-9672-a724e19eafeb'}),
(qstnCorpSolutions:Question {uuid: 'd180386a-fe18-42ac-add8-2e1341c750a5'}),
(qstnPeople:Question {uuid: '6c166ea3-63a3-4e0e-82a1-f36ce6040122'}),
(qstnTechnology:Question {uuid: '95d78c62-141b-4621-8431-6c94c97bb0ea'}),


//Outcome
(qiTechProductsFirstQuestion:QuestionInstance {uuid: '698c220e-7fc8-11ea-bc55-0242ac130003'}),
(qiLinenFirstQuestion:QuestionInstance {uuid: 'ccb5a43a-75b5-11ea-bc55-0242ac130003'}),
(qiLegalFirstQuestion:QuestionInstance {uuid: 'ccb5e0bc-75b5-11ea-bc55-0242ac130003'})


CREATE
// Journey
(jrnyPillar:Journey {uuid: 'c9dd4455-7d23-4822-9912-eab4da9fc5a2', name: 'GM Lite'}),


// Building
  // Buildings (Level 2 answer)
  (ansBuildingsOrCont:Answer {uuid: '0a2db697-6e26-4283-aca2-4a78eab81468', text: 'Buildings or construction', hint: 'Products, materials and services related to a building or construction'}),
  (ansEnerFuelOrWat:Answer {uuid: '3a9020c2-526e-4267-b88b-7f909cdff23d', text: 'Energy, fuel or water', hint: 'Supply and distribution services for fuel, energy and water'}),
  (ansFacEstOrWorkP:Answer {uuid: 'aea2ebec-423f-48fb-80b0-e396803813bc', text: 'Facilities, estate or workplace management', hint: 'Services for inside and outside of a building'}),

  // Buildings (Level 3 question)
  (qstnBuildOrCons:Question {uuid: 'b96c9d64-f049-4b48-b07d-10853b016ffd', text: 'You chose Buildings or construction. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnEnerFuelOrWat:Question {uuid: '078539c7-61c9-414a-bdc8-3337187287d3', text: 'You chose Energy, fuel or water. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnFacEstOrWorkP:Question {uuid: '7c6644ee-0c9c-402f-9880-5a59aa9333d1', text: 'You chose Facilities, estate or workplace management. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),

  // Buildings (Level 3 answer)
  (ansBuildSolutions:Answer {uuid: 'ea4e7e54-cff4-4403-bd7a-86360d0eda44', text: 'Building solutions', hint: 'Advisory services, design and project management '}),
  (ansConst:Answer {uuid: '955b86e9-6b97-4bbf-9ec6-afc4662851d1', text: 'Construction', hint: 'Materials, tools, protective wear and labour'}),

  (ansElectricity:Answer {uuid: '2820540c-ceb4-4fbc-bd26-7959d9663cd4', text: 'Electricity', hint: 'Electricity supply management, billing and payments'}),
  (ansEnergy:Answer {uuid: '4c8318fd-ac83-4ba5-848d-e273b685477e', text: 'Energy', hint: 'Energy supply management, billing and payments'}),
  (ansFuels:Answer {uuid: 'c9c1888b-0c61-4024-ab36-81b428c8ac2a', text: 'Fuels', hint: 'Liquid and solid fuels, distribution and replenishment'}),
  (ansWaterOrWaste:Answer {uuid: 'f511baf2-9914-436b-a95c-049962eb31fa', text: 'Water or wastewater', hint: 'Water supply, sewerage and environmental services'}),

  (ansCleanServ:Answer {uuid: '5cc1eb85-d896-4c41-8772-61b91f13f986', text: 'Cleaning services', hint: 'Internal and external building cleaning services'}),
  (ansEstaManag:Answer {uuid: '4d16c62e-318d-4005-9190-8ceb2e03ccc2', text: 'Estates management', hint: 'Buy, sell, reduce costs or generate income from property'}),
  (ansFacilManag:Answer {uuid: 'a474711c-1dfd-419b-97f5-7f600c5d97c5', text: 'Facilities management', hint: 'All services needed to run and upkeep a facility like catering, repairs, gardening and security'}),
  (ansFurniServ:Answer {uuid: 'dff356e4-0045-49bc-97d9-4df8e6c11b82', text: 'Furniture services', hint: 'Buy new, repair or refurbish furniture'}),
  (ansLinenServ:Answer {uuid: 'b20e8141-643c-4362-9853-982955af9f6c', text: 'Linen services', hint: 'Collect owned or hired laundry, wash, finish and return'}),


  // Buildings (Level 4 question)
  (qstnFacilManag:Question {uuid: '27ee54bc-dfed-41d0-80f1-0f239c9c3405', text: 'You chose Facilities management. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),

  // Buildings (Level 4 answer)
  (ansWorkpServ:Answer {uuid: '9864339d-519c-4d46-a6dd-0202c9f55add', text: 'Workplace services', hint: 'Regional facilities management and specialist services'}),
  (ansGovHubFitOutServ:Answer {uuid: '5dd3e412-9110-432d-bc6e-29babc26bdee', text: 'Government hubs fit-out', hint: 'Office renovation and refurbishment'}),
  (ansTrainEstate:Answer {uuid: '51c1b997-58d7-4546-8976-e33af1b63042', text: 'Training estate', hint: 'Defence and training estate facilities management'}),




// Corporate Solutions
  // Corporate Solutions (Level 2 answer)
  (ansFinaServices:Answer {uuid: '409eb8bb-c9d1-4fe8-a2da-c02a437db46f', text: 'Financial services', hint: 'Money services to manage debt, make or accept payments and recover overpayments'}),
  (ansMediaOrResearch:Answer {uuid: '7ea74e1e-b1f9-42a6-a111-0772123c9a69', text: 'Media or research', hint: 'Media buying or monitoring and research expertise'}),
  (ansOffPrintOrMultiDev:Answer {uuid: '5ff02223-8bd7-42c0-9a4d-9dd6866cef4c', text: 'Office, print or multifunctional devices', hint: 'Equipment and supplies for office work'}),
  (ansPostCourOrLogServ:Answer {uuid: 'b077b0e3-7f80-4539-987e-34b94dfd1b61', text: 'Post, courier or logistic services', hint: 'Delivery services'}),
  (ansTravelServ:Answer {uuid: '76676cb1-df71-4446-be3e-e336b9fbc4f4', text: 'Travel services', hint: 'Booking travel, transport, venues or rooms'}),
  (ansVehicServ:Answer {uuid: '2cff82cd-42d1-48b3-9539-8ee113d5b559', text: 'Vehicle services', hint: 'Services to buy, hire, rent and maintain vehicles'}),
  (ansAnyForCorpSolutions:Answer {uuid: '3592bc95-4bda-47a5-b6ca-edf3462be04a', text: 'Anything else', hint: 'Marketing campaign and communication services'}),

  // Corporate Solutions (Level 3 question)
  (qstnFinaServices:Question {uuid: '7b5f8442-08bc-4d2d-8802-30261c41e08f', text: 'You chose Financial services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnMediaOrResearch:Question {uuid: '3ae2dd16-0cbe-4817-bb61-77cf404c392e', text: 'You chose Media or research. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnOffPrintOrMultiDev:Question {uuid: '3f34ac96-0e84-40a2-823a-99699027e3af', text: 'You chose Office, print or multifunctional devices. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnPostCourOrLogServ:Question {uuid: '1c3abfaa-2efd-4588-934c-14a654fd9545', text: 'You chose Post, courier or logistic services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnTravelServ:Question {uuid: '458fbaf9-e5f9-4200-b9d5-3230138520ec', text: 'You chose Travel services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnVehicServ:Question {uuid: 'ffa7e553-59f0-4ecd-a29e-6e2d1fd532eb', text: 'You chose Vehicle services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnAnyForCorpSolutions:Question {uuid: '616badb5-90bd-4569-8976-f3f6e8391a1a', text: 'You chose Anything else. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),


  // Corporate Solutions (Level 3 answer)
  (ansCampaSolut:Answer {uuid: 'e9866edc-48a3-40a4-b94b-fe559bde549c', text: 'Campaign solutions', hint: 'Start to finish expert help with marketing campaign delivery'}),
  (ansComServices:Answer {uuid: '96ac14c6-dff1-49c8-b51e-bf8b6da4a2be', text: 'Communication services', hint: 'Expert marketing communications support across all areas'}),

  (ansDebtManag:Answer {uuid: '6c783892-5608-4897-8a2d-8543108b26f4', text: 'Debt management', hint: 'A single service to track, collect and enforce repayment'}),
  (ansFuelCard:Answer {uuid: 'c4c3ce97-94b0-4406-979e-96d72b576e28', text: 'Fuel cards', hint: 'Pay for and track fuel expenses for vehicles'}),
  (ansGrantServ:Answer {uuid: 'f75796b7-ac1d-49be-ba94-8122b9ed62e0', text: 'Grant services', hint: 'Services for all areas of grants from programme design to apllication review to award.'}),
  (ansInsurServ:Answer {uuid: '6e96c8a3-d9f9-4d29-a6a9-eb5d730018b3', text: 'Insurance services', hint: 'Help selecting the right insurance and making claims for compensation'}),
  (ansPayServ:Answer {uuid: '6977b2c1-d718-41b5-a0da-b10ad88716b3', text: 'Payment services', hint: 'The ability to accept or make a payment'}),
  (ansSpendRec:Answer {uuid: 'b7ce3ea5-893f-4553-bb64-ed72dd442b00', text: 'Spend recovery', hint: 'Spot and stop overpayments and get back money owed'}),

  (ansMediaServ:Answer {uuid: '5163e632-48f0-47a3-ae6c-6e5992e54003', text: 'Media services', hint: 'Media buying or placement and monitoring all forms of media coverage'}),
  (ansResearchServ:Answer {uuid: '95d0e681-9ae8-468a-8252-0b00e4cbac28', text: 'Research services', hint: 'Services to advise, audit, analyse and review performance '}),

  (ansOffSupp:Answer {uuid: 'c3a46607-1a4e-4177-917b-acfe5e727696', text: 'Office supplies', hint: 'Stationery, products and electronic supplies'}),
  (ansPrintReServ:Answer {uuid: '1fcda0d6-ecf3-48be-87c2-80b39d08108a', text: 'Print related services', hint: 'Printing, scanning and copying devices; software and printed goods'}),

  (ansCourServ:Answer {uuid: '499a06d4-7d02-44a5-8877-e78a99bf815d', text: 'Courier services', hint: 'Collection and delivery of regulated items and substances'}),
  (ansLogiAndWare:Answer {uuid: '182c129d-d049-4664-abb4-88745941d4dd', text: 'Logisitics and warehousing', hint: 'Transport and storage solutions'}),
  (ansPostServ:Answer {uuid: '3fdac256-13a0-4ba9-9db9-cbfe1bd09d98', text: 'Postal services', hint: 'Mailroom equipment, collection and delivery services'}),

  (ansGloTrAndVenSol:Answer {uuid: '84cb3e2a-6fc7-4596-921a-0acd0bfcbe7a', text: 'Global travel and venue solutions', hint: 'Domestic and international solutions for travel and venue booking'}),
  (ansTranServ:Answer {uuid: '7bfc745b-c7bc-479f-b521-6e33ec050ca5', text: 'Transport services', hint: 'Passenger transport for one person or groups'}),
  (ansTrAndVenSol:Answer {uuid: '15a834f3-02d8-4a89-940a-1376834541ed', text: 'Travel and venue solutions', hint: 'Air or rail travel, venue or room booking solutions'}),

  (ansConversions:Answer {uuid: '1ee7001a-3dee-4969-b953-d08aff788282', text: 'Conversions', hint: 'Change vehicles to use them in a different way'}),
  (ansHireServ:Answer {uuid: '931ff9c5-7cec-4105-891e-f842626506d5', text: 'Hire services', hint: 'Vehicle hire for public sector use'}),
  (ansLeAndVehManag:Answer {uuid: '9fd3de21-0089-4758-a6fb-8b7caddb5ea1', text: 'Leases and vehicle management', hint: 'Vehicle leases or rental for 2 or more years'}),
  (ansPurchases:Answer {uuid: '519cd6e7-eada-4199-b1c1-bab75ce53a4c', text: 'Purchases', hint: 'Buy a vehicle or many vehicles'}),
  (ansTelematics:Answer {uuid: '72d27a8e-400e-4b46-8e2f-4ee816e53137', text: 'Telematics', hint: 'Software and equipment to record, track and analyse vehicle use'}),
  (ansTyreServ:Answer {uuid: 'ebb0596a-df22-4843-a5b8-2a392750033a', text: 'Tyre services', hint: 'Supply and fit tyres for vehicles'}),


  // Corporate Solutions (Level 4 question)
  (qstnPayServ:Question {uuid: '32b9c366-6fdd-4a04-baee-7b0053fc6847', text: 'You chose Payment services. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),
  (qstnReseServ:Question {uuid: 'eb1f6aa9-6b7d-48b7-a70a-307292c18de2', text: 'You chose Research services. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),

  // Corporate Solutions (Level 4 answer)

  (ansPayAccept:Answer {uuid: '36ba749e-32f5-4e53-bba8-5a09be483789', text: 'Payment acceptance', hint: 'Accept payments in person or online'}),
  (ansPaySolut:Answer {uuid: '920531d8-c310-4708-89a3-bb7ec66d5bba', text: 'Payment solutions', hint: 'Supply and upkeep of payment solutions'}),
  (ansSuppEarlyPay:Answer {uuid: 'e2b1b25d-ded1-4fba-891f-2a9e0fbf5507', text: 'Supplier early payment', hint: 'Invoice is paid early in exchange for a discount'}),

  (ansBehavInsig:Answer {uuid: '821731cf-1a56-4775-ac2f-d9cbcb5793e9', text: 'Behavioural insights', hint: 'Expertise and innovation in behaviourial insights'}),
  (ansComPerform:Answer {uuid: '64af52ad-2e9c-4d2a-9e81-0159c02cedf6', text: 'Communication performance', hint: 'Strategic advice, audits and analysis of campaign performance'}),
  (ansReseaMarket:Answer {uuid: 'f5dfa134-22d1-4587-aaa2-090d0b72e598', text: 'Research marketplace', hint: 'Buy research for projects of all sizes and value'}),




// People
  // People (Level 2 answer)
  (ansApprenticeshipServ:Answer {uuid: 'ec26aa26-2cac-4a2e-ab0d-1eb29016953f', text: 'Apprenticeship services', hint: 'Find and train apprentices'}),
  (ansEmployeeServOrBenefits:Answer {uuid: '45857306-cedb-439e-8d0a-9f7c109b0380', text: 'Employee services or benefits', hint: 'Benefits and services to improve employee performance at work'}),
  (ansLegalOrConsServ:Answer {uuid: '337a6c77-393e-468a-875c-8f88fb405bc0', text: 'Legal or consultancy services', hint: 'Expert advice for specialised fields'}),
  (ansRecruitOrEmployServ:Answer {uuid: '619c940e-d00d-4da6-96dc-35fcbacade42', text: 'Recruitment or employment services', hint: 'Temporary, interim and permanent employees'}),
  (ansAnyForPeople:Answer {uuid: '393e2f80-2102-4e4e-894a-c069be8637cc', text: 'Anything else', hint: 'Telephone, email andonline communications'}),

  // People (Level 3 question)
  (qstnApprenticeshipServ:Question {uuid: 'ba8a29f9-e578-4079-9259-5553574ccc1b', text: 'You chose Apprenticeship services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnEmployeeServOrBenefits:Question {uuid: 'e6d01fe3-aed3-4636-b078-5948e4150d38', text: 'You chose Employee services or benefits. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnLegalOrConsServ:Question {uuid: '77bd757c-a54b-4a49-9b74-0181e1da1cfc', text: 'You chose Legal or consultancy services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnRecruitOrEmployServ:Question {uuid: '1654a87f-feda-41b8-92bd-ba5ddf57ee2b', text: 'You chose Recruitment or employment services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnAnyForPeople:Question {uuid: '6cd833c7-8fea-4843-86b3-177822804ce5', text: 'You chose Anything else. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),

  // People (Level 3 answer)
  (ansConCenServ:Answer {uuid: '9547fe18-71d9-4c94-83d3-4a55dd4e4068', text: 'Contact centre services'}),

  (ansEmplHealAndWell:Answer {uuid: '0642e87e-3952-411b-8388-de52b4aad4d1', text: 'Employee health and wellbeing', hint: 'Work related injury or health concerns'}),
  (ansEmplServ:Answer {uuid: 'bfb0a068-735a-4954-b151-4693169c423e', text: 'Employee services', hint: 'Childcare, cycle to work, gym and other benefit schemes for employees.'}),
  (ansLangServ:Answer {uuid: 'ee104995-0021-4f9e-95af-85693560ec00', text: 'Language services', hint: 'Spoken and written interpretation, translation and transpcription services'}),
  (ansLearnServ:Answer {uuid: '1e548e90-9e16-4b5c-99ee-dd31189d080e', text: 'Learning services', hint: 'Employees can develop their professional skills'}),

  (ansConsulServ:Answer {uuid: '9d0f0e23-327b-4139-a120-43e2057ba694', text: 'Consultancy services', hint: 'Expert advice that does not cover legal concerns'}),
  (ansLegalServ:Answer {uuid: '4cb90ce7-4468-42b4-8ddd-d6928e48a67a', text: 'Legal services', hint: 'Expert legal advice for specific needs or situations'}),

  (ansPermaRecruit:Answer {uuid: 'a624f4ad-d253-4649-85ce-d84a639eb05e', text: 'Permanent recruitment', hint: 'Find permanent employees'}),
  (ansPubSecResour:Answer {uuid: '6b851125-4a71-4b2c-93ae-bf5c4e7de334', text: 'Public sector resourcing', hint: 'Find contractors and temporary workers'}),
  (ansTempResouOrRecruit:Answer {uuid: '0f84dbbf-2d71-4daf-906f-6dde69b99ede', text: 'Temporary resoucing or recruitment', hint: 'Find flexible workers'}),


  // People (Level 4 question)
  (qstnConsulServ:Question {uuid: '69f740df-3d43-4694-a4b1-61d6bd7743d1', text: 'You chose Consultancy services. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),
  (qstnTempResouOrRecrui:Question {uuid: '53c720e7-965d-4e5e-a4de-19a056fd0a10', text: 'You chose Temporary resoucing or recruitment. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),


  // People (Level 4 answer)
  (ansCorpFinance:Answer {uuid: 'f01daf51-0b45-4728-829b-0ee21f992177', text: 'Corporate finance', hint: 'Expert advice for corporate finance'}),
  (ansManagConsult:Answer {uuid: 'aaff9315-1917-4062-bcc5-bf7d543b6a2c', text: 'Management consultancy', hint: 'Expert advice, strategy, supply-chain and managing complex solutions'}),

  (ansHealth:Answer {uuid: 'aae1460e-2306-4272-80c0-c3e975f90b95', text: 'Healthcare', hint: 'Clinical, healthcare or medical workers'}),
  (ansSuppTeachAndEducatStaff:Answer {uuid: 'e7892975-7db2-4773-8fbf-cbf299fbcf9b', text: 'Supply teachers and educational staff', hint: 'Temporary and fixed-term teaching and non-teaching workers'}),
  (ansAnyelseForTempResouOrRecruit:Answer {uuid: '44023ba5-5ec4-4a2c-9d4c-ac8c4f4df7cd', text: 'Anything else', hint: 'Flexible workers for the NHS'}),







// Technology
  // Technology (Level 2 answer)
  (ansDigitalFut:Answer {uuid: '81c0196d-5002-45c2-a6f0-e5ebe929b30b', text: 'Digital future', hint: 'Digital technology advice, products and services'}),
  (ansNetworkServ:Answer {uuid: '65fac7e9-5d7b-4157-9776-bcbfbb167a3b', text: 'Network services', hint: 'Services that secure data, allow it to be shared, connect users to data and manage the cost of network tools and upkeep'}),
  (ansSoftwAndCyberSec:Answer {uuid: 'bdd8abd2-35dd-4461-af39-cf21568bd397', text: 'Software and cyber security', hint: 'Services and solutions to protect data and computer tools'}),
  (ansTechProdAndServ:Answer {uuid: '53f42502-2344-4d1f-add8-24f82139c9d6', text: 'Technology Products & Services', hint: 'Find and buy technology products and services'}),

  // Technology (Level 3 question)
  (qstnDigitalFut:Question {uuid: 'e608f643-a749-4ccc-892d-6e05ad942258', text: 'You chose Digital future. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnNetworkServ:Question {uuid: '4a2642ba-71ae-4391-a3b7-a81bc103f463', text: 'You chose Network services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnSoftwAndCyberSec:Question {uuid: '5a22109d-12c4-47a2-a7f9-698331c774d0', text: 'You chose Software and cyber security. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),
  (qstnTechProdAndServ:Question {uuid: 'bbeea78d-c39f-4bf9-887c-e17b5164ca88', text: 'You chose Technology Products & Services. Select the product or service which best matches your needs.', hint: 'Select one option:', type: 'LIST'}),

  // Technology (Level 3 answer)
  (ansArtIntel:Answer {uuid: '915c59a5-b595-4e2c-ad2d-97b57837ddb9', text: 'Artificial Intelligence', hint: 'Services to learn about artificial intelligence and how to use it'}),
  (ansCloudServ:Answer {uuid: '759bcb7f-e540-4664-9ea0-93e7e612694c', text: 'Cloud services', hint: 'Solutions for cloud-based computing'}),
  (ansCrownHost:Answer {uuid: '24ea21a4-db3b-4e94-b1b8-d02e441e03a3', text: 'Crown hosting', hint: 'Data centre space and storage solutions'}),
  (ansDigiServ:Answer {uuid: 'f44332b3-1515-4e37-b967-94a40323280d', text: 'Digital services', hint: 'Training, expert advice, design, research and testing of digital services'}),

  (ansFibreOpInfraServ:Answer {uuid: 'aa6f2552-8a92-4bc9-8ce3-5c155ec9bc38', text: 'Fibre optic infrastructure services', hint: 'Find, track and manage the cost of telecoms and technology'}),
  (ansHealAndSoCare:Answer {uuid: '21eae4d7-65f5-40c6-a87d-beab89daf5a2', text: 'Health and social care', hint: 'Build, install or manage broadband connections'}),
  (ansNetwServ:Answer {uuid: 'ee85b9ce-d528-485c-bf9a-8cfaa7c76ee7', text: 'Network services', hint: 'Access to health and social care databases'}),
  (ansAnyelseForNetwork:Answer {uuid: '2af98cce-159a-4f40-a2b9-4d12ebe29b4c', text: 'Anything else', hint: 'Secure communications and data sharing services'}),

  (ansCybSecurity:Answer {uuid: 'b1dca2ed-8f2e-4ba2-bea2-bc152ec08f55', text: 'Cyber security', hint: 'Services to protect computer networks, data, equipment and software '}),
  (ansEnterpApp:Answer {uuid: '493d031b-2498-4959-8fc4-a86c3834f7e3', text: 'Enterprise applications', hint: 'Software solutions, equipment and professional services'}),

  (ansTechProd:Answer {uuid: 'e3e7ebb1-c9b9-436c-8cb2-749cc5b7347e', text: 'Technology products', hint: 'Physical or digital items like laptops, routers, cables, software, warranties and more'}),
  (ansTechServ:Answer {uuid: '7ed852bf-3323-4d2b-bb61-edaf487f6880', text: 'Technology services', hint: 'Help desk support, training, expert advice and services'}),
  (ansTraffServ:Answer {uuid: '28e438cf-42a6-4fa4-9e84-e55c87a122de', text: 'Traffic services', hint: 'Technology and equipment to manage traffic'}),


  // Technology (Level 4 question)
  (qstnDigiServ:Question {uuid: '9daf3e3d-7783-44c5-975a-b9e3fb8ae29e', text: 'You chose Digital services. Select the area that best matches your needs?', hint: 'Select one option:', type: 'LIST'}),

  // Technology (Level 4 answer)
  (ansDigiOutAndSpec:Answer {uuid: '7b5be8f5-0ac7-4b4d-be61-2dff469d9047', text: 'Digital outcomes and specialists', hint: 'Buy, design, build and deliver digital outcomes with specialist help'}),
  (ansQualAssurTest:Answer {uuid: '704cc6b1-6d9a-4dd6-a7dd-977236c682d4', text: 'Quality assurance testing', hint: 'Independent quality assurance testing services'}),
  (ansDigiTrainIncluAndSupp:Answer {uuid: 'b17fa3bf-7c14-4abc-b9c8-e8580d36a1cd', text: 'Digital training, inclusion and support', hint: 'Training, research, analysis and support services for digital inclusion'}),



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tree Structure
(jrnyPillar)-[:FIRST_QUESTION]->(qiWhichPillar:QuestionInstance:Outcome {uuid: '4f263ed8-4b5c-4aa4-a02f-1fe46bd9f4c9'})-[:DEFINED_BY]->(qstnWhichPillar),

// A1 Buildings
(ansGrpBuildings:AnswerGroup {name: 'ansGrpBuildings'}),
(qiWhichPillar)-[:HAS_ANSWER_GROUP]->(ansGrpBuildings),
(ansGrpBuildings)-[:HAS_ANSWER {order: 1}]->(ansBuildings),
(ansGrpBuildings)-[:HAS_OUTCOME]->(qiBuildings:QuestionInstance:Outcome {uuid: 'a4238ac3-c0f9-44cf-85c2-529f4455a841'})-[:DEFINED_BY]->(qstnBuildings),

  // A2 Buildings or construction
  (ansGrpBuildingsOrCont:AnswerGroup {name: 'ansGrpBuildingsOrCont'}),
  (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpBuildingsOrCont),
  (ansGrpBuildingsOrCont)-[:HAS_ANSWER {order: 1}]->(ansBuildingsOrCont),
  (ansGrpBuildingsOrCont)-[:HAS_OUTCOME]->(qiBuildOrCons:QuestionInstance:Outcome {uuid: 'e94249de-97c3-475c-82c4-588092976cff'})-[:DEFINED_BY]->(qstnBuildOrCons),

    // A3 Building solutions
    (ansGrpBuildSolutions:AnswerGroup {name: 'ansGrpBuildSolutions'}),
    (qiBuildOrCons)-[:HAS_ANSWER_GROUP]->(ansGrpBuildSolutions),
    (ansGrpBuildSolutions)-[:HAS_ANSWER {order: 1}]->(ansBuildSolutions),
    (ansGrpBuildSolutions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3741'}),
    (ansGrpBuildSolutions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6014'}),


    // A3 Construction
    (ansGrpConst:AnswerGroup {name: 'ansGrpConst'}),
    (qiBuildOrCons)-[:HAS_ANSWER_GROUP]->(ansGrpConst),
    (ansGrpConst)-[:HAS_ANSWER {order: 2}]->(ansConst),
    (ansGrpConst)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3837'}),
    (ansGrpConst)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6088'}),



  // A2 Energy, fuel or water
  (ansGrpEnerFuelOrWat:AnswerGroup {name: 'ansGrpEnerFuelOrWat'}),
  (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpEnerFuelOrWat),
  (ansGrpEnerFuelOrWat)-[:HAS_ANSWER {order: 2}]->(ansEnerFuelOrWat),
  (ansGrpEnerFuelOrWat)-[:HAS_OUTCOME]->(qiEnerFuelOrWat:QuestionInstance:Outcome {uuid: '54e2ca09-f21c-408a-a87f-9b6ad2e922dd'})-[:DEFINED_BY]->(qstnEnerFuelOrWat),

    // A3 Electricity
    (ansGrpElectricity:AnswerGroup {name: 'ansGrpElectricity'}),
    (qiEnerFuelOrWat)-[:HAS_ANSWER_GROUP]->(ansGrpElectricity),
    (ansGrpElectricity)-[:HAS_ANSWER {order: 1}]->(ansElectricity),
    (ansGrpElectricity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3809'}),
    (ansGrpElectricity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6011'}),


    // A3 Energy
    (ansGrpEnergy:AnswerGroup {name: 'ansGrpEnergy'}),
    (qiEnerFuelOrWat)-[:HAS_ANSWER_GROUP]->(ansGrpEnergy),
    (ansGrpEnergy)-[:HAS_ANSWER {order: 2}]->(ansEnergy),
    (ansGrpEnergy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3824'}),
    (ansGrpEnergy)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6213'}),

    // A3 Fuels
    (ansGrpFuels:AnswerGroup {name: 'ansGrpFuels'}),
    (qiEnerFuelOrWat)-[:HAS_ANSWER_GROUP]->(ansGrpFuels),
    (ansGrpFuels)-[:HAS_ANSWER {order: 3}]->(ansFuels),
    (ansGrpFuels)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3801'}),

    // A3 Water or wastewater
    (ansGrpWaterOrWaste:AnswerGroup {name: 'ansGrpWaterOrWaste'}),
    (qiEnerFuelOrWat)-[:HAS_ANSWER_GROUP]->(ansGrpWaterOrWaste),
    (ansGrpWaterOrWaste)-[:HAS_ANSWER {order: 4}]->(ansWaterOrWaste),
    (ansGrpWaterOrWaste)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3790'}),
    (ansGrpWaterOrWaste)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6178'}),


// A2 Facilities, estate or workplace management
  (ansGrpFacEstOrWorkP:AnswerGroup {name: 'ansGrpFacEstOrWorkP'}),
  (qiBuildings)-[:HAS_ANSWER_GROUP]->(ansGrpFacEstOrWorkP),
  (ansGrpFacEstOrWorkP)-[:HAS_ANSWER {order: 3}]->(ansFacEstOrWorkP),
  (ansGrpFacEstOrWorkP)-[:HAS_OUTCOME]->(qiFacEstOrWorkP:QuestionInstance:Outcome {uuid: 'bf0492f8-66ff-4c0d-a10a-a79b88133c8b'})-[:DEFINED_BY]->(qstnFacEstOrWorkP),

    // A3 Cleaning services
    (ansGrpCleanServ:AnswerGroup {name: 'ansGrpCleanServ'}),
    (qiFacEstOrWorkP)-[:HAS_ANSWER_GROUP]->(ansGrpCleanServ),
    (ansGrpCleanServ)-[:HAS_ANSWER {order: 1}]->(ansCleanServ),
    (ansGrpCleanServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6130'}),

    // A3 Estates management
    (ansGrpEstaManag:AnswerGroup {name: 'ansGrpEstaManag'}),
    (qiFacEstOrWorkP)-[:HAS_ANSWER_GROUP]->(ansGrpEstaManag),
    (ansGrpEstaManag)-[:HAS_ANSWER {order: 2}]->(ansEstaManag),
    (ansGrpEstaManag)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3816'}),


    // A3 Facilities management
    (ansGrpFacilManag:AnswerGroup {name: 'ansGrpFacilManag'}),
    (qiFacEstOrWorkP)-[:HAS_ANSWER_GROUP]->(ansGrpFacilManag),
    (ansGrpFacilManag)-[:HAS_ANSWER {order: 3}]->(ansFacilManag),
    (ansGrpFacilManag)-[:HAS_OUTCOME]->(qiFacilManag:QuestionInstance:Outcome {uuid: 'e99d4c01-277c-47c0-80fc-e6080c5f94a7'})-[:DEFINED_BY]->(qstnFacilManag),

      // A4 Workplace services
      (ansGrpWorkpServ:AnswerGroup {name: 'ansGrpWorkpServ'}),
      (qiFacilManag)-[:HAS_ANSWER_GROUP]->(ansGrpWorkpServ),
      (ansGrpWorkpServ)-[:HAS_ANSWER {order: 1}]->(ansWorkpServ),
      (ansGrpWorkpServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3830'}),
      (ansGrpWorkpServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6089'}),

      // A4 Government hub fit-out
      (ansGrpGovHubFitOutServ:AnswerGroup {name: 'ansGrpGovHubFitOutServ'}),
      (qiFacilManag)-[:HAS_ANSWER_GROUP]->(ansGrpGovHubFitOutServ),
      (ansGrpGovHubFitOutServ)-[:HAS_ANSWER {order: 2}]->(ansGovHubFitOutServ),
      (ansGrpGovHubFitOutServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6073'}),

      // A4 Training estate
      (ansGrpTrainEstate:AnswerGroup {name: 'ansGrpTrainEstate'}),
      (qiFacilManag)-[:HAS_ANSWER_GROUP]->(ansGrpTrainEstate),
      (ansGrpTrainEstate)-[:HAS_ANSWER {order: 3}]->(ansTrainEstate),
      (ansGrpTrainEstate)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6155'}),


    // A3 Furniture services
    (ansGrpFurniServ:AnswerGroup {name: 'ansGrpFurniServ'}),
    (qiFacEstOrWorkP)-[:HAS_ANSWER_GROUP]->(ansGrpFurniServ),
    (ansGrpFurniServ)-[:HAS_ANSWER {order: 4}]->(ansFurniServ),
    (ansGrpFurniServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3812'}),
    (ansGrpFurniServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6119'}),


    // A3 Linen services
    (ansGrpLinenServ:AnswerGroup {name: 'ansGrpLinenServ'}),
    (qiFacEstOrWorkP)-[:HAS_ANSWER_GROUP]->(ansGrpLinenServ),
    (ansGrpLinenServ)-[:HAS_ANSWER {order: 5}]->(ansLinenServ),
    (ansGrpLinenServ)-[:HAS_OUTCOME]->(qiLinenFirstQuestion), // SWITCH TREES


// A1 Corporate Solutions
(ansGrpCorpSolutions:AnswerGroup {name: 'ansGrpCorpSolutions'}),
(qiWhichPillar)-[:HAS_ANSWER_GROUP]->(ansGrpCorpSolutions),
(ansGrpCorpSolutions)-[:HAS_ANSWER {order: 2}]->(ansCorporateSolutions),
(ansGrpCorpSolutions)-[:HAS_OUTCOME]->(qiCorpSolutions:QuestionInstance:Outcome {uuid: '4a885ee4-22b8-4670-9a60-ffe87dc8c308'})-[:DEFINED_BY]->(qstnCorpSolutions),

  // A2 Financial services
  (ansGrpFinaServices:AnswerGroup {name: 'ansGrpFinaServices'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpFinaServices),
  (ansGrpFinaServices)-[:HAS_ANSWER {order: 1}]->(ansFinaServices),
  (ansGrpFinaServices)-[:HAS_OUTCOME]->(qiFinaServices:QuestionInstance:Outcome {uuid: 'e9346929-7bc9-4a23-9b2e-35984a3c39b2'})-[:DEFINED_BY]->(qstnFinaServices),

    // A3 Debt management
    (ansGrpDebtManag:AnswerGroup {name: 'ansGrpDebtManag'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpDebtManag),
    (ansGrpDebtManag)-[:HAS_ANSWER {order: 1}]->(ansDebtManag),
    (ansGrpDebtManag)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6208'}),


    // A3 Fuel cards
    (ansGrpFuelCard:AnswerGroup {name: 'ansGrpFuelCard'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpFuelCard),
    (ansGrpFuelCard)-[:HAS_ANSWER {order: 2}]->(ansFuelCard),
    (ansGrpFuelCard)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6000'}),

    // A3 Grant services
    (ansGrpGrantServ:AnswerGroup {name: 'ansGrpGrantServ'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpGrantServ),
    (ansGrpGrantServ)-[:HAS_ANSWER {order: 3}]->(ansGrantServ),
    (ansGrpGrantServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6172'}),
    (ansGrpGrantServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM949'}),

    // A3 Insurance services
    (ansGrpInsurServ:AnswerGroup {name: 'ansGrpInsurServ'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpInsurServ),
    (ansGrpInsurServ)-[:HAS_ANSWER {order: 4}]->(ansInsurServ),
    (ansGrpInsurServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6020'}),
    (ansGrpInsurServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6138'}),

    // A3 Payment services
    (ansGrpPayServ:AnswerGroup {name: 'ansGrpPayServ'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpPayServ),
    (ansGrpPayServ)-[:HAS_ANSWER {order: 5}]->(ansPayServ),
    (ansGrpPayServ)-[:HAS_OUTCOME]->(qiPayServ:QuestionInstance:Outcome {uuid: '18fc2090-c8f5-4677-804b-2bc7d233b69f'})-[:DEFINED_BY]->(qstnPayServ),

      // A4 Payment acceptance
      (ansGrpPayAccept:AnswerGroup {name: 'ansGrpPayAccept'}),
      (qiPayServ)-[:HAS_ANSWER_GROUP]->(ansGrpPayAccept),
      (ansGrpPayAccept)-[:HAS_ANSWER {order: 1}]->(ansPayAccept),
      (ansGrpPayAccept)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6118'}),


      // A4 Payment solutions
      (ansGrpPaySolut:AnswerGroup {name: 'ansGrpPaySolut'}),
      (qiPayServ)-[:HAS_ANSWER_GROUP]->(ansGrpPaySolut),
      (ansGrpPaySolut)-[:HAS_ANSWER {order: 2}]->(ansPaySolut),
      (ansGrpPaySolut)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3828'}),


      // A4 Supplier early payment
      (ansGrpSuppEarlyPay:AnswerGroup {name: 'ansGrpSuppEarlyPay'}),
      (qiPayServ)-[:HAS_ANSWER_GROUP]->(ansGrpSuppEarlyPay),
      (ansGrpSuppEarlyPay)-[:HAS_ANSWER {order: 3}]->(ansSuppEarlyPay),
      (ansGrpSuppEarlyPay)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6001'}),


    // A3 Spend recovery
    (ansGrpSpendRec:AnswerGroup {name: 'ansGrpSpendRec'}),
    (qiFinaServices)-[:HAS_ANSWER_GROUP]->(ansGrpSpendRec),
    (ansGrpSpendRec)-[:HAS_ANSWER {order: 6}]->(ansSpendRec),
    (ansGrpSpendRec)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3820'}),


  // A2 Media or research
  (ansGrpMediaOrResearch:AnswerGroup {name: 'ansGrpMediaOrResearch'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpMediaOrResearch),
  (ansGrpMediaOrResearch)-[:HAS_ANSWER {order: 2}]->(ansMediaOrResearch),
  (ansGrpMediaOrResearch)-[:HAS_OUTCOME]->(qiMediaOrResearch:QuestionInstance:Outcome {uuid: 'e2a7bc9c-588d-49ed-ac9e-0dfdc40b07a8'})-[:DEFINED_BY]->(qstnMediaOrResearch),

    // A3 Media services
    (ansGrpMediaServ:AnswerGroup {name: 'ansGrpMediaServ'}),
    (qiMediaOrResearch)-[:HAS_ANSWER_GROUP]->(ansGrpMediaServ),
    (ansGrpMediaServ)-[:HAS_ANSWER {order: 1}]->(ansMediaServ),
    (ansGrpMediaServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6003'}),
    (ansGrpMediaServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6134'}),

    // A3 Research services
    (ansGrpResearchServ:AnswerGroup {name: 'ansGrpResearchServ'}),
    (qiMediaOrResearch)-[:HAS_ANSWER_GROUP]->(ansGrpResearchServ),
    (ansGrpResearchServ)-[:HAS_ANSWER {order: 2}]->(ansResearchServ),
    (ansGrpResearchServ)-[:HAS_OUTCOME]->(qiReseServ:QuestionInstance:Outcome {uuid: 'b992c065-5f04-4995-92cf-ec3c11367afe'})-[:DEFINED_BY]->(qstnReseServ),

      // A4 Behavioural insights
      (ansGrpBehavInsig:AnswerGroup {name: 'ansGrpBehavInsig'}),
      (qiReseServ)-[:HAS_ANSWER_GROUP]->(ansGrpBehavInsig),
      (ansGrpBehavInsig)-[:HAS_ANSWER {order: 1}]->(ansBehavInsig),
      (ansGrpBehavInsig)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6004'}),

      // A4 Communication performance
      (ansGrpComPerform:AnswerGroup {name: 'ansGrpComPerform'}),
      (qiReseServ)-[:HAS_ANSWER_GROUP]->(ansGrpComPerform),
      (ansGrpComPerform)-[:HAS_ANSWER {order: 2}]->(ansComPerform),
      (ansGrpComPerform)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6135'}),

      // A4 Research marketplace
      (ansGrpReseaMarket:AnswerGroup {name: 'ansGrpReseaMarket'}),
      (qiReseServ)-[:HAS_ANSWER_GROUP]->(ansGrpReseaMarket),
      (ansGrpReseaMarket)-[:HAS_ANSWER {order: 3}]->(ansReseaMarket),
      (ansGrpReseaMarket)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6018'}),


  // A2 Office, print or multifunctional devices
  (ansGrpOffPrintOrMultiDev:AnswerGroup {name: 'ansGrpOffPrintOrMultiDev'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpOffPrintOrMultiDev),
  (ansGrpOffPrintOrMultiDev)-[:HAS_ANSWER {order: 3}]->(ansOffPrintOrMultiDev),
  (ansGrpOffPrintOrMultiDev)-[:HAS_OUTCOME]->(qiOffPrintOrMultiDev:QuestionInstance:Outcome {uuid: '9fefe89f-2b9a-49e0-887d-d8e365e6a755'})-[:DEFINED_BY]->(qstnOffPrintOrMultiDev),

    // A3 Office supplies
    (ansGrpOffSupp:AnswerGroup {name: 'ansGrpOffSupp'}),
    (qiOffPrintOrMultiDev)-[:HAS_ANSWER_GROUP]->(ansGrpOffSupp),
    (ansGrpOffSupp)-[:HAS_ANSWER {order: 1}]->(ansOffSupp),
    (ansGrpOffSupp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6059'}),

    // A3 Print related services
    (ansGrpPrintReServ:AnswerGroup {name: 'ansGrpPrintReServ'}),
    (qiOffPrintOrMultiDev)-[:HAS_ANSWER_GROUP]->(ansGrpPrintReServ),
    (ansGrpPrintReServ)-[:HAS_ANSWER {order: 2}]->(ansPrintReServ),
    (ansGrpPrintReServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3781'}),
    (ansGrpPrintReServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6071'}),


  // A2 Post, courier or logistic services
  (ansGrpPostCourOrLogServ:AnswerGroup {name: 'ansGrpPostCourOrLogServ'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpPostCourOrLogServ),
  (ansGrpPostCourOrLogServ)-[:HAS_ANSWER {order: 4}]->(ansPostCourOrLogServ),
  (ansGrpPostCourOrLogServ)-[:HAS_OUTCOME]->(qiPostCourOrLogServ:QuestionInstance:Outcome {uuid: 'b79ecbec-29c5-4b96-8a72-52be261beaeb'})-[:DEFINED_BY]->(qstnPostCourOrLogServ),

    // A3 Courier services
    (ansGrpCourServ:AnswerGroup {name: 'ansGrpCourServ'}),
    (qiPostCourOrLogServ)-[:HAS_ANSWER_GROUP]->(ansGrpCourServ),
    (ansGrpCourServ)-[:HAS_ANSWER {order: 1}]->(ansCourServ),
    (ansGrpCourServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3798'}),
    (ansGrpCourServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3799'}),

    // A3 Logisitics and warehousing
    (ansGrpLogiAndWare:AnswerGroup {name: 'ansGrpLogiAndWare'}),
    (qiPostCourOrLogServ)-[:HAS_ANSWER_GROUP]->(ansGrpLogiAndWare),
    (ansGrpLogiAndWare)-[:HAS_ANSWER {order: 2}]->(ansLogiAndWare),
    (ansGrpLogiAndWare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6074'}),

    // A3 Postal services
    (ansGrpPostServ:AnswerGroup {name: 'ansGrpPostServ'}),
    (qiPostCourOrLogServ)-[:HAS_ANSWER_GROUP]->(ansGrpPostServ),
    (ansGrpPostServ)-[:HAS_ANSWER {order: 3}]->(ansPostServ),
    (ansGrpPostServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6017'}),


  // A2 Travel services
  (ansGrpTravelServ:AnswerGroup {name: 'ansGrpTravelServ'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpTravelServ),
  (ansGrpTravelServ)-[:HAS_ANSWER {order: 5}]->(ansTravelServ),
  (ansGrpTravelServ)-[:HAS_OUTCOME]->(qiTravelServ:QuestionInstance:Outcome {uuid: '5558246f-757c-4fe6-8533-975c2f985454'})-[:DEFINED_BY]->(qstnTravelServ),

    // A3 Global travel and venue solutions
    (ansGrpGloTrAndVenSol:AnswerGroup {name: 'ansGrpGloTrAndVenSol'}),
    (qiTravelServ)-[:HAS_ANSWER_GROUP]->(ansGrpGloTrAndVenSol),
    (ansGrpGloTrAndVenSol)-[:HAS_ANSWER {order: 1}]->(ansGloTrAndVenSol),
    (ansGrpGloTrAndVenSol)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6164'}),

    // A3 Transport services
    (ansGrpTranServ:AnswerGroup {name: 'ansGrpTranServ'}),
    (qiTravelServ)-[:HAS_ANSWER_GROUP]->(ansGrpTranServ),
    (ansGrpTranServ)-[:HAS_ANSWER {order: 2}]->(ansTranServ),
    (ansGrpTranServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6121'}),

    // A3 Travel and venue solutions
    (ansGrpTrAndVenSol:AnswerGroup {name: 'ansGrpTrAndVenSol'}),
    (qiTravelServ)-[:HAS_ANSWER_GROUP]->(ansGrpTrAndVenSol),
    (ansGrpTrAndVenSol)-[:HAS_ANSWER {order: 3}]->(ansTrAndVenSol),
    (ansGrpTrAndVenSol)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6016'}),

  // A2 Vehicle services
  (ansGrpVehicServ:AnswerGroup {name: 'ansGrpVehicServ'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpVehicServ),
  (ansGrpVehicServ)-[:HAS_ANSWER {order: 6}]->(ansVehicServ),
  (ansGrpVehicServ)-[:HAS_OUTCOME]->(qiVehicServ:QuestionInstance:Outcome {uuid: '4542cfd8-fbc4-4eb9-82e8-0e25e27343da'})-[:DEFINED_BY]->(qstnVehicServ),

    // A3 Conversions
    (ansGrpConversions:AnswerGroup {name: 'ansGrpConversions'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpConversions),
    (ansGrpConversions)-[:HAS_ANSWER {order: 1}]->(ansConversions),
    (ansGrpConversions)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3814'}),

    // A3 Hire services
    (ansGrpHireServ:AnswerGroup {name: 'ansGrpHireServ'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpHireServ),
    (ansGrpHireServ)-[:HAS_ANSWER {order: 2}]->(ansHireServ),
    (ansGrpHireServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6013'}),

    // A3 Leases and vehicle management
    (ansGrpLeAndVehManag:AnswerGroup {name: 'ansGrpLeAndVehManag'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpLeAndVehManag),
    (ansGrpLeAndVehManag)-[:HAS_ANSWER {order: 3}]->(ansLeAndVehManag),
    (ansGrpLeAndVehManag)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6096'}),

    // A3 Purchases
    (ansGrpPurchases:AnswerGroup {name: 'ansGrpPurchases'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpPurchases),
    (ansGrpPurchases)-[:HAS_ANSWER {order: 4}]->(ansPurchases),
    (ansGrpPurchases)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6060'}),

    // A3 Telematics
    (ansGrpTelematics:AnswerGroup {name: 'ansGrpTelematics'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpTelematics),
    (ansGrpTelematics)-[:HAS_ANSWER {order: 5}]->(ansTelematics),
    (ansGrpTelematics)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6143'}),

    // A3 Tyre services
    (ansGrpTyreServ:AnswerGroup {name: 'ansGrpTyreServ'}),
    (qiVehicServ)-[:HAS_ANSWER_GROUP]->(ansGrpTyreServ),
    (ansGrpTyreServ)-[:HAS_ANSWER {order: 6}]->(ansTyreServ),
    (ansGrpTyreServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3767'}),

  // A2 Anything else (Corporate Solutions)
  (ansGrpAnyForCorpSolutions:AnswerGroup {name: 'ansGrpAnyForCorpSolutions'}),
  (qiCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpAnyForCorpSolutions),
  (ansGrpAnyForCorpSolutions)-[:HAS_ANSWER {order: 7, mutex: true}]->(ansAnyForCorpSolutions),
  (ansGrpAnyForCorpSolutions)-[:HAS_OUTCOME]->(qiAnyForCorpSolutions:QuestionInstance:Outcome {uuid: '6d2d8d07-2e5e-4521-a8b8-c0abec7d65b4'})-[:DEFINED_BY]->(qstnAnyForCorpSolutions),

    // A3 Campaign solutions
    (ansGrpCampaSolut:AnswerGroup {name: 'ansGrpCampaSolut'}),
    (qiAnyForCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpCampaSolut),
    (ansGrpCampaSolut)-[:HAS_ANSWER {order: 1}]->(ansCampaSolut),
    (ansGrpCampaSolut)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3774'}),

    // A3 Communication services
    (ansGrpComServices:AnswerGroup {name: 'ansGrpComServices'}),
    (qiAnyForCorpSolutions)-[:HAS_ANSWER_GROUP]->(ansGrpComServices),
    (ansGrpComServices)-[:HAS_ANSWER {order: 2}]->(ansComServices),
    (ansGrpComServices)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3796'}),






// A1 People
(ansGrpPeople:AnswerGroup {name: 'ansGrpPeople'}),
(qiWhichPillar)-[:HAS_ANSWER_GROUP]->(ansGrpPeople),
(ansGrpPeople)-[:HAS_ANSWER {order: 3}]->(ansPeople),
(ansGrpPeople)-[:HAS_OUTCOME]->(qiPeople:QuestionInstance:Outcome {uuid: 'f631f951-2665-497f-a4cd-79973c65bb9d'})-[:DEFINED_BY]->(qstnPeople),

  // A2 Apprenticeship services
  (ansGrpApprenticeshipServ:AnswerGroup {name: 'ansGrpApprenticeshipServ'}),
  (qiPeople)-[:HAS_ANSWER_GROUP]->(ansGrpApprenticeshipServ),
  (ansGrpApprenticeshipServ)-[:HAS_ANSWER {order: 1}]->(ansApprenticeshipServ),
  (ansGrpApprenticeshipServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6102'}),
  (ansGrpApprenticeshipServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6107'}),

  // A2 Employee services or benefits
  (ansGrpEmployeeServOrBenefits:AnswerGroup {name: 'ansGrpEmployeeServOrBenefits'}),
  (qiPeople)-[:HAS_ANSWER_GROUP]->(ansGrpEmployeeServOrBenefits),
  (ansGrpEmployeeServOrBenefits)-[:HAS_ANSWER {order: 2}]->(ansEmployeeServOrBenefits),
  (ansGrpEmployeeServOrBenefits)-[:HAS_OUTCOME]->(qiEmployeeServOrBenefits:QuestionInstance:Outcome {uuid: '3da205c3-c066-4be8-b28b-be911e878f05'})-[:DEFINED_BY]->(qstnEmployeeServOrBenefits),

    // A3 Employee health and wellbeing
    (ansGrpEmplHealAndWell:AnswerGroup {name: 'ansGrpEmplHealAndWell'}),
    (qiEmployeeServOrBenefits)-[:HAS_ANSWER_GROUP]->(ansGrpEmplHealAndWell),
    (ansGrpEmplHealAndWell)-[:HAS_ANSWER {order: 1}]->(ansEmplHealAndWell),
    (ansGrpEmplHealAndWell)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3795'}),

    // A3 Employee services
    (ansGrpEmplServ:AnswerGroup {name: 'ansGrpEmplServ'}),
    (qiEmployeeServOrBenefits)-[:HAS_ANSWER_GROUP]->(ansGrpEmplServ),
    (ansGrpEmplServ)-[:HAS_ANSWER {order: 2}]->(ansEmplServ),
    (ansGrpEmplServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6133'}),

    // A3 Language services
    (ansGrpLangServ:AnswerGroup {name: 'ansGrpLangServ'}),
    (qiEmployeeServOrBenefits)-[:HAS_ANSWER_GROUP]->(ansGrpLangServ),
    (ansGrpLangServ)-[:HAS_ANSWER {order: 3}]->(ansLangServ),
    (ansGrpLangServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1092'}),

    // A3 Learning services
    (ansGrpLearnServ:AnswerGroup {name: 'ansGrpLearnServ'}),
    (qiEmployeeServOrBenefits)-[:HAS_ANSWER_GROUP]->(ansGrpLearnServ),
    (ansGrpLearnServ)-[:HAS_ANSWER {order: 4}]->(ansLearnServ),
    (ansGrpLearnServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3822'}),
    (ansGrpLearnServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6145'}),


  // A2 Legal or consultancy services
  (ansGrpLegalOrConsServ:AnswerGroup {name: 'ansGrpLegalOrConsServ'}),
  (qiPeople)-[:HAS_ANSWER_GROUP]->(ansGrpLegalOrConsServ),
  (ansGrpLegalOrConsServ)-[:HAS_ANSWER {order: 3}]->(ansLegalOrConsServ),
  (ansGrpLegalOrConsServ)-[:HAS_OUTCOME]->(qiLegalOrConsServ:QuestionInstance:Outcome {uuid: 'dc819f0e-2711-410e-a017-0b53befed5ee'})-[:DEFINED_BY]->(qstnLegalOrConsServ),

    // A3 Consultancy services
    (ansGrpConsulServ:AnswerGroup {name: 'ansGrpConsulServ'}),
    (qiLegalOrConsServ)-[:HAS_ANSWER_GROUP]->(ansGrpConsulServ),
    (ansGrpConsulServ)-[:HAS_ANSWER {order: 1}]->(ansConsulServ),
    (ansGrpConsulServ)-[:HAS_OUTCOME]->(qiConsulServ:QuestionInstance:Outcome {uuid: '1498b581-31a1-4176-ad78-d86bd78cb2a2'})-[:DEFINED_BY]->(qstnConsulServ),

      // A4 Corporate finance
      (ansGrpCorpFinance:AnswerGroup {name: 'ansGrpCorpFinance'}),
      (qiConsulServ)-[:HAS_ANSWER_GROUP]->(ansGrpCorpFinance),
      (ansGrpCorpFinance)-[:HAS_ANSWER {order: 1}]->(ansCorpFinance),
      (ansGrpCorpFinance)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6169'}),


      // A4 Management consultancy
      (ansGrpManagConsult:AnswerGroup {name: 'ansGrpManagConsult'}),
      (qiConsulServ)-[:HAS_ANSWER_GROUP]->(ansGrpManagConsult),
      (ansGrpManagConsult)-[:HAS_ANSWER {order: 2}]->(ansManagConsult),
      (ansGrpManagConsult)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3745'}),
      (ansGrpManagConsult)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6008'}),


    // A3 Legal services
    (ansGrpLegalServ:AnswerGroup {name: 'ansGrpLegalServ'}),
    (qiLegalOrConsServ)-[:HAS_ANSWER_GROUP]->(ansGrpLegalServ),
    (ansGrpLegalServ)-[:HAS_ANSWER {order: 2}]->(ansLegalServ),
    (ansGrpLegalServ)-[:HAS_OUTCOME]->(qiLegalFirstQuestion), // SWITCH TREES



  // A2 Recruitment or employment services
  (ansGrpRecruitOrEmployServ:AnswerGroup {name: 'ansGrpRecruitOrEmployServ'}),
  (qiPeople)-[:HAS_ANSWER_GROUP]->(ansGrpRecruitOrEmployServ),
  (ansGrpRecruitOrEmployServ)-[:HAS_ANSWER {order: 4}]->(ansRecruitOrEmployServ),
  (ansGrpRecruitOrEmployServ)-[:HAS_OUTCOME]->(qiRecruitOrEmployServ:QuestionInstance:Outcome {uuid: '1e388d5a-cd82-4b15-825f-d55a3cb99e17'})-[:DEFINED_BY]->(qstnRecruitOrEmployServ),

    // A3 Permanent recruitment
    (ansGrpPermaRecruit:AnswerGroup {name: 'ansGrpPermaRecruit'}),
    (qiRecruitOrEmployServ)-[:HAS_ANSWER_GROUP]->(ansGrpPermaRecruit),
    (ansGrpPermaRecruit)-[:HAS_ANSWER {order: 1}]->(ansPermaRecruit),
    (ansGrpPermaRecruit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6002'}),

    // A3 Public sector resourcing
    (ansGrpPubSecResour:AnswerGroup {name: 'ansGrpPubSecResour'}),
    (qiRecruitOrEmployServ)-[:HAS_ANSWER_GROUP]->(ansGrpPubSecResour),
    (ansGrpPubSecResour)-[:HAS_ANSWER {order: 2}]->(ansPubSecResour),
    (ansGrpPubSecResour)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3749'}),

    // A3 Temporary resoucing or recruitment
    (ansGrpTempResouOrRecruit:AnswerGroup {name: 'ansGrpTempResouOrRecruit'}),
    (qiRecruitOrEmployServ)-[:HAS_ANSWER_GROUP]->(ansGrpTempResouOrRecruit),
    (ansGrpTempResouOrRecruit)-[:HAS_ANSWER {order: 3}]->(ansTempResouOrRecruit),
    (ansGrpTempResouOrRecruit)-[:HAS_OUTCOME]->(qiTempResouOrRecrui:QuestionInstance:Outcome {uuid: 'd0fd76fe-de44-435b-b234-8b4ae3d856a2'})-[:DEFINED_BY]->(qstnTempResouOrRecrui),

      // A4 Healthcare
      (ansGrpHealth:AnswerGroup {name: 'ansGrpHealth'}),
      (qiTempResouOrRecrui)-[:HAS_ANSWER_GROUP]->(ansGrpHealth),
      (ansGrpHealth)-[:HAS_ANSWER {order: 1}]->(ansHealth),
      (ansGrpHealth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3711'}),
      (ansGrpHealth)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6161'}),

      // A4 Supply teachers and educational staff
      (ansGrpSuppTeachAndEducatStaff:AnswerGroup {name: 'ansGrpSuppTeachAndEducatStaff'}),
      (qiTempResouOrRecrui)-[:HAS_ANSWER_GROUP]->(ansGrpSuppTeachAndEducatStaff),
      (ansGrpSuppTeachAndEducatStaff)-[:HAS_ANSWER {order: 2}]->(ansSuppTeachAndEducatStaff),
      (ansGrpSuppTeachAndEducatStaff)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3826'}),

      // A4 Anything else (Temporary resoucing or recruitment)
      (ansGrpAnyelseForTempResouOrRecruit:AnswerGroup {name: 'ansGrpAnyelseForTempResouOrRecruit'}),
      (qiTempResouOrRecrui)-[:HAS_ANSWER_GROUP]->(ansGrpAnyelseForTempResouOrRecruit),
      (ansGrpAnyelseForTempResouOrRecruit)-[:HAS_ANSWER {order: 3, mutex: true}]->(ansAnyelseForTempResouOrRecruit),
      (ansGrpAnyelseForTempResouOrRecruit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6158'}),
      (ansGrpAnyelseForTempResouOrRecruit)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6160'}),


  // A2 Anything else (People)
  (ansGrpAnyForPeople:AnswerGroup {name: 'ansGrpAnyForPeople'}),
  (qiPeople)-[:HAS_ANSWER_GROUP]->(ansGrpAnyForPeople),
  (ansGrpAnyForPeople)-[:HAS_ANSWER {order: 5, mutex: true}]->(ansAnyForPeople),
  (ansGrpAnyForPeople)-[:HAS_OUTCOME]->(qiAnyForPeople:QuestionInstance:Outcome {uuid: '03aaeaa2-8c9a-4a14-b669-3efe694e6dfa'})-[:DEFINED_BY]->(qstnAnyForPeople),

    // A3 Contact centre services
    (ansGrpConCenServ:AnswerGroup {name: 'ansGrpConCenServ'}),
    (qiAnyForPeople)-[:HAS_ANSWER_GROUP]->(ansGrpConCenServ),
    (ansGrpConCenServ)-[:HAS_ANSWER {order: 1}]->(ansConCenServ),
    (ansGrpConCenServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3815'}),



// A1 Technology
(ansGrpTechnology:AnswerGroup {name: 'ansGrpTechnology'}),
(qiWhichPillar)-[:HAS_ANSWER_GROUP]->(ansGrpTechnology),
(ansGrpTechnology)-[:HAS_ANSWER {order: 4}]->(ansTechnology),
(ansGrpTechnology)-[:HAS_OUTCOME]->(qiTechnology:QuestionInstance:Outcome {uuid: 'd0a66ca7-671f-4605-8470-d7c4c942b4b8'})-[:DEFINED_BY]->(qstnTechnology),

  // A2 Digital future
  (ansGrpDigitalFut:AnswerGroup {name: 'ansGrpDigitalFut'}),
  (qiTechnology)-[:HAS_ANSWER_GROUP]->(ansGrpDigitalFut),
  (ansGrpDigitalFut)-[:HAS_ANSWER {order: 1}]->(ansDigitalFut),
  (ansGrpDigitalFut)-[:HAS_OUTCOME]->(qiDigitalFut:QuestionInstance:Outcome {uuid: 'fd051486-4c2a-4d74-8c0d-b96215e250e6'})-[:DEFINED_BY]->(qstnDigitalFut),

    // A3 Artificial Intelligence
    (ansGrpArtIntel:AnswerGroup {name: 'ansGrpArtIntel'}),
    (qiDigitalFut)-[:HAS_ANSWER_GROUP]->(ansGrpArtIntel),
    (ansGrpArtIntel)-[:HAS_ANSWER {order: 1}]->(ansArtIntel),
    (ansGrpArtIntel)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6173'}),
    (ansGrpArtIntel)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6200'}),

    // A3 Cloud services
    (ansGrpCloudServ:AnswerGroup {name: 'ansGrpCloudServ'}),
    (qiDigitalFut)-[:HAS_ANSWER_GROUP]->(ansGrpCloudServ),
    (ansGrpCloudServ)-[:HAS_ANSWER {order: 2}]->(ansCloudServ),
    (ansGrpCloudServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1557.12'}),

    // A3 Crown hosting
    (ansGrpCrownHost:AnswerGroup {name: 'ansGrpCrownHost'}),
    (qiDigitalFut)-[:HAS_ANSWER_GROUP]->(ansGrpCrownHost),
    (ansGrpCrownHost)-[:HAS_ANSWER {order: 3}]->(ansCrownHost),
    (ansGrpCrownHost)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1069'}),

    // A3 Digital services
    (ansGrpDigiServ:AnswerGroup {name: 'ansGrpDigiServ'}),
    (qiDigitalFut)-[:HAS_ANSWER_GROUP]->(ansGrpDigiServ),
    (ansGrpDigiServ)-[:HAS_ANSWER {order: 4}]->(ansDigiServ),
    (ansGrpDigiServ)-[:HAS_OUTCOME]->(qiDigiServ:QuestionInstance:Outcome {uuid: 'dbeb48c3-2ba5-4302-9f21-9e84dc606d8a'})-[:DEFINED_BY]->(qstnDigiServ),

      // A4 Digital outcomes and specialists
      (ansGrpDigiOutAndSpec:AnswerGroup {name: 'ansGrpDigiOutAndSpec'}),
      (qiDigiServ)-[:HAS_ANSWER_GROUP]->(ansGrpDigiOutAndSpec),
      (ansGrpDigiOutAndSpec)-[:HAS_ANSWER {order: 1}]->(ansDigiOutAndSpec),
      (ansGrpDigiOutAndSpec)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1043.6'}),


      // A4 Quality assurance testing
      (ansGrpQualAssurTest:AnswerGroup {name: 'ansGrpQualAssurTest'}),
      (qiDigiServ)-[:HAS_ANSWER_GROUP]->(ansGrpQualAssurTest),
      (ansGrpQualAssurTest)-[:HAS_ANSWER {order: 2}]->(ansQualAssurTest),
      (ansGrpQualAssurTest)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3765'}),

      // A4 Digital training, inclusion and support
      (ansGrpDigiTrainIncluAndSupp:AnswerGroup {name: 'ansGrpDigiTrainIncluAndSupp'}),
      (qiDigiServ)-[:HAS_ANSWER_GROUP]->(ansGrpDigiTrainIncluAndSupp),
      (ansGrpDigiTrainIncluAndSupp)-[:HAS_ANSWER {order: 3}]->(ansDigiTrainIncluAndSupp),
      (ansGrpDigiTrainIncluAndSupp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6148'}),
      (ansGrpDigiTrainIncluAndSupp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6209'}),


  // A2 Network services
  (ansGrpNetworkServ:AnswerGroup {name: 'ansGrpNetworkServ'}),
  (qiTechnology)-[:HAS_ANSWER_GROUP]->(ansGrpNetworkServ),
  (ansGrpNetworkServ)-[:HAS_ANSWER {order: 2}]->(ansNetworkServ),
  (ansGrpNetworkServ)-[:HAS_OUTCOME]->(qiNetworkServ:QuestionInstance:Outcome {uuid: 'b93929e6-47ea-49bd-af0a-136cde84eb19'})-[:DEFINED_BY]->(qstnNetworkServ),

    // A3 Fibre optic infrastructure services
    (ansGrpFibreOpInfraServ:AnswerGroup {name: 'ansGrpFibreOpInfraServ'}),
    (qiNetworkServ)-[:HAS_ANSWER_GROUP]->(ansGrpFibreOpInfraServ),
    (ansGrpFibreOpInfraServ)-[:HAS_ANSWER {order: 1}]->(ansFibreOpInfraServ),
    (ansGrpFibreOpInfraServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6095'}),

    // A3 Health and social care
    (ansGrpHealAndSoCare:AnswerGroup {name: 'ansGrpHealAndSoCare'}),
    (qiNetworkServ)-[:HAS_ANSWER_GROUP]->(ansGrpHealAndSoCare),
    (ansGrpHealAndSoCare)-[:HAS_ANSWER {order: 2}]->(ansHealAndSoCare),
    (ansGrpHealAndSoCare)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3825'}),

    // A3 Network services
    (ansGrpNetwServ:AnswerGroup {name: 'ansGrpNetwServ'}),
    (qiNetworkServ)-[:HAS_ANSWER_GROUP]->(ansGrpNetwServ),
    (ansGrpNetwServ)-[:HAS_ANSWER {order: 3}]->(ansNetwServ),
    (ansGrpNetwServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3808'}),
    (ansGrpNetwServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6167'}),

    // A3 Anything else
    (ansGrpAnyelseForNetwork:AnswerGroup {name: 'ansGrpAnyelseForNetwork'}),
    (qiNetworkServ)-[:HAS_ANSWER_GROUP]->(ansGrpAnyelseForNetwork),
    (ansGrpAnyelseForNetwork)-[:HAS_ANSWER {order: 4, mutex: true}]->(ansAnyelseForNetwork),
    (ansGrpAnyelseForNetwork)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3802'}),


  // A2 Software and cyber security
  (ansGrpSoftwAndCyberSec:AnswerGroup {name: 'ansGrpSoftwAndCyberSec'}),
  (qiTechnology)-[:HAS_ANSWER_GROUP]->(ansGrpSoftwAndCyberSec),
  (ansGrpSoftwAndCyberSec)-[:HAS_ANSWER {order: 3}]->(ansSoftwAndCyberSec),
  (ansGrpSoftwAndCyberSec)-[:HAS_OUTCOME]->(qiSoftwAndCyberSec:QuestionInstance:Outcome {uuid: 'b9d2fff4-7770-4d05-bd49-d9f70b5c1720'})-[:DEFINED_BY]->(qstnSoftwAndCyberSec),

    // A3 Cyber security
    (ansGrpCybSecurity:AnswerGroup {name: 'ansGrpCybSecurity'}),
    (qiSoftwAndCyberSec)-[:HAS_ANSWER_GROUP]->(ansGrpCybSecurity),
    (ansGrpCybSecurity)-[:HAS_ANSWER {order: 1}]->(ansCybSecurity),
    (ansGrpCybSecurity)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3764.3'}),


    // A3 Enterprise applications
    (ansGrpEnterpApp:AnswerGroup {name: 'ansGrpEnterpApp'}),
    (qiSoftwAndCyberSec)-[:HAS_ANSWER_GROUP]->(ansGrpEnterpApp),
    (ansGrpEnterpApp)-[:HAS_ANSWER {order: 2}]->(ansEnterpApp),
    (ansGrpEnterpApp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM3821'}),
    (ansGrpEnterpApp)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM6101'}),



// A2 Software and cyber security
  (ansGrpTechProdAndServ:AnswerGroup {name: 'ansGrpTechProdAndServ'}),
  (qiTechnology)-[:HAS_ANSWER_GROUP]->(ansGrpTechProdAndServ),
  (ansGrpTechProdAndServ)-[:HAS_ANSWER {order: 4}]->(ansTechProdAndServ),
  (ansGrpTechProdAndServ)-[:HAS_OUTCOME]->(qiTechProdAndServ:QuestionInstance:Outcome {uuid: '8ba73606-5335-42d1-ab45-8650e7d8becc'})-[:DEFINED_BY]->(qstnTechProdAndServ),

    // A3 Technology products
    (ansGrpTechProd:AnswerGroup {name: 'ansGrpTechProd'}),
    (qiTechProdAndServ)-[:HAS_ANSWER_GROUP]->(ansGrpTechProd),
    (ansGrpTechProd)-[:HAS_ANSWER {order: 1}]->(ansTechProd),
    (ansGrpTechProd)-[:HAS_OUTCOME]->(qiTechProductsFirstQuestion), // SWITCH TREES

    // A3 Technology services
    (ansGrpTechServ:AnswerGroup {name: 'ansGrpTechServ'}),
    (qiTechProdAndServ)-[:HAS_ANSWER_GROUP]->(ansGrpTechServ),
    (ansGrpTechServ)-[:HAS_ANSWER {order: 2}]->(ansTechServ),
    (ansGrpTechServ)-[:HAS_OUTCOME]->(qiTechProductsFirstQuestion), // SWITCH TREES

    // A3 Traffic services
    (ansGrpTraffServ:AnswerGroup {name: 'ansGrpTraffServ'}),
    (qiTechProdAndServ)-[:HAS_ANSWER_GROUP]->(ansGrpTraffServ),
    (ansGrpTraffServ)-[:HAS_ANSWER {order: 3}]->(ansTraffServ),
    (ansGrpTraffServ)-[:HAS_OUTCOME]->(:Agreement:Outcome {number: 'RM1089'})

;
