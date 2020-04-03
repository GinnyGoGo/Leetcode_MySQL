-- UPDATE & CASE...WHEN

-- Approach I: Case...When
UPDATE salary
SET
    sex = CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END;


-- Approach II: IF
update salary 
set sex = IF (sex = "m", "f", "m");