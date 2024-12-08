package com.placement.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.placement.project.model.Student;

import jakarta.transaction.Transactional;


@Repository
public interface StudentRepository extends JpaRepository<Student,Integer>{
	
	public Student findByIdAndPassword(Long id, String password);

	@Query("update Student s set s.studentstatus = ?1 where s.id=?2")
	  @Modifying
	  @Transactional
	  public int updatestudentstatus(String status,long id);
}
