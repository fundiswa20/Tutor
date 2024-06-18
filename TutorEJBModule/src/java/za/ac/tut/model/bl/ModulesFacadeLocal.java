/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entities.Modules;

/**
 *
 * @author USER
 */
@Local
public interface ModulesFacadeLocal {

    void create(Modules modules);

    void edit(Modules modules);

    void remove(Modules modules);

    Modules find(Object id);

    List<Modules> findAll();

    List<Modules> findRange(int[] range);

    int count();
    
}
