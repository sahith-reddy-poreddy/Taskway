package com.project.task.controllers;

import com.project.task.services.HealthCheckService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class HealthCheckController {
    private final HealthCheckService healthcheck;

    public HealthCheckController(HealthCheckService healthcheck) {
        this.healthcheck = healthcheck;
    }

    @GetMapping("/health")
    public Map<String, String> health() {
        return healthcheck.Healhty();
    }
}
