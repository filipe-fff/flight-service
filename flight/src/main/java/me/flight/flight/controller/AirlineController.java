package me.flight.flight.controller;

import me.flight.flight.model.Airport;
import me.flight.flight.model.Flight;
import me.flight.flight.service.AirlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/flights")
public class AirlineController {

    @Autowired
    private AirlineService airlineService;

    @GetMapping("/airports_all")
    public ArrayList<Airport> findAllAirport() {
        return airlineService.findAllAirports();
    }

    @GetMapping("/flights_all")
    public ArrayList<Flight> findAlllights() {
        return airlineService.findAllFlights();
    }
}