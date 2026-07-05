-- Claim frequency by area
SELECT
    Area,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY Area
ORDER BY Area;
--
--Claim frequency by region
SELECT
    Region,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY Region
ORDER BY Region;
--
--Claim frequency by driver age band
SELECT
    DriverAgeBand,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY DriverAgeBand
ORDER BY DriverAgeBand;
--
--Claim frequency by vehicle age band
SELECT
    VehicleAgeBand,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY VehicleAgeBand
ORDER BY VehicleAgeBand;
--
--Claim frequency by vehicle brand
SELECT
    VehBrand,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY VehBrand
ORDER BY VehBrand;
--
--Claim frequency by vehicle gas type
SELECT
    VehGas,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY VehGas
ORDER BY VehGas;
--
--Claim frequency by bonus malus band
SELECT
    BonusMalusBand,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY BonusMalusBand
ORDER BY BonusMalusBand;
--
--Claim frequency by population density band
SELECT
    PopulationDensityBand,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY PopulationDensityBand
ORDER BY PopulationDensityBand;
--
--Claim frequency by vehicle power
SELECT
    VehPower,
    SUM(ClaimNb) AS total_claims,
    SUM(Exposure) AS total_exposure,
    SUM(ClaimNb) * 1.0 / SUM(Exposure) AS claim_frequency
FROM policies
GROUP BY VehPower
ORDER BY VehPower;