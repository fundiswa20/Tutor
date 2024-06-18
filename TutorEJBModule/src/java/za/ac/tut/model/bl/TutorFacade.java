/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entities.Tutor;

/**
 *
 * @author USER
 */
@Stateless
public class TutorFacade extends AbstractFacade<Tutor> implements TutorFacadeLocal {

    @PersistenceContext(unitName = "TutorEJBModulePU")
    private EntityManager em;
    Query query;
    
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TutorFacade() {
        super(Tutor.class);
    }

    @Override
    public Tutor longest() {
        
        query = em.createQuery("SELECT t FROM Tutor t ORDER BY t.hireDate ASC");
        
        Tutor t = (Tutor)query.setMaxResults(1).getSingleResult();
        
        return t;

    }

    @Override
    public Long numFemales() {

        query = em.createQuery("SELECT COUNT(t) FROM Tutor t WHERE t.gender = ?1");
        query.setParameter(1, 'F');
        
        Long females = (Long)query.getSingleResult();
        
        return females;
        
    }

    @Override
    public Long numMales() {
        query = em.createQuery("SELECT COUNT(t) FROM Tutor t WHERE t.gender = ?1");
        query.setParameter(1, 'M');
        
        Long males = (Long)query.getSingleResult();
        
        return males;    
    }

    @Override
    public Tutor youngest() {
        query = em.createQuery("SELECT t FROM Tutor t WHERE t.age = (SELECT MIN(t2.age) FROM Tutor t2)");
        
        Tutor t = (Tutor)query.getSingleResult();
        
        return t;
    }

    @Override
    public Double avgAge() {
        
        query =  em.createQuery("SELECT AVG(t.age) From Tutor t");
        
        Double avg = (Double)query.getSingleResult();
        
        return avg;

    }

    @Override
    public void updateProfile(Long id, byte[] image) {

        query = em.createQuery("UPDATE Tutor t SET t.image = ?1 WHERE t.id = ?2");
        query.setParameter(1, image);
        query.setParameter(2, id);
        
        query.executeUpdate();
        
    }
    
}
