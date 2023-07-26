package com.simple.web.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "konsumen")
@Data
public class Konsumen {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false, unique = false, length = 25)
    private String nama;

    @Column(nullable = false, unique = false, length = 255)
    private String alamat;

    @Column(nullable = false, unique = false, length = 20)
    private String kota;

    @Column(nullable = false, unique = false, length = 20)
    private String provinsi;

    @Basic(optional = false)
    @Column(name = "tgl_registrasi", insertable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private String tgl_registrasi;

    @Column(nullable = false, unique = false, length = 9)
    private String status;
}
