-- Create a new table for the updated abbreviations
CREATE TABLE grupo_9.loc_descriptions	 (
    code VARCHAR(10) PRIMARY KEY,
    description VARCHAR(255)
);

-- Insert data into the new table
INSERT INTO grupo_9.loc_descriptions (code, description)
VALUES
    ('Blmngtn', 'Bloomington Heights'),
    ('Blueste', 'Bluestem'),
    ('BrDale', 'Briardale'),
    ('BrkSide', 'Brookside'),
    ('ClearCr', 'Clear Creek'),
    ('CollgCr', 'College Creek'),
    ('Crawfor', 'Crawford'),
    ('Edwards', 'Edwards'),
    ('Gilbert', 'Gilbert'),
    ('IDOTRR', 'Iowa DOT and Rail Road'),
    ('MeadowV', 'Meadow Village'),
    ('Mitchel', 'Mitchell'),
    ('Names', 'North Ames'),
    ('NoRidge', 'Northridge'),
    ('NPkVill', 'Northpark Villa'),
    ('NridgHt', 'Northridge Heights'),
    ('NWAmes', 'Northwest Ames'),
    ('OldTown', 'Old Town'),
    ('SWISU', 'South & West of Iowa State University'),
    ('Sawyer', 'Sawyer'),
    ('SawyerW', 'Sawyer West'),
    ('Somerst', 'Somerset'),
    ('StoneBr', 'Stone Brook'),
    ('Timber', 'Timberland'),
    ('Veenker', 'Veenker');

-- Insert additional data into the new table
INSERT INTO grupo_9.loc_descriptions(code, description)
VALUES
    ('Landmrk', 'Landmrk'),
    ('Greens', 'Greens'),
    ('GrnHill', 'GrnHill');

