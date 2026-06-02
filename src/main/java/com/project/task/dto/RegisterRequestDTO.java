package com.project.task.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record RegisterRequestDTO (
    @NotBlank String username,
    @NotBlank @Email String email,
    @NotBlank String password
){}
