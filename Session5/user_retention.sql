SELECT
  EXTRACT(month from u1.event_date) as month,
  count(DISTINCT u1.user_id) as monthly_active_users
FROM user_actions u1
JOIN user_actions u2
  on u1.user_id = u2.user_id
WHERE EXTRACT(year from u1.event_date) = 2022
and EXTRACT(month from u1.event_date) = 7
and EXTRACT(year from u2.event_date) = 2022
and EXTRACT(month from u2.event_date) = 6
group by month
