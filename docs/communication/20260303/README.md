# Communication


- Course date: 2026-03-03

## Workflow

<!-- markdownlint-disable MD013 --><!-- Mermaid cannot be split up over lines, hence will break 80 characters per line -->

```mermaid
flowchart TB
    naiss_newletter[NAISS newsletter]
    registration_form[Registration form]
    welcome_email_step_2_hpc[2. Welcome email step 2, use HPC]
    welcome_email_step_last_steps_no_hpc[3c. Welcome email, last steps, no HPC]
    welcome_email_step_last_steps_course_project[3a. Welcome email, last steps, course project]
    welcome_email_step_last_steps_own_project[3b. Welcome email, last steps, own project]
    reminder_in_morning_hpc[4a. Reminder in the morning, HPC]
    reminder_in_morning_no_hpc[4c. Reminder in the morning, no HPC]

    naiss_newletter -.-> |Informs| registration_form
    registration_form --> |Registered to course, HPC| welcome_email_step_2_hpc
    registration_form --> |Registered to course, no HPC| welcome_email_step_last_steps_no_hpc

    welcome_email_step_2_hpc --> |Registered in SUPR, course project| welcome_email_step_last_steps_course_project
    welcome_email_step_2_hpc --> |Registered in SUPR, own project| welcome_email_step_last_steps_own_project


    welcome_email_step_last_steps_course_project --> |Accepted NAISS project, can login| reminder_in_morning_hpc
    welcome_email_step_last_steps_own_project --> |Can login| reminder_in_morning_hpc
    welcome_email_step_last_steps_no_hpc ---> reminder_in_morning_no_hpc
```
<!-- markdownlint-enable MD013 -->

## Emails

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Date                  |Description
----------------------|------------------------------------------------------------------------
2026-01-09            |[Registration form](registration_form.md)
2026-01-09            |[NAISS newsletter, first announcement](newsletter_first_announcement.md)
2026-01-09 and onward |[Welcome email](welcome_email.md)
2026-03-03            |[Reminder in the morning](reminder_in_morning.md)

<!-- markdownlint-enable MD013 -->

## Administrative action overview

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Email               |Which HPC cluster?|Name of HPC cluster|Registered in SUPR|Sent|Action
--------------------|------------------|-------------------|------------------|----|----------------------------
`pelle@uppmax.uu.se`|No HPC            |.                  |.                 |.   |Send `3c`
`pelle@uppmax.uu.se`|Course HPC        |.                  |.                 |.   |Send `2a`
`pelle@uppmax.uu.se`|Course HPC        |.                  |No                |`2a`|Wait until SUPR registration
`pelle@uppmax.uu.se`|Course HPC        |.                  |Yes               |`2a`|Send `3a`
`pelle@uppmax.uu.se`|Course HPC        |.                  |Yes               |`3a`|Done
`pelle@uppmax.uu.se`|Own HPC           |Rackham            |.                 |.   |Send `3b`
`pelle@uppmax.uu.se`|Own HPC           |Rackham            |.                 |`3b`|Done
`pelle@uppmax.uu.se`|No HPC            |.                  |.                 |`3c`|Done

<!-- markdownlint-enable MD013 -->
