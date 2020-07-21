package com.example.Olymp.controllers;

import com.example.Olymp.models.Check;
import com.example.Olymp.models.Person;
import com.example.Olymp.repos.PersonRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/Person")
public class PersonController {

    @Autowired
    private PersonRepository personRepository;

    @GetMapping
    public Iterable<Person> list(){
        return personRepository.findAll();
    }

    @GetMapping("/Status")
    public Iterable<Person> getstatus(){
        return personRepository.findByStatus(true);
    }

    @GetMapping("{id}")
    public Optional<Person> getPerson(@PathVariable(value = "id") long id){

        Optional<Person> person = personRepository.findById(id);

        return person;
    }

    @PostMapping
    public Person create(@RequestBody Person person) {
        return personRepository.save(person);
    }

    @PutMapping("{id}")
    public Person update(
            @PathVariable("id") long id, Person personupd,
            @RequestBody Person person
    ){
        BeanUtils.copyProperties(person, personupd, "id");

        return personRepository.save(personupd);
    }
}
