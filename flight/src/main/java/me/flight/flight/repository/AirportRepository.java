package me.flight.flight.repository;

import me.flight.flight.model.Airport;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AirportRepository extends JpaRepository<Airport, Integer> {
}