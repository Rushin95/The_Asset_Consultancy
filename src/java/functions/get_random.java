package functions;




import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import model.AgentDetail;
import model.PropDetail;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import util.NewHibernateUtil;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author rushin
 */
public class get_random {

    public PropDetail getprop()
    {    
    SessionFactory sf=NewHibernateUtil.getSessionFactory();
    Session session=sf.openSession();
   List<PropDetail> list = session.createCriteria(PropDetail.class).list();
       
        Random r = new Random();
        PropDetail p = list.get(r.nextInt(list.size()));
        return p;
             
        
    }
    
    
    
     public AgentDetail getagent()
    {    
    SessionFactory sf=NewHibernateUtil.getSessionFactory();
    Session session=sf.openSession();
   List<AgentDetail> list = session.createCriteria(AgentDetail.class).list();
       
        Random r = new Random();
        AgentDetail a = list.get(r.nextInt(list.size()));
        return a;
             
        
    }
}
    

    


