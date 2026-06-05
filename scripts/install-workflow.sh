#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-$(pwd)}"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"

if [ ! -d "$TARGET_DIR" ]; then
  echo "Creating target directory: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
fi

echo "Installing Salesforce Codex MCP workflow into: $TARGET_DIR"

mkdir -p "$TARGET_DIR/.codex/agents"
mkdir -p "$TARGET_DIR/.codex/skills"
mkdir -p "$TARGET_DIR/docs"
mkdir -p "$TARGET_DIR/docs/refactoring/rapports"
mkdir -p "$TARGET_DIR/.github/ISSUE_TEMPLATE"
mkdir -p "$TARGET_DIR/scripts"

if [ -f "$TARGET_DIR/AGENTS.md" ]; then
  BACKUP_FILE="$TARGET_DIR/AGENTS.md.backup.$TIMESTAMP"
  cp "$TARGET_DIR/AGENTS.md" "$BACKUP_FILE"
  echo "Backed up existing AGENTS.md to: $BACKUP_FILE"
fi

cp "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"

if [ -f "$TARGET_DIR/.codex/config.toml" ]; then
  echo "Preserving existing .codex/config.toml"
else
  if [ -f "$SOURCE_DIR/.codex/config.toml" ]; then
    cp "$SOURCE_DIR/.codex/config.toml" "$TARGET_DIR/.codex/config.toml"
    echo "Created .codex/config.toml from template"
  fi
fi

cp "$SOURCE_DIR/.codex/config.toml.example" "$TARGET_DIR/.codex/config.toml.example"

cp -R "$SOURCE_DIR/.codex/agents/." "$TARGET_DIR/.codex/agents/"
cp -R "$SOURCE_DIR/.codex/skills/." "$TARGET_DIR/.codex/skills/"
cp -R "$SOURCE_DIR/docs/." "$TARGET_DIR/docs/"
cp "$SOURCE_DIR/.github/pull_request_template.md" "$TARGET_DIR/.github/pull_request_template.md"
cp "$SOURCE_DIR/.github/ISSUE_TEMPLATE/salesforce-ticket.md" "$TARGET_DIR/.github/ISSUE_TEMPLATE/salesforce-ticket.md"
cp "$SOURCE_DIR/scripts/install-workflow.sh" "$TARGET_DIR/scripts/install-workflow.sh"

chmod +x "$TARGET_DIR/scripts/install-workflow.sh"

echo ""
echo "Installation complete. Next steps:"
echo "1. Update placeholders in AGENTS.md, docs, and .codex/config.toml.example"
echo "2. Review .codex/config.toml (project-specific values)"
echo "3. Start first ticket in PLAN MODE with salesforce-orchestrator"
echo "4. Use the Apex Refactoring Workflow for Apex cleanup tasks"
echo "5. Require explicit ACT MODE and deployment approvals"
