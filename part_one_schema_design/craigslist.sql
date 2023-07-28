CREATE TABLE regions (
    id INTEGER PRIMARY KEY,
    name TEXT   NOT NULL,
);

CREATE TABLE "categories" (
    id INTEGER PRIMARY KEY,
    name TEXT   NOT NULL,
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT   NOT NULL,
    region_id INTEGER REFERENCES regions,
    post_id INTEGER REFERENCES posts ON DELETE CASCADE
);

CREATE TABLE "posts" (
    id INTEGER PRIMARY KEY,
    title TEXT   NOT NULL,
    description TEXT,
    location TEXT   NOT NULL,
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    region_id INTEGER REFERENCES regions,
    category_id INTEGER REFERENCES categories,
);



CREATE INDEX idx_regions_name ON regions (name);

CREATE INDEX idx_users_name ON users (name);

CREATE INDEX idx_posts_title ON posts (title);

CREATE INDEX idx_categories_name ON categories (name);

