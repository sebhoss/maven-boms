all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make display-dependency-updates - display dependency updates"
	@echo "   2. make show-plugin-updates        - shop plugin updates"
	@echo "   3. make sonar-analysis             - perform sonar analysis"

display-dependency-updates:
	@mvn versions:display-dependency-updates

display-plugin-updates:
	@mvn versions:display-plugin-updates

sonar-analysis:
	@mvn sonar:sonar -Dsonar.host.url=http://localhost:59000 -Dsonar.jdbc.url=jdbc:postgresql://localhost:59100/sonar

