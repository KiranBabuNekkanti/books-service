package com.api.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class BaseController {

    @Value("${message}")
    private String message;

    @Value("${title}")
    private String title;

    @Value("${password}")
    private String password;

    @GetMapping
    public ResponseEntity<String> helloWorld() {
        String value = "Title: " + title + ", Message: " + message + ", My Password is: " + password;
        return ResponseEntity.status(HttpStatus.ACCEPTED).body(value);
    }
}
