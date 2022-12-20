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
load_gm_data "RM3733_RM6068_RM6103_TP2_TePAS_EduTech.cypher"
load_gm_data "RM6089_FM_Marketplace_Housing.cypher"
load_gm_data "RM6089_FM_Marketplace_Facilities.cypher"
load_gm_data "RM6089_FM_Marketplace_Security.cypher"
load_gm_data "RM6154_Linen_and_Laundry.cypher"
load_gm_data "RM3788_Legal_Services.cypher"
load_gm_data "GM_Lite.cypher"
load_gm_data "RM6017_Postal_Goods.cypher"
load_gm_data "Payment_Solutions.cypher"
load_gm_data "RM6071_RM6170_Print_Marketplace.cypher"
load_gm_data "RM6059_Office_Supplies.cypher"
load_gm_data "RM6177_National_Fuels_2.cypher"
load_gm_data "RM6178_Water_and_wastewater.cypher"
load_gm_data "RM6014_Modular_Buildings.cypher"
load_gm_data "Network_Services_2.cypher"
load_gm_data "RM6171_Courier_Specialist_Movement.cypher"
load_gm_data "RM6175_Records_Information_Management_Service.cypher"
load_gm_data "RM6089_FM2_Workplace_Services.cypher"
load_gm_data "RM6174_Multi_Functional_Devices.cypher"
load_gm_data "RM6157_Building_Materials_Equipment.cypher"
load_gm_data "Staffing_Solutions.cypher"
#load_gm_data "MCF2_Consultancy.cypher"
load_gm_data "RM6119_Furniture_and_Associated_Services.cypher"
load_gm_data "RM6133_Employee_Benefits.cypher"
load_gm_data "RM6011_Supply_Energy_Ancillary_Services.cypher"
load_gm_data "RM6141_Language_Services.cypher"
load_gm_data "RM6188_Audit_and_Assurance.cypher"
load_gm_data "RM6182_Occupational_Health_EAP_Eye_Care.cypher"
load_gm_data "RM6255_Voucher_Schemes.cypher"
load_gm_data "RM6276-Insourced-Services.cypher"
load_gm_data "RM6336_e_Disclosure.cypher"

echo "Data load complete"

# Create a service account (for use by Decision Tree service):
createUserCypher="CREATE USER ${DB_SERVICE_ACCOUNT_USERNAME} IF NOT EXISTS SET PASSWORD '${DB_SERVICE_ACCOUNT_PASSWORD}' SET PASSWORD CHANGE NOT REQUIRED;"
cypher-shell -u ${DB_ADMIN_USERNAME} -p ${DB_ADMIN_PASSWORD} -a bolt://localhost:7687 -d system --debug "${createUserCypher}"
fg %1
