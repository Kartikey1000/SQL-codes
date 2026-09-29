SELECT username
FROM users
WHERE last_login_date >= '2024-01-01';

SELECT expires_timestamp
FROM messages
WHERE id = 151;

SELECT to_user_id
FROM messages
WHERE from_user_id = (
    SELECT id
    FROM users
    WHERE username = 'creativewisdom377'
)
GROUP BY to_user_id
ORDER BY COUNT(*) DESC
LIMIT 3;

SELECT username
FROM users
WHERE id = (
    SELECT to_user_id
    FROM messages
    GROUP BY to_user_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

SELECT friend_id
FROM friends
WHERE user_id = (
    SELECT id
    FROM users
    WHERE username = 'lovelytrust487'
)
INTERSECT
SELECT friend_id
FROM friends
WHERE user_id = (
    SELECT id
    FROM users
    WHERE username = 'exceptionalinspiration482'
);