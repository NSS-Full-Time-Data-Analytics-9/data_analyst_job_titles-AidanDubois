--1-----------------
select count(*)
from data_analyst_jobs;
--2--------------------
select *
from data_analyst_jobs
limit 10;
--3--------------------
select count(days_since_posting),location
from data_analyst_jobs
WHERE location= 'TN' 
group by location;
---3--------------------
select count(days_since_posting),location
from data_analyst_jobs
WHERE location= 'KY' 
group by location;
--4-----------------------
select title,star_rating,location
from data_analyst_jobs
where location='TN' and (star_rating >'4')
group by title,star_rating,location;
--5-------------------------
SELECT *
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;
--6------------------------------
SELECT location,avg(star_rating) AS star_rate
FROM data_analyst_jobs
WHERE data_analyst_jobs.star_rating IS NOT NULL
GROUP BY location 
ORDER BY star_rate DESC;
--7----------------------------------
SELECT count (DISTINCT title)
from data_analyst_jobs;
--8---------------------------------
select count(distinct title) AS unique_jobs,location
from data_analyst_jobs
where location='CA'
group by location;
--9---------------------------------------
select company,avg(star_rating),review_count
FROM data_analyst_jobs
where data_analyst_jobs.star_rating IS NOT NULL 
AND company IS NOT NULL
and (review_count >'5000')
group by company,review_count;
--10---------------------------------------
select company,avg(star_rating) AS star_rating,review_count
FROM data_analyst_jobs
where data_analyst_jobs.star_rating IS NOT NULL 
AND company IS NOT NULL
and (review_count >'5000')
group by company,review_count
ORDER BY star_rating desc,data_analyst_jobs.review_count desc;
--11------------------------------------------
select count(title)
from data_analyst_jobs
where title LIKE '%Analyst';
--12--------------------------------------------
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' and title NOT ILIKE '%Analytics%';
--bonus--
select skill,days_since_posting,company,title 
from data_analyst_jobs
where days_since_posting='21' AND skill IS NOT NULL
							AND skill ILIKE '%SQL%'
