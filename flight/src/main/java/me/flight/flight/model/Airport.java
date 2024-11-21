package me.flight.flight.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "tab_airport")
@Getter
@NoArgsConstructor
public class Airport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 10, unique = true, nullable = false)
    private String code;

    @Column(length = 100, unique = true, nullable = false)
    private String airportName;

    @Column(length = 50, nullable = false)
    private String city;

    @Column(length = 50, nullable = false)
    private String state;

    public Airport(String code, String airportName, String city, String state) {
        this.code = code;
        this.airportName = airportName;
        this.city = city;
        this.state = state;
    }
}