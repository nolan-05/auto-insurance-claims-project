## Auto Insurance Claim Frequency Model

## Project Overview
This project calculates expected claim frequency using insurance policy data. The goal of this project is to explore how claim frequency differs across driver, vehicle, geographic and rating variables, and then fitting a preliminary Poisson model with the findings, using exposure as an offset. 

## Dataset 
This project uses the French Motor Third-Party Liability `freMTPL2freq` dataset available for download on OpenML for educational purposes. Find at https://www.openml.org/search?type=data&sort=runs&id=41214

Key variables from this dataset include: 
- `ClaimNb`: number of claims
- `Exposure`: policy exposure
- `DrivAge`: driver age
- `VehAge`: vehicle age
- `BonusMalus`: driver rating/history variable
- `VehBrand`, `VehGas`, `VehPower`
- `Area`, `Region`, `Density`

Key variables created in this project include: 
- 'VehicleAgeBand': vehicle ages banded into particular ranges for analysis
- 'DriverAgeBand': driver ages banded into particular ranges for analysis
- 'BonusMalusBand': bonus malus ratings banded into ranges for analysis
- 'PopulationDensityBand': population densities banded into particular ranges for analysis

## Methods
This project includes: 
- Data loading and validation
- Missing value checks
- Exposure and claim count checks
- Variable banding for driver age, vehicle age, BonusMalus, and population density
- SQL grouped claim frequency analysis
- Poisson regression frequency model using log exposure as an offset
- Model interpretation, assumptions, limitations, and conclusions

## Tools used for creation of the project
- Python: main coding language
- Pandas: for data analysis
- NumPy: for data analysis
- SQL & SQLite: for calculating grouped claim frequencies and displaying in cleaner tables than python
- Statsmodels: used for fitting the model
- JupyterHub: used for storing the project information 

## Key Findings
- BonusMalus showed the strongest association with expected claim frequency.
- Driver age and vehicle age showed strong associations with expected claim frequency.
- Population density showed a moderate association with expected claim frequency.
- Vehicle brand and gas type showed some minor associations.
- Area and Region caused overlapping issues with PopulationDensityBand, and so were excluded.
- VehPower had no association found, and so was excluded to keep the model simpler and less computationally intensive.

## Limitations
This is a preliminary claim frequency model only. It doesn't model claim severity, total loss cost, or final insurance pricing, only claim frequency. The model also relies on Poisson assumptions (such as all variables being independent), banded variables (which can reduce accuracy), and associations rather than causal conclusions.

## Files
- `notebooks/`: main Jupyter notebook
- `sql/`: SQL queries used for grouped claim frequency analysis
- `data/`: dataset storage, if included locally

## How to Run
1. Install the required Python packages.
2. Open the notebook in Jupyter or VS Code.
3. Run the cells from top to bottom.
4. The notebook loads the data, performs analysis, runs SQL grouped summaries, fits the Poisson model, and displays conclusions.