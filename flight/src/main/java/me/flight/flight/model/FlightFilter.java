package me.flight.flight.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@RequiredArgsConstructor
@ToString
public class FlightFilter {

    private String state;
    private String dateMin;
    private String dateMax;
    private Integer priceEconomy;
    private Integer priceBusiness;
    private Integer priceFirstClass;
}