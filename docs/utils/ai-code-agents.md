# AI code Agents

AI is a reality, whatever we like or not. And it will transform the future of
professional software development as we know it. We must embrace they change,
learn how to use it, adapting our processes to take advantage.

## What is a AI code agent?

First thing to clarify is that code agents are more than a chatbot, they are a
AI-powered tool using LLM (large-language models) that can perform complex
development task, like:

- Repository analysis: analyze the codebase, identify dependencies, generate
  documentation and create diagrams.
- Automatic debugging and fixing: identify bugs, performance issues, security
  vulnerabilities and automatically fix them.
- Analyze code: identify code smells, suggest improvements, enforce coding
  standards and patterns.
- Generate new features: given a feature request, generate the code to implement
  it.
- Analyze test coverage: identify untested code, generate tests automatically,
  review current test cases and suggest new test cases.

There are two types of code agents:

- Copilot-like agents: designed to assist developers in writing code, providing
  suggestions, completing code snippets, generating code based on natural
  language descriptions (like User Stories).
- Autonomous agents: designed to perform complex development tasks autonomously
  without human intervention, such as planning, writing code, writing test,
  refactoring, debugging and more.

Devin AI, [Claude Code](./claude-code.md), Cursor, GitHub Copilot are examples
of code agents.

## Key concepts

Let's review some concepts that are important to understand how code agents
work:

- **models**: code agents use LLM models to generate code. You can choose the
  model you want to use, depending on your needs and budget.
- **tool calling**: is when the code agent executes commands, to know more of
  the context to know exactly what to do.
- **system prompt**: used to set the role of the agent, giving instructions and
  defining the context.
- **user prompt**: the specific task to be performed.
- **skills**: by default, code agents know how to write code. But they can be
  extended to enhance their capabilities. Example: a series of checklist when
  reviewing the code.
- **context window**: agent short memory. It contains all the information that
  the agent can use to perform the task. The more context you can provide, the
  better results you will get. But it is limited, so once you reach the limit,
  agent will start forgetting the oldest information.
- **RAG (Retrieval Augmented Generation)**: is a technique that allows the agent
  to retrieve relevant information from external sources (like documentation,
  codebase, etc) to generate more accurate and relevant responses.
- **orchestrator**: inside the agent, this component analyzes the task and
  directs the flow of execution, deciding when to call tools, when to retrieve
  information, when to generate code, etc.
- **workflows**: step by step process to perform a task. Example: to build a new
  feature, you can define the following workflow:
    1. analyze the user story
    2. plan the implementation, breaking down the user story into smaller tasks
    3. generate code for each task
    4. generate tests for each task
    5. review the code and tests
    6. commit and push the code to the repository
    7. deploy the code.
- **MCP (Model-Connector-Protocol)**: is a standard protocol that allows any AI
  agent to connect to other tools (github, slack...), avoiding building custom
  connector for each tool. Tools that implements MCP that can be used by any
  agent that support MCP.

## How a code agent works?

Whenever you give a code agent a prompt, it first analyze the task and gather
context using tools. Then, actions will be taken and finally results is
verified. The process is iterative, agent can execute multiple iterations until
the task is completed. The orchestrator will decide when to call the tools and
when to generate code. While models will do the reasoning and generation, tools
can do other tasks to gather more context and execute actions (like search
files, online, do file operations...).

## References

- [AI code guide](https://github.com/automata/aicodeguide?tab=readme-ov-file)
- [Building a Personal CTO Operating System with Claude Code](https://obie.medium.com/building-a-personal-cto-operating-system-with-claude-code-b3fb9c4933c7)
- [How Claude Code Works](https://code.claude.com/docs/en/how-claude-code-works)
