generate-api-ref:
	npx redoc-cli bundle openapi/openapi.yaml
	mv redoc-static.html docs/index.html

generate-sdk:
	openapi-generator generate -i ./openapi/openapi.yaml -g go -o ./sdk/v1
