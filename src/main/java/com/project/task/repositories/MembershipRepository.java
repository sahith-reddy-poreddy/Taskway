package com.project.task.repositories;

import com.project.task.entities.Membership;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface MembershipRepository extends JpaRepository<Membership, UUID> {
}
