# select w1.id
# from Weather as w1
# cross join Weather as w2
# where DATEDIFF(w1.recordDate, w2.recordDate) = 1 and w1.temperature > w2.temperature;

SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature