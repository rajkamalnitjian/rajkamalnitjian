#!/usr/bin/env bash
# Run once after `gh auth login`. Safe to re-run.
set -euo pipefail
R=rajkamalnitjian/careermatch-backend
gh repo edit "$R" \
  --description "Hinge-style dating backend for verified professionals: 12 Spring Boot microservices, event-driven, Java 21" \
  --add-topic java --add-topic spring-boot --add-topic microservices --add-topic event-driven \
  --add-topic maven --add-topic kafka --add-topic backend --add-topic dating-app --add-topic rest-api
echo "Updated topics and description for $R"
echo
echo "Your repos (add a description and topics to each, then pin up to 6 on your profile):"
gh repo list rajkamalnitjian --limit 100 --json name,description,visibility,isFork,pushedAt \
  --jq '.[] | "\(.visibility)\tfork=\(.isFork)\t\(.name)\t\(.description // "NO DESCRIPTION")"'
