package me.flight.flight.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Entity
@Table(name = "tab_flight")
@Getter
@NoArgsConstructor
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private LocalDate date;

    @Column(nullable = false)
    private LocalTime time;

    @Column(name = "price_economy")
    private Integer priceEconomy;

    @Column(name = "price_business")
    private Integer priceBusiness;

    @Column(name = "price_first_class")
    private Integer priceFirstClass;

    @ManyToOne
    @JoinColumn(name = "flight_origin", nullable = false)
    private Airport flightOrigin;

    @ManyToOne
    @JoinColumn(name = "flight_destination", nullable = false)
    private Airport flightDestination;
}