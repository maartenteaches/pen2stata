# Import PEN data into Stata

## Description
CIFOR's Poverty and Environment Network (PEN) global dataset collected uniform socio-economic and environmental data at household and village levels in rural areas of developing countries. It comprise of 8,301 households in 334 villages located in 24 countries in Asia, Africa and Latin America.

This set of .do files import the .csv files into Stata, change numeric missing value codes in Stata missing value codes, adds variable and value labels, and notes containing the text the questions.

## Requirements and use

These .do files require Stata 13.1 or higher. 

To use these .do files you

1. fork this repository
2. download all the raw files form the PEN project from https://doi.org/10.17528/CIFOR/DATA.00021 into that directory
3. In main.do change line 3 (`cd "D:\Mijn documenten\projecten\pen\"`) to where your directory is
4. run main.do 

After that the Stata files will be in the sub directory called "processed". 