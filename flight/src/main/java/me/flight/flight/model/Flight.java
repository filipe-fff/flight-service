package me.flight.flight.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
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

    @JsonIgnore
    @Column(name = "price_economy")
    private Integer priceEconomy;

    @JsonIgnore
    @Column(name = "price_business")
    private Integer priceBusiness;

    @JsonIgnore
    @Column(name = "price_first_class")
    private Integer priceFirstClass;

    @ManyToOne
    @JoinColumn(name = "flight_origin", nullable = false)
    private Airport flightOrigin;

    @ManyToOne
    @JoinColumn(name = "flight_destination", nullable = false)
    private Airport flightDestination;

    @Transient
    public List<PricesType> getPricesTypesList() {
        ArrayList<PricesType> pricesTypeList = new ArrayList<PricesType>();
        if (priceEconomy != null) pricesTypeList.add(new PricesType((byte) 1, priceEconomy));
        if (priceBusiness != null) pricesTypeList.add(new PricesType((byte) 2, priceBusiness));
        if (priceFirstClass != null) pricesTypeList.add(new PricesType((byte) 3, priceFirstClass));

        return pricesTypeList;
    }
}