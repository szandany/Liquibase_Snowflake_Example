#!bin/bash
curl -L https://github.com/liquibase/liquibase/releases/download/v${LB_VERSION}/liquibase-${LB_VERSION}.zip --output liquibase-${LB_VERSION}.zip
unzip -o -d liquibase liquibase-${LB_VERSION}.zip
cp drivers/liquibase-snowflake.jar ./liquibase/lib/
cp drivers/snowflake-jdbc-3.12.0.jar ./liquibase/lib/
export LIQUIBASE_PRO_LICENSE_KEY="${{ secrets.LIQUIBASE_PRO_LICENSE_KEY }}"
export LIQUIBASE_COMMAND_URL="${{ secrets.LIQUIBASE_COMMAND_URL }}"
export LIQUIBASE_COMMAND_USERNAME="${{ secrets.LIQUIBASE_COMMAND_USERNAME }}"
export LIQUIBASE_COMMAND_PASSWORD="${{ secrets.LIQUIBASE_COMMAND_PASSWORD }}"
export LIQUIBASE_COMMAND_CHANGELOG_FILE="${{ secrets.LIQUIBASE_COMMAND_CHANGELOG_FILE }}"
export LIQUIBASE_HUB_API_KEY="${{ secrets.LIQUIBASE_HUB_API_KEY }}"