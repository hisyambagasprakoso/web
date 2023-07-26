package com.simple.web.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.simple.web.model.Konsumen;

@Repository
public interface KonsumenRepository extends JpaRepository<Konsumen, Integer> {

}
