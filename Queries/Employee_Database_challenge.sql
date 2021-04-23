---------- Module 7 Challenge -----------------
-- Deliverable 1 --
SELECT e.emp_no, e.first_name, e.last_name, t.titles, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
titles

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

Select * FROM unique_titles;

-- Retrieve the # of titles from the Unique Titles table
SELECT COUNT(ut.titles) AS "count", ut.titles 
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.titles
ORDER BY count DESC;

Select * from retiring_titles;


-- Deliverable 2 --
-- Find the eligible employees for mentorship
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.titles
INTO mentorship_eligibilty
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty;