package me.flight.flight.model;


public class FlightFilter {

    private String state;
    private String dateMin;
    private String dateMax;
    private String timeMin;
    private String timeMax;

    public FlightFilter(String state, String dateMin, String dateMax, String timeMin, String timeMax) {
        this.state = state;
        this.dateMin = dateMin;
        this.dateMax = dateMax;
        this.timeMin = timeMin;
        this.timeMax = timeMax;
    }

    public String getState() {
        return state;
    }

    public FlightFilter setState(String state) {
        this.state = state;
        return this;
    }

    public String getDateMin() {
        return dateMin;
    }

    public FlightFilter setDateMin(String dateMin) {
        this.dateMin = dateMin;
        return this;
    }

    public String getDateMax() {
        return dateMax;
    }

    public FlightFilter setDateMax(String dateMax) {
        this.dateMax = dateMax;
        return this;
    }

    public String getTimeMin() {
        return timeMin;
    }

    public FlightFilter setTimeMin(String timeMin) {
        this.timeMin = timeMin;
        return this;
    }

    public String getTimeMax() {
        return timeMax;
    }

    public FlightFilter setTimeMax(String timeMax) {
        this.timeMax = timeMax;
        return this;
    }
}