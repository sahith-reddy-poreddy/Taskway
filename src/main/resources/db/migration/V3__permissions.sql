-- =========================
-- Permissions (global)
-- =========================
CREATE TABLE permission (
                            id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                            code VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- Role ↔ Permission mapping
-- =========================
CREATE TABLE role_permission (
                                 role_id UUID NOT NULL,
                                 permission_id UUID NOT NULL,

                                 PRIMARY KEY (role_id, permission_id),

                                 CONSTRAINT fk_role_permission_role
                                     FOREIGN KEY (role_id)
                                         REFERENCES role(id)
                                         ON DELETE CASCADE,

                                 CONSTRAINT fk_role_permission_permission
                                     FOREIGN KEY (permission_id)
                                         REFERENCES permission(id)
                                         ON DELETE CASCADE
);
