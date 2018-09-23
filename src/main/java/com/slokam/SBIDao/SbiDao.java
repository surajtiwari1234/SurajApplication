package com.slokam.SBIDao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.slokam.SBIPojo.HumanPojo;

public interface SbiDao  extends JpaRepository<HumanPojo, Integer>{

}
