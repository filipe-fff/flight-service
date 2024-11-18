package me.flight.flight.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tab_airport")
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Airport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "code", unique = true, nullable = false)
    private String code;

    @Column(name = "airportName", unique = true, nullable = false)
    private String airportName;

    @Column(name = "city", unique = true, nullable = false)
    private String city;

    @Column(name = "state", unique = true, nullable = false)
    private String state;
}