package com.project.task.dto;

import java.util.UUID;

public record LoginResponseDTO(
    UUID id,
    String username,
    String email
){}
