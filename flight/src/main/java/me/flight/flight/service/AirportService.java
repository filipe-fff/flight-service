package me.flight.flight.service;

import me.flight.flight.model.Airport;
import me.flight.flight.repository.AirportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AirportService {

    @Autowired
    private AirportRepository airportRepository;

    public ArrayList<Airport> findAllAirports() {
        ArrayList<Airport> airportsList = new ArrayList<>(airportRepository.findAll());
        return airportsList;
    }
}