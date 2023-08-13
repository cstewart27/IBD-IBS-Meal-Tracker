package com.csw.Controllers;

import com.csw.Models.BowelMovement;
import com.csw.Services.BowelMovementService;
import com.csw.Services.Exceptions.BowelMovementNotInsertedException;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping(path = "/api/bowelMovements")
public class BowelMovementAPIController {

    private BowelMovementService bowelMovementService;

    public BowelMovementAPIController(BowelMovementService bowelMovementService) {
        this.bowelMovementService = bowelMovementService;
    }

    @GetMapping(path = "/{id}")
    public BowelMovement getBowelMovementById(@PathVariable Integer id) {
        BowelMovement bowelMovement = bowelMovementService.getBowelMovementById(id);

        if (bowelMovement == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "BowelMovement not found");
        }
        return bowelMovement;
    }

    @GetMapping(path = "")
    public List<BowelMovement> getBowelMovements() {
        List<BowelMovement> bowelMovements = bowelMovementService.getBowelMovements();

        if (bowelMovements == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "BowelMovements not found");
        }
        return bowelMovements;
    }

    @PostMapping(path = "")
    public BowelMovement addBowelMovement(@RequestBody BowelMovement bowelMovement) throws BowelMovementNotInsertedException {
        return bowelMovementService.addBowelMovement(bowelMovement);
    }

    @PutMapping(path = "/{id}")
    public BowelMovement updateBowelMovement(@PathVariable int id, @RequestBody BowelMovement bowelMovement) {
        return bowelMovementService.updateBowelMovement(id, bowelMovement);
    }

    @DeleteMapping(path = "/{id}")
    public void deleteBowelMovement(@PathVariable int id) {
        bowelMovementService.deleteBowelMovement(id);

        throw new ResponseStatusException(HttpStatus.NO_CONTENT, "BowelMovement deleted");
    }
}
