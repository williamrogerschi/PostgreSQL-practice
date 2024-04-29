##### BASIC ######

-- 1. How can you retrieve all the information from the cd.facilties table?
-- Answer: [[ select * from cd.facilities; ]]

-- 2. You want to print out a list of all of the facilties and their cost to members. How would you retrieve a list of only facility names and costs?
-- Answer: [[ select name, membercost from cd.facilities; ]]

-- 3. How can you produce a list of facilities that charge a fee to members?
-- Answer: [[ select * from cd.facilities where membercost > 0; ]]

-- 4. How can you produce a list of facilties that charge a fee to memebers, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilties in question.
-- Answer: [[ select facid, name, membercost, monthlymaintenance from cd.facilities where membercost > 0 and membercost <  monthlymaintenance * 0.02; ]]

-- 5. How can you produce a list of all facilites with the word 'Tennis' in their name?
-- Answer: [[ select * from cd.facilities where name like '%Tennis%'; ]]
-- Notes: LIKE operator uses the % sign where if the thing you are looking for must contain Tennis it has to be starting and ending with the % sign. If you just need to find data where it starts with T for example or ends with S, you would just put the % operator sign before or after. Like so '%T'.

-- 6. How can you retrieve the details fo facilities with ID 1 and 5? Try to do it without using the OR operator.
-- Answer: [[ select * from cd.facilities where facid in ('1' , '5'); ]]

-- 7. How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? Return the name and monthly maintenance of the facilities in question.
-- Answer: [[ select name, case when monthlymaintenance > 100 then 'expensive' when monthlymaintenance < 100 then 'cheap' end from cd.facilities; ]]

-- 8. How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname and joindate of the members in question.
-- Answer: [[ select memid, surname, firstname, joindate from cd.members where joindate > '2012-09-01'; ]]

-- 9. How can you produce an ordered list of the first 10 surnames in the members table? THe list must not contain duplicates.
-- Answer: [[ select distinct surname from cd.members order by surname asc limit 10; ]]
-- Note: the prompt wanted to show only the first 10 so we had to do limit 10. Obviously if you want to see all you would just ignore LIMIT 10.

-- 10. You, for some reason, want a combined list of all surnames and all facility names. Yes, this is a contrived example :). Produce a list!
-- Answer: [[ select surname from cd.members union select name from cd.facilities; ]]

-- 11. You'd like to get the signup date of your last member. How can you retrieve this information?
-- Answer: [[ select joindate from cd.members order by joindate desc limit 1; ]]

-- 12. You'd like to get the first and last name of the last member(s) who signed up - not just the date. How can you do that?
-- Answer: [[ select firstname, surname, joindate from cd.members order by joindate desc limit 1; ]]