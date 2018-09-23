package com.slokam.SBIDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.slokam.SBIPojo.Audit;


public interface AuditDao extends JpaRepository<Audit,Integer>{

}
