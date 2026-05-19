package com.project.task.repositories;

import com.project.task.entities.MembershipRole;
import com.project.task.entities.MembershipRoleId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MembershipRoleRepository extends JpaRepository<MembershipRole, MembershipRoleId> {
}
