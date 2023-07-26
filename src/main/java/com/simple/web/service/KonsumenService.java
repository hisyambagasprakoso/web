package com.simple.web.service;

import java.util.List;

import com.simple.web.model.Konsumen;

public interface KonsumenService {
    void save(Konsumen konsumen);
    List<Konsumen> getAll();
    Konsumen getById(Integer id);
    void delete(Konsumen konsumen);

}
