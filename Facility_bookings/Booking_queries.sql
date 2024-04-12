SELECT * FROM cd.facilities;

SELECT name,membercost FROM cd.facilities;

SELECT * FROM cd.facilities
WHERE  membercost>0 AND membercost IS NOT NULL;

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE  membercost>0 AND membercost IS NOT NULL AND membercost<(monthlymaintenance/50);

SELECT * FROM cd.facilities
WHERE name ILIKE '%tennis%';

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

SELECT memid,surname,firstname,joindate FROM cd.members
WHERE joindate>'09-01-2012 00:00:00';

SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10;

SELECT joindate from cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost>10;

SELECT cd.facilities.facid,SUM(slots) FROM cd.facilities
JOIN cd.bookings ON cd.bookings.facid=cd.facilities.facid
WHERE EXTRACT(MONTH FROM starttime)=09 AND EXTRACT(YEAR FROM starttime)=2012
GROUP BY cd.facilities.facid;


SELECT cd.facilities.facid,SUM(slots) FROM cd.facilities
JOIN cd.bookings ON cd.bookings.facid=cd.facilities.facid
GROUP BY cd.facilities.facid
HAVING SUM(slots)>1000
ORDER BY cd.facilities.facid;


SELECT starttime, name FROM cd.facilities
JOIN cd.bookings ON cd.bookings.facid=cd.facilities.facid
WHERE name LIKE 'Tennis%' AND DATE(starttime)='2012-09-21'
ORDER BY starttime;


SELECT starttime FROM cd.bookings
JOIN cd.members ON cd.members.memid=cd.bookings.memid
WHERE cd.members.firstname='David' AND cd.members.surname='Farrell';





