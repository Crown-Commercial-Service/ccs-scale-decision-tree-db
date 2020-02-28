// SCALE GM DB
// Guided Match Laptops
CREATE
(jrnyLaptops:Journey {name: 'Guided match laptops journey', searchTerms: ['laptop', 'laptops', 'ultrabook', 'notebook', 'notebooks']}),
(qstnQtyLT100_100T1000_GT1000:Question:FirstQuestion {name:'qstnQtyLT100_100T1000_GT1000', text:'How many do you require?',uiType:'RADIO'}),
(qstnIncludeServices:Question {name: 'qstnIncludeServices', text: 'Do you require any services to be included in your purchase?', uiType: 'RADIO'}),
(qstnEduInstitutionBranch1:Question {name: 'qstnEduInstitutionBranch1', text: 'Are you purchasing on behalf of an educational institution?', uiType: 'RADIO'}),
(qstnEduInstitutionBranch2:Question {name: 'qstnEduInstitutionBranch2', text: 'Are you purchasing on behalf of an educational institution?', uiType: 'RADIO'}),
(resultTP2:JourneyResult {name: 'Technology Products 2', description: 'Technology Products 2 (TP2) offers public sector customers a flexible and compliant way to source all their technology product needs (hardware and software)', agreementId: 'RM3733', url: 'http://35.176.126.74:3000/t/computing/mobile-devices/laptops'}),
(resultTPAS:JourneyResult {name: 'Technology Products & Associated Services', description: 'Offers public sector buyers a compliant route to market for technology product needs (hardware and software) and all associated services.', agreementId: 'RM6068', url: ''}),

// Relationships
(jrnyLaptops)-[:FIRST_QUESTION {  name: jrnyLaptops.name + '->' + qstnQtyLT100_100T1000_GT1000.name }]->(qstnQtyLT100_100T1000_GT1000),

// Question 1 -> Question 2
(qstnQtyLT100_100T1000_GT1000)-[:ANSWER { name: 'ansLT100', text:'Less than 100',displayOrder: 1}]->(qstnIncludeServices),
(qstnQtyLT100_100T1000_GT1000)-[:ANSWER { name: 'ans100T1000', text:'Between 100 and 1000',displayOrder: 2}]->(qstnIncludeServices),
(qstnQtyLT100_100T1000_GT1000)-[:ANSWER { name: 'ansGT1000', text:'Over 1000', displayOrder: 3}]->(qstnIncludeServices),

// Question 2 -> Question 3 (Branch)
(qstnIncludeServices)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(qstnEduInstitutionBranch1),
(qstnIncludeServices)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 2}]->(qstnEduInstitutionBranch2),

// Question 3 -> TPAS
(qstnEduInstitutionBranch1)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(resultTPAS),
(qstnEduInstitutionBranch1)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 2}]->(resultTPAS),

// Question 3 -> TP2
(qstnEduInstitutionBranch2)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(resultTP2),
(qstnEduInstitutionBranch2)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 2}]->(resultTP2),

// Guided Match cameras
(jrnyCameras:Journey {name:'Guided match cameras journey', searchTerms: ['camera', 'cameras', 'slr', 'camcorder']}),
(qstnTrafficMngmtRelated:Question:FirstQuestion {name:'qstnTrafficMngmtRelated', text:'Is the purchase traffic management related?', uiType:'RADIO'}),
(qstnLowVolume:Question {name:'qstnLowVolume', text:'Would you consider the purchase \'low volume\'', uiType:'RADIO'}),
(qstnCameraType:Question {name:'qstnCameraType', text:'What type of camera do you require?', uiType:'DROPDOWN'}),
(qstnQtyCameras:Question {name:'qstnQtyCameras', text:'How many cameras do you require?', uiType:'RADIO'}),
(qstnIncludeServices2:Question {name:'qstnIncludeServices2', text:'Do you require any services to be included in your purchase?', uiType:'RADIO'}),
(qstnEduInstitution3:Question {name: 'qstnEduInstitution3', text: 'Are you purchasing on behalf of an educational institution?', uiType:'RADIO'}),
(resultTFMT2:JourneyResult {name: 'Traffic Management Technology 2', description: 'Transport technology, including traffic signals and CCTV, parking and access control, street lighting, intelligent transport systems and professional services.', agreementId: 'RM1089', url: ''}),

(jrnyCameras)-[:FIRST_QUESTION {name: jrnyCameras.name + '->' + qstnTrafficMngmtRelated.name }]->(qstnTrafficMngmtRelated),

// Q1 (branch)
(qstnTrafficMngmtRelated)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(qstnLowVolume),
(qstnTrafficMngmtRelated)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 1}]->(qstnCameraType),

// Traffic Management Tech 2 route
(qstnLowVolume)-[:ANSWER { name: 'ansYes', text: 'Yes', displayOrder: 1}]->(resultTFMT2),
(qstnLowVolume)-[:ANSWER { name: 'ansNo', text: 'No', displayOrder: 1}]->(resultTFMT2),

// Tech Products 2 route
(qstnCameraType)-[:ANSWER { name: 'ansCompactDig', text:'Compact Digital Camera', displayOrder: 1}]->(qstnQtyCameras),
(qstnCameraType)-[:ANSWER { name: 'ansSLR', text:'SLR Camera', displayOrder: 1}]->(qstnQtyCameras),
(qstnCameraType)-[:ANSWER { name: 'ansCamcorder', text:'Camcorder', displayOrder: 1}]->(qstnQtyCameras),
(qstnCameraType)-[:ANSWER { name: 'ansOther', text:'Other', displayOrder: 1}]->(qstnQtyCameras),

(qstnQtyCameras)-[:ANSWER { name: 'ansLT100', text:'Less than 100',displayOrder: 1}]->(qstnIncludeServices2),
(qstnQtyCameras)-[:ANSWER { name: 'ans100T1000', text:'Between 100 and 1000',displayOrder: 2}]->(qstnIncludeServices2),
(qstnQtyCameras)-[:ANSWER { name: 'ansGT1000', text:'Over 1000', displayOrder: 3}]->(qstnIncludeServices2),

(qstnIncludeServices2)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(qstnEduInstitution3),
(qstnIncludeServices2)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 1}]->(qstnEduInstitution3),

(qstnEduInstitution3)-[:ANSWER { name: 'ansYes', text:'Yes', displayOrder: 1}]->(resultTP2),
(qstnEduInstitution3)-[:ANSWER { name: 'ansNo', text:'No', displayOrder: 2}]->(resultTP2),

// Guided match: Facilities Management (FM Marketplace Phase 2)
(jrnyFM2:Journey {name: 'FM Marketplace Phase 2', searchTerms: ['facility', 'facilities', 'housing', 'accommodation', 'security', 'catering', 'waste', 'cleaning']}),
(qstnOrganisation:Question:FirstQuestion {name:'qstnOrganisation', text:'What organisation do you belong to?', uiType:'DROPDOWN'}),
(qstnSelectServicesMOD:Question {name:'qstnSelectServicesMOD', text:'Select which service(s) are required:', uiType:'DROPDOWN'}), // CHECKBOX
(qstnSelectServicesNonMOD:Question {name:'qstnSelectServicesNonMOD', text:'Select which service(s) are required:', uiType:'DROPDOWN'}), // CHECKBOX
(qstnSelectLocations:Question {name:'qstnSelectLocations', text:'Select the location(s) where the service is required:', uiType:'DROPDOWN'}), // CHECKBOX
(qstnSecuritySubtype:Question:DomainSpecific {name:'qstnSecuritySubtype', text:'What type of sub-service is required?', uiType:'RADIO'}),

// Outcomes (Journey Results)
(resultFM2Lot2bFC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot2aFC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot3FC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 3)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot2cFC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 2c)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

// Security specific
(resultFM2Lot1aFC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1a)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),
(resultFM2Lot1bFC:JourneyResult {name: 'Workplace Services (FM Marketplace Phase 2 - Lot 1b)', description: 'Security, housing and defence facilities management (FM) services.', agreementId: 'RM6089', url: ''}),

// Generic (other)
(resultGMEndRouteToFM:JourneyResult {name: 'Facilities Management Marketplace', description: 'UK-wide facilities management (FM) services organised regionally and available to all public sector entities. Includes maintenance, cleaning, security, helpdesk etc.', agreementId: 'RM3830', url: ''}),

(jrnyFM2)-[:FIRST_QUESTION {name: jrnyFM2.name + '->' + qstnOrganisation.name }]->(qstnOrganisation),

(qstnOrganisation)-[:ANSWER { name: 'ansMOD', text:'MOD', displayOrder: 1}]->(qstnSelectServicesMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansCG', text:'CG', displayOrder: 2}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansDevolved', text:'Devolved', displayOrder: 3}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansEdu', text:'Education', displayOrder: 4}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansHealth', text:'Health', displayOrder: 5}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansLG', text:'LG', displayOrder: 6}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansBlueLight', text:'Blue Light', displayOrder: 7}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansHousing', text:'Housing', displayOrder: 8}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansCharities', text:'Charities', displayOrder: 9}]->(qstnSelectServicesNonMOD),
(qstnOrganisation)-[:ANSWER { name: 'ansWPS', text:'WPS', displayOrder: 10}]->(qstnSelectServicesNonMOD),

// MOD branch - Select service(s)
// Special case - Location selection required
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansHousing', text:'Housing', displayOrder: 1}]->(qstnSelectLocations),

(qstnSelectServicesMOD)-[:ANSWER { name: 'ansSecurity', text:'Security', displayOrder: 2}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansGFM', text:'General facility marketplace', displayOrder: 3}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansCatering', text:'Catering services', displayOrder: 4}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansCleaning', text:'Cleaning services', displayOrder: 5}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansCAFM', text:'Computer aided facility management', displayOrder: 6}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansContractMgmt', text:'Contract management', displayOrder: 7}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansContractMblsn', text:'Contract mobilisation', displayOrder: 8}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansHelpdesk', text:'Helpdesk services', displayOrder: 9}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansHortic', text:'Horticultural services', displayOrder: 10}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansMaintenance', text:'Maintenance services', displayOrder: 11}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansMgmtBillWP', text:'Management of billable works and projects', displayOrder: 12}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansMiscFM', text:'Miscellaneous FM services', displayOrder: 13}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansReception', text:'Reception services', displayOrder: 14}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansSecurity', text:'Security services', displayOrder: 15}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansStatutoryObgls', text:'Statutory obligations', displayOrder: 16}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansWaste', text:'Waste services', displayOrder: 17}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansWkplcFMSvcs', text:'Workplace FM services', displayOrder: 18}]->(resultFM2Lot3FC),
(qstnSelectServicesMOD)-[:ANSWER { name: 'ansOtherSvcs', text:'Other', displayOrder: 19}]->(resultGMEndRouteToFM),

// MOD branch - Select Location(s)
(qstnSelectLocations)-[:ANSWER { name: 'ansNational', text: 'National', displayOrder: 1}]->(resultFM2Lot2bFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansWales', text: 'Wales', displayOrder: 2}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansScotland', text: 'Scotland', displayOrder: 3}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansNrthIreland', text: 'Northern Ireland', displayOrder: 4}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKC', text: 'North East', displayOrder: 5}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKD', text: 'North West', displayOrder: 6}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKE', text: 'Yorkshire and the Humber', displayOrder: 7}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKF', text: 'East Midlands', displayOrder: 8}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKG', text: 'West Midlands', displayOrder: 9}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKH', text: 'East of England', displayOrder: 10}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKI', text: 'London', displayOrder: 11}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKJ', text: 'South East', displayOrder: 12}]->(resultFM2Lot2aFC),
(qstnSelectLocations)-[:ANSWER { name: 'ansUKK', text: 'South West', displayOrder: 13}]->(resultFM2Lot2aFC),

// Non-MOD branch
// Special cases - Housing or Security
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansHousing', text:'Housing', displayOrder: 1}]->(resultFM2Lot2cFC),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansSecurity', text:'Security', displayOrder: 2}]->(qstnSecuritySubtype),

(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansGFM', text:'General facility marketplace', displayOrder: 3}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansCatering', text:'Catering services', displayOrder: 4}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansCleaning', text:'Cleaning services', displayOrder: 5}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansCAFM', text:'Computer aided facility management', displayOrder: 6}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansContractMgmt', text:'Contract management', displayOrder: 7}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansContractMblsn', text:'Contract mobilisation', displayOrder: 8}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansHelpdesk', text:'Helpdesk services', displayOrder: 9}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansHortic', text:'Horticultural services', displayOrder: 10}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansMaintenance', text:'Maintenance services', displayOrder: 11}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansMgmtBillWP', text:'Management of billable works and projects', displayOrder: 12}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansMiscFM', text:'Miscellaneous FM services', displayOrder: 13}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansReception', text:'Reception services', displayOrder: 14}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansSecurity', text:'Security services', displayOrder: 15}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansStatutoryObgls', text:'Statutory obligations', displayOrder: 16}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansWaste', text:'Waste services', displayOrder: 17}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansWkplcFMSvcs', text:'Workplace FM services', displayOrder: 18}]->(resultGMEndRouteToFM),
(qstnSelectServicesNonMOD)-[:ANSWER { name: 'ansOtherSvcs', text:'Other', displayOrder: 19}]->(resultGMEndRouteToFM),

(qstnSecuritySubtype)-[:ANSWER { name: 'ansPhysTech', text:'Physical & Technical', displayOrder: 1}]->(resultFM2Lot1aFC),
(qstnSecuritySubtype)-[:ANSWER { name: 'ansPhys', text:'Physical', displayOrder: 2}]->(resultFM2Lot1aFC),
(qstnSecuritySubtype)-[:ANSWER { name: 'ansPhys', text:'Technical', displayOrder: 3}]->(resultFM2Lot1bFC);
