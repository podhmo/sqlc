-- name: GetAuthor :one
SELECT * FROM authors
WHERE author_id = $1;

-- name: CreateAuthor :one
INSERT INTO authors (name) VALUES ($1)
RETURNING *;
