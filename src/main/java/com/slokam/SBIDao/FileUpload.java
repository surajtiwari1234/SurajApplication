package com.slokam.SBIDao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.slokam.SBIPojo.FileUploadPojo;

public interface FileUpload extends JpaRepository<FileUploadPojo, Integer>{

}
