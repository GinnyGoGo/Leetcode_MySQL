-- DATEDIFF(), DATE_ADD()


-- Approach I: DATEDIFF() (Faster)
select w1.id
from weather as w0, weather as w1
where DATEDIFF(w1.recorddate, w0.recorddate) = 1 
And w0.temperature < w1.temperature

-- Approach II: DATE_ADD()
select w1.id
from weather as w0, weather as w1
where DATE_ADD(w0.recorddate, interval 1 day) = w1.recorddate 
And w0.temperature < w1.temperature

-- Approach III: Join & Datediff()
SELECT weather.id AS 'Id'
FROM weather
JOIN weather w 
ON DATEDIFF(weather.date, w.date) = 1
AND weather.Temperature > w.Temperature
;