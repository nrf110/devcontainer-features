
# (Claude Code) Elasticsearch MCP Server (claude-mcp-elasticsearch)

Configures an Elasticsearch MCP server for Claude Code

## Example Usage

```json
"features": {
    "ghcr.io/nrf110/devcontainer-features/claude-mcp-elasticsearch:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Specific version of the @elastic/mcp-server-elasticsearch package to use | string | latest |
| name | Name of the server in the MCP config | string | elasticsearch |
| es_url | URL for the Elasticsearch server | string | http://localhost:9200 |
| es_api_key | API key for the Elasticsearch server | string | - |
| es_username | Username for the Elasticsearch server | string | - |
| es_password | Password for the Elasticsearch server | string | - |
| es_ca_cert | Path to the CA certificate for Elasticsearch SSL/TLS | string | - |
| es_path_prefix | Path prefix for the Elasticsearch server | string | - |
| es_version | Version of the Elasticsearch server | string | 9 |
| otel_log_level | OTel log level | string | none |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/nrf110/devcontainer-features/blob/main/src/claude-mcp-elasticsearch/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
