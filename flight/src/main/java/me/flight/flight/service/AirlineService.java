package me.flight.flight.service;

import me.flight.flight.model.Airport;
import me.flight.flight.model.Flight;
import me.flight.flight.repository.AirportRepository;
import me.flight.flight.repository.FlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AirlineService {

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    FlightRepository flightRepository;

    public ArrayList<Airport> findAllAirports() {
        try {
            ArrayList<Airport> airportsList = new ArrayList<Airport>(airportRepository.findAll());
            return airportsList;
        } catch (Exception e) {
            System.err.println("Error findAllAirports: " + e.getCause());
            e.printStackTrace();
            throw e;
        }
    }

    public ArrayList<Flight> findAllFlights() {
        ArrayList<Flight> flightsList = new ArrayList<Flight>(flightRepository.findAll());
        return flightsList;
    }
}