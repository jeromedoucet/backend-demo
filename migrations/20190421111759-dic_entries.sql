
-- +migrate Up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "user" (
  id uuid PRIMARY KEY,
  login text NOT NULL
);

-- +migrate Down
DROP TABLE "user" CASCADE;

DROP EXTENSION IF EXISTS "uuid-ossp";
