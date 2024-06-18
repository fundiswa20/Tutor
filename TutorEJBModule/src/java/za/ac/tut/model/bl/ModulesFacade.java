/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.model.entities.Modules;

/**
 *
 * @author USER
 */
@Stateless
public class ModulesFacade extends AbstractFacade<Modules> implements ModulesFacadeLocal {

    @PersistenceContext(unitName = "TutorEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ModulesFacade() {
        super(Modules.class);
    }
    
}
