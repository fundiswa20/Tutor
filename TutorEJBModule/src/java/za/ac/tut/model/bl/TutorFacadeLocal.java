/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entities.Tutor;

/**
 *
 * @author USER
 */
@Local
public interface TutorFacadeLocal {

    void create(Tutor tutor);

    void edit(Tutor tutor);

    void remove(Tutor tutor);

    Tutor find(Object id);

    List<Tutor> findAll();

    List<Tutor> findRange(int[] range);

    int count();
    
    Tutor longest();
    
    Long numFemales();
    
    Long numMales();
    
    Tutor youngest();
    
    Double avgAge();
    
    void updateProfile(Long id,byte[] image);
    
}
