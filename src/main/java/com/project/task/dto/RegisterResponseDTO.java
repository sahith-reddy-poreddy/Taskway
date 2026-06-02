package com.project.task.dto;

import java.util.UUID;

public record RegisterResponseDTO(
    UUID id,
    String username,
    String email
) {}
