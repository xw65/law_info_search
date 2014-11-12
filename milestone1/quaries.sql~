--1. For what percentage of all times has the court favored parties from NY?

CREATE VIEW NYPartyInvolved AS
SELECT I.serial AS serial, I.party_id AS party_id, I.status AS status
FROM Involved AS I, Party AS P
WHERE P.location = 'NY' AND P.party_id = I.party_id;

CREATE VIEW NYPartyWin AS
SELECT NY.serial AS serial, NY.party_id AS party_id, NY.status AS status
FROM Cases AS C, NYPartyInvolved AS NY
WHERE C.serial = NY.serial AND C.result = NY.status;

SELECT 100*COUNT(*)/(SELECT COUNT(*) FROM NYPartyInvolved)
FROM NYPartyWin;

DROP VIEW NYPartyInvolved;
DROP VIEW NYPartyWin;

--2. Does Judge Alan Lourie favor defendant or plaintiff more in bio-related cases? 

CREATE VIEW ALFavorDef AS
SELECT C.serial AS serial
FROM Judge AS J, Cases AS C, Rules AS R
WHERE J.name = 'Alan Lourie' AND J.judge_id = R.judge_id
AND r.serial = C.serial AND C.technical_area = 'bio' AND R.decision = 'def';

CREATE VIEW ALFavorPlt AS
SELECT C.serial AS serial
FROM Judge AS J, Cases AS C, Rules AS R
WHERE J.name = 'Alan Lourie' AND J.judge_id = R.judge_id
AND r.serial = C.serial AND C.technical_area = 'bio' AND R.decision = 'plt';

SELECT COUNT(*) - (SELECT COUNT(*) FROM ALFavorPlt)
FROM ALFavorDef;

DROP VIEW ALFavorDef;
DROP VIEW ALFavorPlt;

--3. The current client is the plaintiff, the issue of the case is "utility," which judge will most likely support the client's position? 

CREATE VIEW Potential AS
SELECT R.judge_id AS judge_id, COUNT(*) AS cnt
FROM Cases AS C, Rules AS R 
WHERE C.issue = 'utility' AND C.serial = R.serial AND R.decision = 'plt'
GROUP BY R.judge_id;

SELECT J.name
FROM Potential AS P1, Judge AS J
WHERE P1.judge_id = J.judge_id
AND (P1.cnt >= (SELECT MAX(P2.cnt) FROM Potential AS P2));
                     
DROP VIEW Potential;
--4. Is being a female a disadvantage litigating in the Federal Circuit? 
select 100*count(*)/(select count(*) from Party p1, Involved i1 where p1.gender='female' AND i1.party_id=p1.party_id)
from Party p, Involved i, Cases c
where p.gender='female' AND i.serial=c.serial AND i.party_id=p.party_id AND c.result=i.status;
