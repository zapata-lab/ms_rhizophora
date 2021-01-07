# _Rhizophora mangle_ from Yucatan

This repository contains the code and data for the population genetic analyses presented in:

    Aburto-Oropeza O, Burelo-Ramos CM, Ezcurra E, Ezcurra P, Henriquez CL,
    Vanderplank S, Zapata F. Last interglacial sea levels revealed by a relict
    inland mangrove ecosystem.

## Repository Overview

```
.
├── Analyses                # Results of the four analyses performed here
│      ├── PCA              # Results Principal Component Analysis
│      ├── Treemix          # Results Treemix
│      ├── SNAPP            # Results and xml input file for SNAPP
│      └── Structure        # Matrices and results used for population structure
│                           # analyses using Maverick
│
└──  analysis_code          # Analysis scripts to filter data and run all analyses
```

## Dependencies

The analysis code and scripts are written to work on the UCLA HPC. If you want to use the code on a different environment, please modify accordingly. In addition, for data processing and analysis, our scrips use multiple programs and specific libraries. Make sure you have all the dependencies available if you want to reproduce, extend, or use our code.
