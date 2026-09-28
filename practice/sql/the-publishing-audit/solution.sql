select * from content_items where year(publish_date,'yyyy') = 2026 
group by content_id; 
