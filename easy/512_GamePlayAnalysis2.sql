-- Mission: Report the device that is first logged in for each player

-- Match two features in WHERE

-- Activity Table：player_id, device_id, event_date，games_played
-- Result Table: player_id, device_id

-- ? min() & Group By & where( , ) in ()

-- Approach I: where (,) in ()
select player_id, device_id 
from activity 
where (player_id, event_date) in (
                                select player_id, min(event_date)
                                from activity 
                                group by player_id
                                 ) 

-- Approach II (Faster): Match two features in WHERE

select A.player_id, A.device_id 
from Activity A, (
        select player_id as pid, 
            min(event_date) as min_date 
		from Activity 
        group by player_id
    ) as tmp 
where A.player_id = tmp.pid and A.event_date = tmp.min_date