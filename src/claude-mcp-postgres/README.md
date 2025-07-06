
# (Claude Code) Postgres MCP Server (claude-mcp-postgres)

Configures a Postgres MCP server for Claude Code

## Example Usage

```json
"features": {
    "ghcr.io/nrf110/devcontainer-features/claude-mcp-postgres:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Specific version of the postgres-mcp-server package to use | string | latest |
| name | Name of the server in the MCP config | string | postgres |
| db_host | Hostname for the Postgres connection | string | localhost |
| db_port | Port for the Postgres connection | string | 5432 |
| db_name | Database name for the Postgres connection | string | postgres |
| db_user | Username for the Postgres connection | string | postgres |
| db_password | Password for the Postgres connection | string | postgres |
| db_ssl | Use SSL for the Postgres connection | boolean | true |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/nrf110/devcontainer-features/blob/main/src/claude-mcp-postgres/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
