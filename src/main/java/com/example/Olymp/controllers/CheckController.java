package com.example.Olymp.controllers;

import com.example.Olymp.models.Check;
import com.example.Olymp.models.Person;
import com.example.Olymp.repos.CheckRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/Check")
public class CheckController {

    @Autowired
    private CheckRepository checkRepository;

    @GetMapping
    public Iterable<Check> list(){
        return checkRepository.findAll();
    }

    @GetMapping("/time/{cardid}")
    public Iterable<Check> timelist(@PathVariable(value = "cardid") String cardid){
        return checkRepository.findByCardidAndTimeonBetween(cardid,LocalDateTime.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1, 00, 00, 00), LocalDateTime.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), LocalDate.now().lengthOfMonth(), 23, 59, 59));
    }

    @GetMapping("{cardid}")
    public List<Check> getPerson(@PathVariable(value = "cardid") String cardid){

        List<Check> check = checkRepository.findFirstByCardidOrderByIdDesc(cardid);

        return check;
    }

    @PostMapping
    public Check create(@RequestBody Check check) {
        return checkRepository.save(check);
    }

    @PutMapping("{id}/{cardid}")
    public Check update(
            @PathVariable("id") long id, @PathVariable("cardid") String cardid, Check checkupd,
            @RequestBody Check check
    ){
        BeanUtils.copyProperties(check, checkupd, "id");

        return checkRepository.save(checkupd);
    }

}
