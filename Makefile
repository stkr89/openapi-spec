generate-api-docs:
	npx redoc-cli bundle openapi/openapi.yaml
	mv redoc-static.html docs/index.html