package com.example.Olymp.repos;

import com.example.Olymp.models.Person;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PersonRepository extends CrudRepository<Person, Long> {
    List<Person> findByStatus(boolean Status);

}
