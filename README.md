# AI Planning Domain Modelling Assistance Tests

This repository includes a collection of flawed AI planning domains which are intended to comprehensively test the error detection and diagnosis abilities of a domain parser. Most domains have a PDDL and HDDL version. There are some additional HDDL domains to test domain errors specific to hierarchical AI planning. 

An overview of which domains have been tested on which software, refer to the following paper:
@InProceedings{Sleath2023PossibleModelingErrors,
  author     = {Kayleigh Sleath and Pascal Bercher},
  title      = {Detecting AI Planning Modelling Mistakes –-- Potential Errors and Benchmark Domains},
  booktitle  = {Proceedings of the 20th Pacific Rim International Conference on Artificial Intelligence (PRICAI 2023)},
  year       = {2023},
  publisher  = {Springer}
}
Note however that some of the undetected (potential) errors could be recognized (by the tested software) by the time you are reading this.


The domain and problem files are currently altered versions of an airport PDDL file for the AIPS2000 Planning Competition, which was written by Sebastian Trueg. These files have been greatly shortened into a minimal examples of a working HDDL and PDDL domain and problem file, which are stored in the baseDomains folder.

These domains were then altered to include various errors or potential errors. All of the domains run on the same problem file (either the 'PDDL-problem' or 'HDDL-problem'). 

It is suggested that syntax errors should cause a parser to throw an error, while potential semantics errors should provide the modeller with a warning message. We do however realize that in some cases this differentiation might be not as clear. Yet we hope that this repository helps improve the capabilities of parsers for PDDL and HDDL files.

If anybody wants to add additional test cases, please do so! (Add yourself/your team as author in the header of the respective files.)
Just send a pull request!
