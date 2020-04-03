-- Sort and find the first record of each group

-- Mission: Report the first login date for each player
-- Activity Table：player_id, device_id, event_date，games_played
-- Result Table: player_id, first_login

select player_id, min(event_date) as first_login
from activity 
group by player_id