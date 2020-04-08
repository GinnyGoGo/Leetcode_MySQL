-- [Facebook]
-- Table: friend_request, request_accepted

-- acceptance rate: count the total accepted requests and divide it by the number of requests.
-- Duplicate Records: the ‘duplicated’ requests or acceptances are only counted once.

-- Hint 1: how to count the number of rows in a table?
-- Hint 2: What is the keyword to filter the duplicated records in a table?

select ifnull(
    round(
        (count(distinct requester_id,accepter_id)/count(distinct sender_id,send_to_id)),
        2),
    0.00) as accept_rate
from friend_request, request_accepted; /*two table at one time*/
