# Write your MySQL query statement below
select customer_id,count(V.visit_id) as count_no_trans from Visits V
left join Transactions T on V.visit_id = T.Visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id ;