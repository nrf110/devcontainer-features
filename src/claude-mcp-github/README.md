
# (Claude Code) Github MCP Server (claude-mcp-github)

Configures a Github MCP server for Claude Code

## Example Usage

```json
"features": {
    "ghcr.io/nrf110/devcontainer-features/claude-mcp-github:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| name | Name of the server in the MCP config | string | github |
| url | URL for the Github server | string | https://api.githubcopilot.com/mcp |
| github_personal_access_token | Personal access token for the Github server | string | - |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/nrf110/devcontainer-features/blob/main/src/claude-mcp-github/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
