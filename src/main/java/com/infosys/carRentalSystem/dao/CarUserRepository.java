package com.infosys.carRentalSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.infosys.carRentalSystem.bean.CarUser;

public interface CarUserRepository extends JpaRepository<CarUser, String> {

}
