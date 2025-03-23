package com.student.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class StudentController {

    @Value("${name}")
    private String name;
    @Value("${age}")
    private String age;

    @Value("${phase}")
    private String phase;
    @Value("${server.port}")
    private String port;

    @GetMapping("/student")
    public String studnet() {
        return "My Name Is "+ name + " And Age Is "+ age
                + " And Phase Is "+phase +" And Port Is "+ port;
    }

    @GetMapping("/hello")
    public ResponseEntity<?> sayHello() {
        return ResponseEntity.ok("Hello World");
    }
}
