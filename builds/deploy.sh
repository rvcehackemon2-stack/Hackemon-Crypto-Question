#!/bin/bash
# Team Rocket Deployment Script — Project MEWTWO
# Last updated: Grunt B

set -e

echo "Deploying Project MEWTWO..."

source .env

if [ -z "$DEPLOY_KEY" ]; then
  echo "ERROR: DEPLOY_KEY not set"
  exit 1
fi

echo "Deploy key loaded. Remember: it has been rotated for security."
echo "Sysadmin always uses the same rotation method — check the logs."

docker-compose up -d
echo "Deployment complete. Giovanni is watching."
