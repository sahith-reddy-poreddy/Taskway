-- Enable UUID generation (PostgreSQL)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- =========================
-- Users
-- =========================
CREATE TABLE app_user (
                          id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                          email VARCHAR(255) NOT NULL UNIQUE,
                          username VARCHAR(255) NOT NULL UNIQUE ,
                          password_hash TEXT NOT NULL,
                          created_at TIMESTAMP NOT NULL DEFAULT now()
);

-- =========================
-- Organizations
-- =========================
CREATE TABLE organization (
                              id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                              name VARCHAR(255) NOT NULL,
                              created_by UUID NOT NULL ,
                              created_at TIMESTAMP NOT NULL DEFAULT now(),

        CONSTRAINT fk_org_creator
                              FOREIGN KEY (created_by)
                              REFERENCES app_user(id)
);
