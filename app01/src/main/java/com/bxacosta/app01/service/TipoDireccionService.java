package com.bxacosta.app01.service;

import com.bxacosta.app01.model.TipoDireccion;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class TipoDireccionService {
    private final RestTemplate restTemplate;

    public TipoDireccionService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<TipoDireccion> findAll() {
        ResponseEntity<List<TipoDireccion>> response = this.restTemplate.exchange(
                "//app02/tipo",
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<TipoDireccion>>() {
                });
        return response.getBody();
    }
}
