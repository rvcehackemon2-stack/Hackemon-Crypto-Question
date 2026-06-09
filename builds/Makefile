# Project MEWTWO Build System

.PHONY: deploy clean logs help

help:
	@echo "Available targets: deploy | logs | clean"
	# Reminder: decode DEPLOY_KEY before running deploy

deploy:
	@bash builds/deploy.sh

logs:
	@tail -f logs/operation_log.txt

clean:
	@docker-compose down
