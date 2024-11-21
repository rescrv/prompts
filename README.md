Prompt Library
==============
    
Licensed under the Creative Commons Attribution-ShareAlike License.
    
Creative Commons Atribution licenses available upon request.

Overview
--------

This repository contains a collection of Modelfiles for Ollama.  The available types of Modelfiles
are:

- metaprompting:  Prompts that critique other prompts.
- review:  Prompts that review research or software engineering ideas.
- utility:  Miscellaneous prompts that don't fit into other categories.
- writing:  Prompts that critique or edit writing.  These prompts take CONTEXT and NEW PARAGRAPH as
  input.

Modelfiles
----------

- **recreate.zsh** Create all models from the Modelfiles in this repository.
- **metaprompting/be-specific** Critique a prompt for specificity.
- **metaprompting/be-specific-decider** Critique a prompt for specificity (decider variant).
- **metaprompting/metaprompt** A combinator to evaluate a prompt as if it is both system and user prompt.
- **metaprompting/provide-context** Critique a prompt for background and context.
- **metaprompting/provide-context-decider** Critique a prompt for background and context (decider variant).
- **review/grad-student** Review research ideas as if the AI is a grad student.
- **review/principle** Review research ideas as if the AI is a principle engineer.
- **utility/problem-solver** Walk through the problem solving process to solve a problem.
- **writing/copy-decider** Decide if NEW PARAGRAPH needs copy editing given CONTEXT.
- **writing/copy-explainer** Explain ways to copy edit NEW PARAGRAPH given CONTEXT.
- **writing/copy-straight** Copy edit NEW PARAGRAPH given CONTEXT.
- **writing/line-decider** Decide if NEW PARAGRAPH needs line editing given CONTEXT.
- **writing/line-explainer** Explain ways to line edit NEW PARAGRAPH given CONTEXT.
- **writing/line-straight** Line edit NEW PARAGRAPH given CONTEXT.
- **writing/skim-flow** Critique ways the text may be misunderstood by people who skim NEW PARAGRAPH.
- **writing/skim-flow-decider** Decide if there is a way NEW PARAGRAPH may be misunderstood.
- **writing/tone-decider** Decide if NEW PARAGRAPH needs adjustments to tone given CONTEXT.
- **writing/tone-explainer** Explain ways to change the tone of NEW PARAGRAPH to match CONTEXT.
- **writing/tone-straight** Adjust NEW PARAGRAPH to change its tone to match CONTEXT.
- **writing/tutor** Provide feedback on writing.
