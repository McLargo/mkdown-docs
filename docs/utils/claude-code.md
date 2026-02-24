# Claude Code

Claude Code is an [AI code agent](./ai-code-agents.md) developed by Anthropic.
It is designed to assist developers in writing code. By default, Claude Code is
a copilot-like agent, but it can be extended to be an autonomous agent with
small effort. As soon as you give context to Claude Code for your project, you
will start generating better code and suggestions.

Claude configuration are text files stored in `.claude` folder in the root of
the project, and they are used to set the system prompt, the skills and the
tools that Claude Code can use (Claude Code provides a wide range of
[tools](https://code.claude.com/docs/en/settings#tools-available-to-claude).)

Think of it as an onboarding document for a new teammate, except the teammate is
Claude.

## Installation and getting started

The world of code agents is still new and it changes very fast, so review the
official [documentation](https://code.claude.com/docs/en/overview#get-started)
for the latest updates. What I did at the time of writing this document, was the
following:

- install Claude Code in your repository
- login with your Claude account
- set VS Code extension
- execute `/init` command to initialize the configuration files
- set the Claude model you want to use in Claude Code (there is one set by
  default, but you can change it)

## Extend Claude Code

The basic is done, but to get the most out of Claude Code, you can
[extend](https://code.claude.com/docs/en/features-overview#overview) its
capabilities by adding skills, commands and agents.

- CLAUDE.md: persistent context for the agent, loaded in every conversation. Use
  it for project convention, coding standards, etc.
- Skills: instructions and workflows that Claude Code can use. You can build on
  your own or install skills from the marketplace.
- Subagents: isolated agent that run separately but are orchestrated by the main
  agent.
- Agents teams: multiple agents working together to achieve a common goal.
- MCP: connection to external services.
- Hooks: deterministic script that runs on events. No LLM involved.

## Layers

Claude Code uses
[scopes](https://code.claude.com/docs/en/settings#available-scopes) to determine
which configuration to use.

- Managed: system level, for configuration across all teams and projects.
- User: `~/.claude/` folder, for user specific configuration.
- Project: `.claude/` folder in the root of the project, for project specific
  configuration.
- Local: `.claude/*.local.* files` in the root of the project, for local
  configuration that should not be shared with the team. Remember to add it to
  .gitignore.

But features can be defined in any scope, so let's see how Claude Code handle
layers:

- CLAUDE.md: all layers are merged together.
- Skills and subagents: overridden by name. Plugins skills contain namespace to
  avoid conflicts.
- MCP: overridden by name.
- Hooks: merged together, triggered by events independently of the layer they
  are defined.

Remember that the more context you give to Claude Code, the better. But be aware
of the cost of the tokens, and try to find the right balance. Context is sent on
each request, so it can get expensive if you have a lot of context.

## Tips for new users

- Be clear on your prompts.
- Break into smaller steps when required.
- Ask Claude to explore first.
- Use `/` for to show help for commands and tools.

## Claude Code specific concepts

- plugin: either developed by Anthropic, third-party or yourself, that can be
  used by Claude Code to enhance its capabilities. Example: a plugin to analyze
  code coverage reports and give suggestions to improve it.
- marketplace: place where you can find and install skills and tools for Claude
  Code. You can also create your own skills and tools and share them in the
  marketplace. Marketplace can be public or private (for your organization
  only).

## References

- [AI code guide](https://github.com/automata/aicodeguide?tab=readme-ov-file)
- [Building a Personal CTO Operating System with Claude Code](https://obie.medium.com/building-a-personal-cto-operating-system-with-claude-code-b3fb9c4933c7)
- [How Claude Code Works](https://code.claude.com/docs/en/how-claude-code-works)
