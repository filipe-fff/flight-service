package me.flight.flight.repository;

import me.flight.flight.model.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Integer> {

    @Query("""
            SELECT f FROM Flight f WHERE (
                f.flightOrigin.state LIKE %:state% AND
                (f.date >= :dateMin AND f.date <= :dateMax) AND
                (f.time >= :timeMin AND f.time <= :timeMax)
            )""")
    public List<Flight> findAllFlightsByStateByTimeByDate(
            @Param("state") String state,
            @Param("dateMin") LocalDate dateMin,
            @Param("dateMax") LocalDate dateMax,
            @Param("timeMin") LocalTime timeMin,
            @Param("timeMax") LocalTime timeMax
        );
}