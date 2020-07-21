package com.example.Olymp.models;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity (name="Checker")
public class Check {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(updatable = false)
    private String cardid;

    @Column(updatable = false)
    private LocalDateTime timeon;

    private LocalDateTime timeoff;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCardid() {
        return cardid;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public LocalDateTime getTimeon() {
        return timeon;
    }

    public void setTimeon(LocalDateTime timeon) {
        this.timeon = timeon;
    }

    public LocalDateTime getTimeoff() {
        return timeoff;
    }

    public void setTimeoff(LocalDateTime timeoff) {
        this.timeoff = timeoff;
    }


}
