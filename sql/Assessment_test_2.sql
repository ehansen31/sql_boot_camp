SELECT *
FROM cd.facilities;

SELECT name, membercost
FROM cd.facilities;

SELECT name, membercost
FROM cd.facilities
WHERE membercost > 0;

SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50);

SELECT name
FROM cd.facilities
WHERE name ILIKE('%tennis%');

SELECT facid, name
FROM cd.facilities
WHERE facid IN(1,5);

SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate > '2012-09-01';

SELECT DISTINCT surname
FROM cd.members
ORDER BY surname ASC
LIMIT 10;

SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT COUNT(guestcost)
FROM cd.facilities
WHERE guestcost >= 10;

SELECT cd.facilities.facid, SUM(slots)
FROM cd.facilities
JOIN cd.bookings ON cd.bookings.facid = cd.facilities.facid
WHERE EXTRACT(MONTH FROM cd.bookings.starttime) = 9
GROUP BY cd.facilities.facid
ORDER BY SUM(slots) ASC;

SELECT cd.facilities.facid, SUM(slots)
FROM cd.facilities
JOIN cd.bookings ON cd.bookings.facid = cd.facilities.facid
GROUP BY cd.facilities.facid
HAVING SUM(slots) > 1000
ORDER BY cd.facilities.facid ASC;

SELECT starttime, name
FROM cd.bookings
JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE cd.facilities.facid in (SELECT facid
FROM cd.facilities
WHERE name ILIKE('%tennis court%')) AND DATE(cd.bookings.starttime) = '2012-09-21';

SELECT starttime
FROM cd.bookings
WHERE memid IN (SELECT memID
FROM cd.members
WHERE surname ILIKE('farrel%') AND firstname ILIKE('david%')
);




























































































































































































































































