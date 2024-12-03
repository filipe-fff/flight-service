package me.flight.flight.repository;

import me.flight.flight.model.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Integer> {

    @Query("""
            SELECT f FROM Flight f WHERE (
                f.flightOrigin.state LIKE %:state% AND
                (f.date >= :dateMin AND f.date <= :dateMax) AND
                (f.priceEconomy <= :economy OR (f.priceEconomy IS NULL AND :economy IS NULL) OR :economy IS NULL) AND
                (f.priceBusiness <= :business OR (f.priceBusiness IS NULL AND :business IS NULL) OR :business IS NULL) AND
                (f.priceFirstClass <= :firstClass OR (f.priceFirstClass IS NULL AND :firstClass IS NULL) OR :firstClass IS NULL)
            )""")
    public List<Flight> findAllFlightsByStateByTimeByDate(
            @Param("state") String state,
            @Param("dateMin") LocalDate dateMin,
            @Param("dateMax") LocalDate dateMax,
            @Param("economy") Integer economy,
            @Param("business") Integer business,
            @Param("firstClass") Integer firstClass
        );
}