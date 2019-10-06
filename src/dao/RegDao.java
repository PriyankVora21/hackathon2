package dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.*;;

public class RegDao {
	
	public void add_data_for_signup(SignupVo v)
	{
	   SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
	   Session session = sessionfactory.openSession();
	   Transaction transaction=session.beginTransaction();
	   session.save(v);
	   transaction.commit();
	   session.close();
	}
	
	public List<SignupVo> verify_details(String un,String pass)
	{
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		Session s=sessionfactory.openSession();
		
		Query q=s.createQuery("from SignupVo where Username='"+un+"' and Password='"+pass+"' ");
		List<SignupVo> l=q.list();

		return l;
		
	}
	
	public void add_book_details(BookVo v)
	{
		 SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
		   Session session = sessionfactory.openSession();
		   Transaction transaction=session.beginTransaction();
		   session.save(v);
		   transaction.commit();
		   session.close();
	}
	
}
