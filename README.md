# Pewlett Hackard Analysis

## Overview of Analysis: 
Generate a database that will help the company *Pewlett Hackard (PH)* create a retirement package for eligible employees and secondly determine which positions will need to be filled. 
### Purpose:
Perform employee research using PostgreSQL that will help the company to determine who is retiring and how many positions will need to be filled. Also looking to the future, a list of employees suitable for a mentorship program has been requested. 

## Results: 
After scripting queries using *“pgAdmin”* to setup a database in PostgreSQL from CSV files, provided by *PH*, we were able to join employee information into new table sets based on certain criteria’s. See below image for snippet of query.

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/query%20script.PNG)

1.	One of the first bit of information to collect was the number of employees eligible for the retirement packaged. It was determined that any employee born between January 1st, 1952 and December 31st, 1955 fit this criteria. (See image for total number of employees.) 
  -	For a breakdown of eligible employees and their work information, click on the below link *” Retirement Titles”*.

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/Number%20of%20employees%20eligible%20for%20retirement_retirement_titles.PNG)

[Retirement Titiles](https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)

2.	Although the total number of employees that qualified for the retirement package was calculated (see above image for total). When looking through the employee information, it became clear that several of the employees were listed multiple time due to title changes. 
  -	The next step was to generate another table for the true value based on most recent titles. (see below image for new total)

![](https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/Number%20of%20employees%20eligible%20for%20retirement_unique_titles.PNG)

3.	Once this information was tabulated, an alternate table set was developed to find out how many employees for each position would potentially need to be filled. 
  -	This was done by counting the qualified employees and their current titles within the company. (See image below for exact number by department.)

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/retiring%20titles.PNG) 

4.	After seeing numerous eligible employees for a retirement package (~31%), it was determined that *PH* would need to start a *” Mentorship Program”* in order to avoid any possible gaps in working knowledge for current employees and future employees.  
  -	An additionally table was made (see below image) to determine how many employees born between January 1st, 1965 and December 31st, 1965 would be considered for the         mentorship program.
  -	Click on the below link for employee information regarding *Mentorship Program*.

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship%20table.PNG)

[Mentorship Program](https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv)

## Summary:
1.	How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  -	With a large portion of employees eligible for the retirement package, it is imperative for *PH* to fill the vacancy. Luckily not everyone is expected to retire all at the       same time. 
  -	A new query was made to find out the number of eligible employees by titles for each year, starting with the oldest and most likely to retire. This first surge from the        “silver tsunami” will give the company an idea of how many roles will need to be filled over the next five years and into future. 

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/count%20of%20retirees%20in%2052.PNG) 

2.	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - Based on the total number of qualified employees in the departments to mentor future PH employees (see below image for total), the initial answer is no. 
  -	If *PH* expanded the birth data criteria from a single year (1965) to four years (1962-1965) the number of qualified employees for the mentorship program exponentially grows     and will be better suited to fulfill the requirements need by Pewlett Hackard. (See below image for new total)

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/Number%20of%20employees%20eligible%20for%20mentorship%20program.PNG)

![]( https://github.com/Apollo619/Pewlett-Hackard-Analysis/blob/main/Resources/Number%20of%20employees%20eligible%20for%20mentorship%20expanded.PNG)
