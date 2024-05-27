# AI Planning Domain Modelling Assistance Tests

This repository includes a collection of flawed AI planning domains which are intended to comprehensively test the error detection and diagnosis abilities of a domain parser. Most domains have a PDDL and HDDL version. There are some additional HDDL domains to test domain errors specific to hierarchical AI planning. 

For an overview of which domains have been tested on which software, refer to the following paper:

@InProceedings{Sleath2023PossibleModelingErrors,
  author     = {Kayleigh Sleath and Pascal Bercher},
  title      = {Detecting AI Planning Modelling Mistakes –-- Potential Errors and Benchmark Domains},
  booktitle  = {Proceedings of the 20th Pacific Rim International Conference on Artificial Intelligence (PRICAI 2023)},
  year       = {2023},
  pages      = {448--454},
  publisher  = {Springer}
}

Note however that some of the undetected (potential) errors could be recognized (by the tested software) by the time you are reading this. Furthermore, note that the repository as you see it now might have evolved substantially compared to the one as it looked like when used for the above paper. So, if you are interested in a snapshot of the domains and problems as they were available and used for the above paper, please instead visit:

https://zenodo.org/records/8249690

@Misc{Sleath2023ExperimentalData,
  author       = {Kayleigh Sleath and Pascal Bercher},
  title        = {Experimental Results for the PRICAI 2023 Paper ``Detecting AI Planning Modelling Mistakes -- Potential Errors and Benchmark Domains''},
  year         = {2023},
  copyright    = {Creative Commons Attribution 4.0 International},
  doi          = {10.5281/zenodo.8249689},
  publisher    = {Zenodo}
}

Most of the domain and problem files in our repository are altered versions of an airport PDDL file for the AIPS2000 Planning Competition, which was written by Sebastian Trueg. These files have been greatly shortened into minimal examples of a working HDDL and PDDL domain and problem file, which are stored in the baseDomains folder.

These domains were then altered to include various errors or potential errors. All of the domains run on the same problem file (either the 'PDDL-problem' or 'HDDL-problem'). 

To be more precise, for the paper mentioned above, *all* domains and problems were deviates from that domain. As time progressed, the repository grew and further flawed models were added. They were also added according to what's wrong.

It is suggested that syntax errors should cause a parser to throw an error, while potential semantics errors should provide the modeller only with a warning message. We do however realize that in some cases this differentiation might be not as clear. Yet we hope that this repository helps to improve the capabilities of parsers for PDDL and HDDL files.

If anybody wants to add additional test cases, please do so! 
(Add yourself/your team as author in the header of the respective files.)

Just send a pull request! (Or drop an email to Pascal)