SELECT *
FROM addresses
WHERE address = '900 Somerville Avenue';


SELECT * FROM packages WHERE from_address_id = 432;

SELECT *
FROM scans
WHERE package_id = 384
ORDER BY timestamp;

SELECT *
FROM addresses
WHERE id = 854;

-- *** The Devious Delivery ***

-- Find packages without a sender address because the customer
-- said that the package had no "From" address.
SELECT *
FROM packages
WHERE from_address_id IS NULL;

SELECT *
FROM scans
WHERE package_id = 5098
ORDER BY timestamp;

SELECT *
FROM addresses
WHERE id = 348;

SELECT *
FROM packages
WHERE from_address_id IS NULL;

SELECT *
FROM addresses
WHERE address = '109 Tileston Street';

SELECT *
FROM addresses
WHERE address = '728 Maple Place';

SELECT *
FROM packages
WHERE from_address_id = 9873
AND to_address_id = 4983;

SELECT *
FROM scans
WHERE package_id = 9523
ORDER BY timestamp;

SELECT *
FROM drivers
WHERE id = 17;