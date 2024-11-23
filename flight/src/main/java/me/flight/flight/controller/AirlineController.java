package me.flight.flight.controller;

import me.flight.flight.model.Airport;
import me.flight.flight.model.FlightFilter;
import me.flight.flight.model.Flight;
import me.flight.flight.service.AirlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/airline")
public class AirlineController {

    @Autowired
    private AirlineService airlineService;

    @GetMapping("/airports_all")
    public ArrayList<Airport> findAllAirport() {
        return airlineService.findAllAirports();
    }

    @GetMapping("/flights_all")
    public ArrayList<Flight> findAllFlights() {
        return airlineService.findAllFlights();
    }

    @PostMapping("flightsByStateByTimeByDate")
    public ArrayList<Flight> findAllFlightsByStateByTimeByDate(@RequestBody FlightFilter flightFilter) {
        return airlineService.findAllFlightsByStateByTimeByDate(flightFilter);
    }
}