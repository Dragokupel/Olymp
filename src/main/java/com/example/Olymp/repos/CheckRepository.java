package com.example.Olymp.repos;

import com.example.Olymp.models.Check;
import org.springframework.data.repository.CrudRepository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public interface CheckRepository extends CrudRepository<Check, Long> {
    List<Check> findFirstByCardidOrderByIdDesc(String Cardid);
    List<Check> findFirstByIdAndCardidOrderByIdDesc(long Id, String Cardid);
    List<Check> findByCardidAndTimeonBetween(String Cardid, LocalDateTime start, LocalDateTime end);
}
