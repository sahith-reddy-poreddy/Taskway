package com.project.task.services;


import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class HealthCheckServiceImpl implements HealthCheckService {
    public Map<String, String> Healhty(){
        return Map.of("UP","Running");
    }





}
