---
tags:
  - topics
  - overview
---

# Overview of topics

```mermaid
flowchart TD
    python[[Python]]

    %% Give a white background to all nodes, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000

    subgraph sub_programming_language[Programming language]
      interpreted_language[Interpreted language]
      programming_language[Programming language]
      scripting_language[Scripting language]
      interpreter[Interpreter]
      scripts[Scripts]
      text_files[Text files]
    end
    style sub_programming_language fill:#ccf,color:#000,stroke:#fcc

    subgraph sub_programming_terms[Programming terms]
      user_input[User input]
      file_io[File I/O]
      command_line_arguments[Command-line arguments]
      variables[Variables]
      operators[Operators]
      functions[Functions]
      python_packages[Python packages]
      graphics[Graphics]
    end 
    style sub_programming_terms fill:#cfc,color:#000,stroke:#fcc

    subgraph sub_uppmax[NAISS]
      uppmax[Your HPC center]
      uppmax_modules[modules]
      uppmax_clusters[Your HPC cluster]
      text_editors[Text editors]
      x_forwarding[X-forwarding]
      remote_desktop[Remote desktop]
    end
    style sub_uppmax fill:#fcc,color:#000,stroke:#fcc

    python --> |is a| programming_language
    python --> |is a| interpreted_language
    python --> |is a| scripting_language

    programming_language --> |uses| text_files
    interpreted_language --> |has a| interpreter
    scripting_language --> |is|interpreted_language
    scripting_language --> |runs| scripts
    scripts --> |are| text_files
    scripts --> |can use| command_line_arguments

    python --> |has| python_packages
    python --> |has| variables
    python --> |has| functions
    python --> |has| operators
    functions --> |use| variables
    operators --> |work on| variables
    python_packages --> |allow| graphics
    python_packages --> |allow to use| user_input
    python_packages --> |allow to do| file_io
    python_packages --> |allow to use| command_line_arguments

    uppmax --> |has| uppmax_clusters
    uppmax_clusters --> |have| uppmax_modules
    uppmax_clusters --> |have| text_editors
    uppmax_clusters --> |allow| x_forwarding
    uppmax_clusters --> |has| remote_desktop
    uppmax_modules --> |allow the use of| python_packages
    uppmax_modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    x_forwarding --> |allows|graphics
    remote_desktop --> |allows|graphics
    
    variables ~~~ uppmax
```
