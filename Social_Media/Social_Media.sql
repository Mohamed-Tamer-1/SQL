DROP TABLE IF EXISTS users;
CREATE TABLE users(
    user_id int IDENTITY,                  
    user_name varchar(16) not null,
    full_name varchar(50),
    constraint users_pk primary key (user_id),
    constraint users_name_unique unique (user_name)
);

DROP TABLE if EXISTS comments;
CREATE TABLE comments (
    comment_id int IDENTITY primary key,
    comment_content text,
    user_id int references users(user_id)
);

CREATE TABLE comment_linkes(
    user_id int references users(user_id),
    comment_id int references comments(comment_id)
);