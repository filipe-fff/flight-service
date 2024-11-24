package me.flight.flight.service;

import me.flight.flight.model.Airport;
import me.flight.flight.model.FlightFilter;
import me.flight.flight.model.Flight;
import me.flight.flight.repository.AirportRepository;
import me.flight.flight.repository.FlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;

@Service
public class AirlineService {
    /**
     *      O bom do service é que eu fiz com que eu possa agrupar varios reposiórios
     * e deixar isolado para o controler só puxar os dados.
     */

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    FlightRepository flightRepository;

    public ArrayList<Airport> findAllAirports() {
        try {
            ArrayList<Airport> airportsList = new ArrayList<Airport>(this.airportRepository.findAll());
            return airportsList;
        } catch (Exception e) {
            System.err.println("Error findAllAirports: " + e.getCause());
            e.printStackTrace();
            throw e;
        }
    }

    public ArrayList<Flight> findAllFlights() {
        ArrayList<Flight> flightsList = new ArrayList<Flight>(this.flightRepository.findAll());
        return flightsList;
    }

    public ArrayList<Flight> findAllFlightsByStateByTimeByDate(FlightFilter flightFilter) {
        String state = flightFilter.getState();
        LocalDate dateMin = LocalDate.parse(flightFilter.getDateMin());
        LocalDate dateMax = LocalDate.parse(flightFilter.getDateMax());
        Integer economy = flightFilter.getPriceEconomy();
        Integer business = flightFilter.getPriceBusiness();
        Integer firstClass = flightFilter.getPriceFirstClass();

        ArrayList<Flight> flightsList = new ArrayList<Flight>(flightRepository
                .findAllFlightsByStateByTimeByDate(
                        state,
                        dateMin,
                        dateMax,
                        economy,
                        business,
                        firstClass
                ));

        return flightsList;
    }
}