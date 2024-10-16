#!/bin/bash
set -meo pipefail

function load_gm_data() {
  echo "Loading Guided Match decision tree data from file: ${1}"
  cypher-shell -u ${DB_ADMIN_USERNAME} -p "${DB_ADMIN_PASSWORD}" -a bolt://localhost:7687 --debug -f ./graph/$1
}

export NEO4J_AUTH="${DB_ADMIN_USERNAME}/${DB_ADMIN_PASSWORD}"

# Start the primary process in the background
/startup/docker-entrypoint.sh neo4j &

# Wait for Neo4j to start
while true; do
    sleep 3
    if wget -q -S http://localhost:7474; then
        echo "Ready"
        break
    else
        echo "Not Ready"
        continue
    fi
done

# Load Guided Match decision trees
load_gm_data "common.cypher"
load_gm_data "RM6071_RM6170_Print_Marketplace.cypher"
load_gm_data "RM6177_National_Fuels_2.cypher"
load_gm_data "RM6178_Water_and_wastewater.cypher"
load_gm_data "RM6171_Courier_Specialist_Movement.cypher"
load_gm_data "RM6175_Records_Information_Management_Service.cypher"
load_gm_data "RM6174_Multi_Functional_Devices.cypher"
load_gm_data "RM6157_Building_Materials_Equipment.cypher"
load_gm_data "Staffing_Solutions.cypher"
load_gm_data "Employee_Benefits.cypher"
load_gm_data "RM6141_Language_Services.cypher"
load_gm_data "RM6188_Audit_and_Assurance.cypher"
load_gm_data "RM6182_Occupational_Health_EAP_Eye_Care.cypher"
load_gm_data "RM6276_Insourced_Services.cypher"
load_gm_data "RM6181_Outsourced_Contact_Center.cypher"
load_gm_data "RM6102_6145_6219_Apprenticeship.cypher"
load_gm_data "RM6074_Logistics_and_Warehousing.cypher"
load_gm_data "RM6262_Crown_Hosting.cypher"
load_gm_data "HELGA.cypher"
load_gm_data "Fleet.cypher"
load_gm_data "Marcomms.cypher"
load_gm_data "Consultancy.cypher"
load_gm_data "e_Disclosure_2.cypher"
load_gm_data "CWAS.cypher"
load_gm_data "Payment_Solutions_2.cypher"
load_gm_data "CLTR_PSLS(Legal_Service).cypher"
load_gm_data "Offsite_construction_solutions.cypher"
load_gm_data "Energy.cypher"
load_gm_data "Demand_Management.cypher"
load_gm_data "Insurance_Services_3.cypher"
load_gm_data "Joint_network_solutions.cypher"
load_gm_data "Technology_products_2.cypher"
load_gm_data "Travel.cypher"
load_gm_data "RM6257_Physical_Technical_and_Support.cypher"
load_gm_data "Facilities.cypher"
load_gm_data "GM_Lite.cypher"
load_gm_data "Software.cypher"
load_gm_data "Cloud_compute.cypher"
load_gm_data "Transport_technology_and_services.cypher"
load_gm_data "Bespoke_application_development.cypher"
load_gm_data "Construction_professional_services.cypher"

echo "Data load complete"

# Create a service account (for use by Decision Tree service):
createUserCypher="CREATE USER ${DB_SERVICE_ACCOUNT_USERNAME} IF NOT EXISTS SET PASSWORD '${DB_SERVICE_ACCOUNT_PASSWORD}' SET PASSWORD CHANGE NOT REQUIRED;"
cypher-shell -u ${DB_ADMIN_USERNAME} -p ${DB_ADMIN_PASSWORD} -a bolt://localhost:7687 -d system --debug "${createUserCypher}"
fg %1