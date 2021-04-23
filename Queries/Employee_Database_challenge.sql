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

SELECT * FROM retirement_info; 

-- New table for retiring based on birth date
Select ut.emp_no, ut.first_name, ut.last_name,
	   e.birth_date, ut.titles
INTO retiring_info	
FROM unique_titles AS ut
JOIN employees AS e
ON (ut.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.birth_date;

SELECT * FROM retiring_info;


-- Counting number of titles based on 1952 retiring info
SELECT COUNT(ri.titles) AS "count", ri.titles
INTO retiring_info_52
FROM retiring_info AS ri
WHERE (ri.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
GROUP BY ri.titles
ORDER BY count DESC;


SELECT * FROM retiring_info_52;


-- Counting number of titles based on 1953 retiring info
SELECT COUNT(ri.titles) AS "count", ri.titles
INTO retiring_info_53
FROM retiring_info AS ri
WHERE (ri.birth_date BETWEEN '1953-01-01' AND '1953-12-31')
GROUP BY ri.titles
ORDER BY count DESC;

SELECT * FROM retiring_info_53;


-- Counting number of titles based on 1954 retiring info
SELECT COUNT(ri.titles) AS "count", ri.titles
INTO retiring_info_54
FROM retiring_info AS ri
WHERE (ri.birth_date BETWEEN '1954-01-01' AND '1954-12-31')
GROUP BY ri.titles
ORDER BY count DESC;

SELECT * FROM retiring_info_54;

-- Counting number of titles based on 1955 retiring info
SELECT COUNT(ri.titles) AS "count", ri.titles
INTO retiring_info_55
FROM retiring_info AS ri
WHERE (ri.birth_date BETWEEN '1955-01-01' AND '1955-12-31')
GROUP BY ri.titles
ORDER BY count DESC;

SELECT * FROM retiring_info_55;

-- Counting numbe of mentorship employees by title
SELECT COUNT(me.titles) AS "count", me.titles
INTO mentorship_count
FROM mentorship_eligibilty AS me
GROUP BY me.titles
ORDER BY count DESC;

SELECT * FROM mentorship_count;

-- Find the eligible employees for mentorship
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.titles
INTO mentorship_expanded
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_expanded;

