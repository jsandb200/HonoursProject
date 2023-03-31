 CREATE TABLE if not exists users(username TEXT NOT NULL PRIMARY KEY, password TEXT NOT NULL, wackahighscore INTEGER, addihighscore INTEGER, subihighscore INTEGER);

INSERT INTO users(username, password, wackahighscore, addihighscore, subihighscore)
VALUES ("jason", "2", 0, 0, 0);

  -- DELETE FROM users;

  -- SELECT * FROM users;

-- SELECT sqlite_version();