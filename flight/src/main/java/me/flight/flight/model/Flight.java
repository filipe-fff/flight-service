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
    private String date;

    @Column(nullable = false)
    private String time;

    @Column
    private Integer price_economy;

    @Column
    private Integer price_business;

    @Column
    private Integer price_first_class;

    @ManyToOne
    @JoinColumn(name = "flight_origin", nullable = false)
    private Airport flightOrigin;

    @ManyToOne
    @JoinColumn(name = "flight_destination", nullable = false)
    private Airport flightDestination;
}