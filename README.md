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
│                           #   analyses using Maverick
│
├── bin                     # Scripts for filtering and data organization  
├── Filtered_VCFs           # Resulting VCF files after filtering
├── indivs_to_remove        # List of individuals to filter resulting from approach 1
│                           #   (this list is generated automatically running analysis_code)
├── indivs_to_remove_after_loci_removal # List of individuals to filter resulting from approach 2
│                           #   (this list is generated automatically running analysis_code)
├── params_ipyrad.txt       # parameters file for ipyrad
├── ipyrad_outfiles         # VCF file from data assembly pre-filtering
├── Popfiles                # Map individuals -> populations for different analyses
├── SPIDs                   # Skeleton for PGDSpider to create input file for Maverick
└── analysis_code          # Analysis scripts to filter data and run all analyses
```

## Dependencies

The analysis code and scripts are written to work on the UCLA HPC. If you want to use the code on a different environment, please modify accordingly. In addition, for data processing and analysis, our scrips use multiple programs and specific libraries. Make sure you have all the dependencies available if you want to reproduce, extend, or use our code.
