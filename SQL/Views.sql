CREATE VIEW vw_TheMostViewedProductThroughPaidAds AS
SELECT
    product_id,
    COUNT(DISTINCT user_id) AS ViewsThroughPaidAds
FROM dbo.user_events
WHERE event_type = 'page_view'
  AND traffic_source = 'paid_ads'
GROUP BY product_id;
GO
  
CREATE VIEW vw_MostPurchasedProduct AS
SELECT product_id ,
COUNT (*) AS [NUMBER OF PURCHASES]
FROM dbo.user_events
GROUP BY product_id;
GO

CREATE VIEW vw_TrafficSourcePerformance AS
SELECT traffic_source,
COUNT(DISTINCT CASE WHEN event_type = 'Purchase' THEN user_id END) AS Purchases,
COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN  user_id END) AS Views
FROM dbo.user_events
GROUP BY traffic_source;
GO

CREATE VIEW vw_ConversionRate AS
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
GO
