# Claude Code Settings

My personal [Claude Code](https://claude.ai/claude-code) settings — permissions, status line, and safety guardrails.

## Install

```bash
git clone https://github.com/YOUR_USERNAME/claude-settings
cd claude-settings && bash install.sh
```

This copies `settings.json` to `~/.claude/settings.json` (backs up any existing file first).

## Update

After changing `settings.json` and pushing:

```bash
cd claude-settings && git pull && bash install.sh
```

## What's configured

### Permission mode

Uses `acceptEdits` — file reads, writes, and edits are auto-approved. No more "can I edit this file?" prompts.

### Auto-approved commands

Git (status, diff, log, stash, checkout, branch, commit, add), npm/npx/node, python3, ls, curl, gh CLI, and browser automation tools.

### Blocked commands

These are hard-denied — Claude cannot run them even if asked:

- `git push --force`
- `git reset --hard`
- `git clean`
- `git branch -D`
- `git checkout .` / `git restore .`
- `rm -rf`

### Prompted commands

`git push` (non-force) prompts for approval once per session.

### Status line

Shows `repo-name [branch]` in the Claude Code status bar.
