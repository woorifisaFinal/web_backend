package com.woorifis.demo.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;


@Entity
@Getter
@Setter
@Table(name = "taiwan")
public class Taiwan {
    @Id
    private String date;
    @Column
    private double open;
    @Column
    private double high;
    @Column
    private double low;
    @Column
    private double close;
    @Column
    private double adjclose;
    @Column
    private long volume;
    

}