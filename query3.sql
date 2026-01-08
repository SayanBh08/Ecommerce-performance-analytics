
CREATE TABLE geolocation_cleaned AS
SELECT 
    geolocation_zip_code_prefix,
    AVG(geolocation_lat) AS latitude,
    AVG(geolocation_lng) AS longitude,
    MAX(geolocation_city) AS city, -- Takes one city name per zip
    MAX(geolocation_state) AS state
FROM geolocation
GROUP BY 1;