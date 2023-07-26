package com.simple.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.simple.web.model.Konsumen;
import com.simple.web.repository.KonsumenRepository;

@Service
public class KonsumenServiceImpl implements KonsumenService {
    @Autowired
    KonsumenRepository konsumenRepository;

    @Override
    public void save(Konsumen konsumen){
        if (konsumen.getId() == 0) {
			konsumenRepository.save(konsumen);
		} else {
			Konsumen staffUpdate = konsumenRepository.findById(konsumen.getId()).get();
			staffUpdate.setNama(konsumen.getNama());
			staffUpdate.setAlamat(konsumen.getAlamat());
			staffUpdate.setKota(konsumen.getKota());
            staffUpdate.setProvinsi(konsumen.getProvinsi());
            staffUpdate.setTgl_registrasi(konsumen.getTgl_registrasi());
            staffUpdate.setStatus(konsumen.getStatus());
			konsumenRepository.save(staffUpdate);
		}
    }

    @Override
	public List<Konsumen> getAll() {
		return konsumenRepository.findAll();
	}
    
	@Override
	public Konsumen getById(Integer id) {
		return konsumenRepository.findById(id).get();

	}

	@Override
	public void delete(Konsumen konsumen) {
		konsumenRepository.delete(konsumen);
	}


    
}
