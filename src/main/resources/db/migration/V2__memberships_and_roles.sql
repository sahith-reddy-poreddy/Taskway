-- =========================
-- Memberships
-- A user belongs to an organization
-- =========================
CREATE TABLE membership (
                            id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                            user_id UUID NOT NULL,
                            organization_id UUID NOT NULL,
                            created_at TIMESTAMP NOT NULL DEFAULT now(),

    -- A user can join an org only once
                            CONSTRAINT uq_membership_user_org
                                UNIQUE (user_id, organization_id),

                            CONSTRAINT fk_membership_user
                                FOREIGN KEY (user_id)
                                    REFERENCES app_user(id)
                                    ON DELETE CASCADE,

                            CONSTRAINT fk_membership_org
                                FOREIGN KEY (organization_id)
                                    REFERENCES organization(id)
                                    ON DELETE CASCADE
);

-- =========================
-- Roles (scoped to organization)
-- =========================
CREATE TABLE role (
                      id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                      organization_id UUID NOT NULL,
                      name VARCHAR(100) NOT NULL,

    -- Role names must be unique per organization
                      CONSTRAINT uq_role_org_name
                          UNIQUE (organization_id, name),

                      CONSTRAINT fk_role_org
                          FOREIGN KEY (organization_id)
                              REFERENCES organization(id)
                              ON DELETE CASCADE
);

-- =========================
-- Membership ↔ Role mapping
-- A membership can have multiple roles
-- =========================
CREATE TABLE membership_role (
                                 membership_id UUID NOT NULL,
                                 role_id UUID NOT NULL,

                                 PRIMARY KEY (membership_id, role_id),

                                 CONSTRAINT fk_membership_role_membership
                                     FOREIGN KEY (membership_id)
                                         REFERENCES membership(id)
                                         ON DELETE CASCADE,

                                 CONSTRAINT fk_membership_role_role
                                     FOREIGN KEY (role_id)
                                         REFERENCES role(id)
                                         ON DELETE CASCADE
);
