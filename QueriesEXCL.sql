
--creating a view for the most purchased product--
CREATE VIEW vw_ConversionRateOfTrafficSources AS
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