USE ExcelPracticeDB;
 SELECT*FROM dbo.user_events;

---Count number of User_id's---
SELECT Count(Distinct user_id) AS TotalUsers From dbo.user_events;

---Count number of event_id's---
SELECT COUNT (event_id) AS TOTALEVENTS FROM dbo.user_events;

---Count number of Page Views---
SELECT COUNT(event_type) AS PAGEVIEWS FROM dbo.user_events
WHERE event_type = 'page_view';

---Count Number of add to carts---
SELECT COUNT (event_type) AS [TOTAL ADD TO CARTS] FROM dbo.user_events
WHERE event_type ='add_to_cart';

----Count Number of Checkouts---
SELECT COUNT (event_type) AS [TOTAL CHECK OUTS MADE] FROM dbo.user_events
WHERE event_type='checkout_start';

----Count Number of people who checked out and gave their payment info---
SELECT COUNT (event_type) AS [TOTAL PAYMENT INFO] FROM dbo.user_events
WHERE event_type='payment_info';

----Count Number of people who Actually Purchased---
SELECT COUNT (event_type) AS [TOTAL PURCHASES MADE] FROM dbo.user_events
WHERE event_type='purchase';

---LIST THE MOST PURCHASED PRODUCTS ACCORDING TO THEIR ID---
SELECT product_id ,
COUNT (*) AS [NUMBER OF PURCHASED PRODUCTS]
FROM dbo.user_events
GROUP BY product_id
ORDER BY [NUMBER OF PURCHASED PRODUCTS] DESC;

---LIST THE TRAFFIC_SOURCES,THE VIEWS AND PURCHASES MADE THROUGH THEM---
SELECT traffic_source,
COUNT(DISTINCT CASE WHEN event_type = 'Purchase' THEN user_id END) AS Purchases,
COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN  user_id END) AS Views
FROM dbo.user_events
GROUP BY traffic_source;

---CONVERSION RATE OF THE TRAFFIC SOURCES--
SELECT traffic_source,
COUNT(DISTINCT CASE WHEN event_type = 'Purchase' THEN user_id END) AS Purchases,
COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN  user_id END) AS Views,
ROUND(
100.0 *
COUNT(DISTINCT CASE WHEN event_type = 'Purchase' THEN user_id END) /
COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN  user_id END),
2) AS [Conversion Rate]
FROM dbo.user_events
GROUP BY traffic_source;
