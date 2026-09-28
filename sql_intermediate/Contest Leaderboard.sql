--Contest Leaderboard
SET NOCOUNT ON;
SELECT h.hacker_id,
h.name,
SUM(s.maxscore) AS totalscore
FROM Hackers h
 JOIN  (
    SELECT hacker_id,
     
     challenge_id,
MAX(score) AS maxscore
FROM Submissions 
GROUP BY hacker_id,challenge_id
    
) s
ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id,h.name
HAVING SUM(s.maxscore) > 0
ORDER BY totalscore DESC,h.hacker_id ASC




go