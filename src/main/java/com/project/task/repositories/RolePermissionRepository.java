package com.project.task.repositories;

import com.project.task.entities.RolePermission;
import com.project.task.entities.RolePermissionId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RolePermissionRepository extends JpaRepository<RolePermission, RolePermissionId> {
}
