package me.flight.flight.controller;

import me.flight.flight.model.Airport;
import me.flight.flight.service.AirportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequestMapping("/airport")
public class AirportController {

    @Autowired
    private AirportService airportService;

    @GetMapping
    public ArrayList<Airport> findAllAirport() {
        return airportService.findAllAirports();
    }
}