# AI Planning Domain Modelling Assistance Tests

This repository includes a collection of flawed AI planning domains which are intended to comprehensively test the error detection and diagnosis abilities of a domain parser. Most domains have a PDDL and HDDL version. There are some additional HDDL domains to test domain errors specific to hierarchical AI planning. 

For a list of the syntax errors and potential semantics errors tested, see pg 19 and 20 of the 'modelling-assistance-in-AI-planning-report'.

The domain and problem files are currently altered versions of an airport PDDL file for the AIPS2000 Planning Competition, which was written by Sebastian Trueg. These files have been greatly shortened into a minimal example of a working HDDL and PDDL domain and problem file, which are stored in the baseDomains folder. 

These domains were then altered to include various errors or potential errors. All of the domains run on the same problem file (either the 'PDDL-problem' or 'HDDL-problem'). 

It is suggested that syntax errors should cause a parser to throw an error, while potential semantics errors should provide the modeller with a warning message.

The 'results' folder contains images of the error messages provided by Planning.Domains, the PDDL VSCode plugin, Fast Downward, PANDA, Lilotane, and Hypertension to these domains as of testing in May 2023. If no image is included for an error or potential error, it is because the software did not detect it. For summaries of these results, see pg 22 and 23 of the 'modelling-assistance-in-AI-planning-report'.
