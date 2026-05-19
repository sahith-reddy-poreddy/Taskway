package com.project.task.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "membership_role")
public class MembershipRole {

    @EmbeddedId
    private MembershipRoleId id;

    @ManyToOne
    @MapsId("membershipId")
    @JoinColumn(name = "membership_id")
    private Membership membership;

    @ManyToOne
    @MapsId("roleId")
    @JoinColumn(name = "role_id")
    private Role role;
}
