CREATE VIEW no_descriptions AS
SELECT
    id,
    property_type,
    host_name,
    accommodates,
    bedrooms
FROM listings;

CREATE VIEW one_bedrooms AS
SELECT
    id,
    property_type,
    host_name,
    accommodates
FROM listings
WHERE bedrooms = 1;

CREATE VIEW available AS
SELECT
    listings.id,
    listings.property_type,
    listings.host_name,
    availabilities.date
FROM listings
JOIN availabilities
    ON listings.id = availabilities.listing_id
WHERE availabilities.available = TRUE;

CREATE VIEW frequently_reviewed AS
SELECT
    listings.id,
    listings.property_type,
    listings.host_name,
    COUNT(reviews.id) AS reviews
FROM listings
JOIN reviews
    ON listings.id = reviews.listing_id
GROUP BY listings.id
ORDER BY
    reviews DESC,
    listings.property_type ASC,
    listings.host_name ASC
LIMIT 100;

CREATE VIEW june_vacancies AS
SELECT
    listings.id,
    listings.property_type,
    listings.host_name,
    COUNT(availabilities.date) AS days_vacant
FROM listings
JOIN availabilities
    ON listings.id = availabilities.listing_id
WHERE availabilities.date BETWEEN '2023-06-01' AND '2023-06-30'
  AND availabilities.available = TRUE
GROUP BY listings.id;