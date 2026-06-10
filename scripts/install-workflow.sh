#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-}"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"

print_usage() {
  echo "Salesforce Codex Workflow Installer"
  echo ""
  echo "Baby steps:"
  echo "1. Pick your Salesforce DX project folder."
  echo "2. Run: ./scripts/install-workflow.sh /path/to/your-sfdx-project"
  echo "3. Open the target project."
  echo "4. Replace placeholders."
  echo "5. Start with salesforce-orchestrator."
}

if [ -z "$TARGET_DIR" ]; then
  print_usage
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Creating target directory: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
fi

echo "Stage 1/6 - Preparing installation target"
echo "Target: $TARGET_DIR"

mkdir -p "$TARGET_DIR/.codex/agents"
mkdir -p "$TARGET_DIR/.codex/skills"
mkdir -p "$TARGET_DIR/docs"
mkdir -p "$TARGET_DIR/docs/refactoring/rapports"
mkdir -p "$TARGET_DIR/.github/ISSUE_TEMPLATE"
mkdir -p "$TARGET_DIR/scripts"

echo "Stage 2/6 - Backing up existing files if needed"

if [ -f "$TARGET_DIR/AGENTS.md" ]; then
  BACKUP_FILE="$TARGET_DIR/AGENTS.md.backup.$TIMESTAMP"
  cp "$TARGET_DIR/AGENTS.md" "$BACKUP_FILE"
  echo "Backed up existing AGENTS.md to: $BACKUP_FILE"
fi

echo "Stage 3/6 - Copying workflow files"

cp "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$SOURCE_DIR/.codex/config.toml.example" "$TARGET_DIR/.codex/config.toml.example"
cp -R "$SOURCE_DIR/.codex/agents/." "$TARGET_DIR/.codex/agents/"
cp -R "$SOURCE_DIR/.codex/skills/." "$TARGET_DIR/.codex/skills/"
cp -R "$SOURCE_DIR/docs/." "$TARGET_DIR/docs/"
cp "$SOURCE_DIR/scripts/install-workflow.sh" "$TARGET_DIR/scripts/install-workflow.sh"

if [ -f "$SOURCE_DIR/.github/pull_request_template.md" ]; then
  cp "$SOURCE_DIR/.github/pull_request_template.md" "$TARGET_DIR/.github/pull_request_template.md"
fi

if [ -f "$SOURCE_DIR/.github/ISSUE_TEMPLATE/salesforce-ticket.md" ]; then
  cp "$SOURCE_DIR/.github/ISSUE_TEMPLATE/salesforce-ticket.md" "$TARGET_DIR/.github/ISSUE_TEMPLATE/salesforce-ticket.md"
fi

echo "Stage 4/6 - Preserving config"

if [ -f "$TARGET_DIR/.codex/config.toml" ]; then
  echo "Existing .codex/config.toml preserved"
else
  echo "No .codex/config.toml found in target. Keeping only config.toml.example for manual setup."
fi

chmod +x "$TARGET_DIR/scripts/install-workflow.sh"

echo "Stage 5/6 - Installation complete"
echo "Installed:"
echo "- AGENTS.md"
echo "- .codex/config.toml.example"
echo "- .codex/agents/"
echo "- .codex/skills/"
echo "- docs/"
echo "- scripts/install-workflow.sh"
echo "- .github templates when present"

echo "Stage 6/6 - Next steps"
echo "1. Replace placeholders in AGENTS.md, docs, and .codex/config.toml.example"
echo "2. Confirm your Salesforce org alias values"
echo "3. Start with salesforce-orchestrator"
echo "4. Use the generic orchestrator prompt from docs/prompt-library.md"
