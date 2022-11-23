-- Chapter 4 Examples 
-- Sales Order Database 
-- Show all the information on our employees
USE SalesOrdersExample
select * from Employees
-- Show a list of cities where vendors are located in alphabetical order and include the names of vendors
select VendCity as City, VendName as Vendor_Name 
from Vendors
ORDER BY City ASC

-- Entertainment Agency Database
USE EntertainmentAgencyModify
-- Get the names of all agents and phone numbers and list them in last name/first name order
select AgtFirstName, AgtLastName, AgtPhoneNumber 
from Agents
ORDER BY AgtFirstName ASC

select AgtFirstName, AgtLastName, AgtPhoneNumber 
from Agents
ORDER BY AgtLastName ASC

-- Get a list on all of the engagements
select * from Engagements

-- List engagements and their associated start dates. Sort the records by date in descending order and by 
-- Engagement in ascending order
select * from Engagements
ORDER BY StartDate DESC

select * from Engagements
ORDER BY EndDate ASC

-- School Scheduling Database
USE SchoolSchedulingModify
-- Show a list of all the subject offered. 
select DISTINCT(SubjectName) from Subjects
-- What kind of titles are associated with our faculty?
select DISTINCT(Title) from Faculty
-- List the names and phone numbers of all our staff, and sort them by last name and first name
select StfFirstName, StfLastname, StfPhoneNumber from staff
ORDER BY staff.StfFirstName ASC
select StfFirstName, StfLastname, StfPhoneNumber from staff
ORDER BY staff.StfLastname ASC

-- Bowling League Database 
USE BowlingLeagueModify
-- List all teams in alphabetical order 
select * from Teams
ORDER BY TeamName ASC
-- Get all bowling score information for members
select * from Bowler_Scores
-- Get list of bowlers and their address and sort it in alphabetical order
select BowlerFirstName + ' ' + BowlerLastName as Name, BowlerAddress as Address, BowlerCity as City, BowlerZip as Zip
from Bowlers
ORDER BY Name ASC

-- Recipes Database 
USE RecipesExample
-- Show me a list of all ingredients we keep track of
SELECT DISTINCT(IngredientName) as Indgredients FROM Ingredients
-- Show me all the main recipe information and sort it by name of the recipe in alphabetical order 
SELECT * from Recipes
ORDER BY RecipeTitle ASC