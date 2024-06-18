package za.ac.tut.model.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.model.entities.Modules;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-06-12T12:41:36")
@StaticMetamodel(Tutor.class)
public class Tutor_ { 

    public static volatile SingularAttribute<Tutor, byte[]> image;
    public static volatile SingularAttribute<Tutor, Date> hireDate;
    public static volatile SingularAttribute<Tutor, Character> gender;
    public static volatile SingularAttribute<Tutor, String> name;
    public static volatile SingularAttribute<Tutor, Long> id;
    public static volatile SingularAttribute<Tutor, Integer> age;
    public static volatile ListAttribute<Tutor, Modules> modules;

}