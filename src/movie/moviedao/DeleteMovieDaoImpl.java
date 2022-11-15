package movie.moviedao;

import movie.hibernate.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class DeleteMovieDaoImpl implements DeleteMovieDao {
    HibernateSessionFactory hibernateSessionFactory = new HibernateSessionFactory();


    //删除新闻
    @Override
    public void delete(String id) {
        Session session = hibernateSessionFactory.getSession();
        Transaction transaction=null;
        try {
            transaction=session.beginTransaction();
            String hql="delete from Movie as m where m.id=:id";
            Query query = session.createQuery(hql);
            query.setParameter("id",id);
            query.executeUpdate();
            transaction.commit();
        } catch (Exception e) {
            System.out.println("delete()方法发生异常！");
            e.printStackTrace();
        } finally {
            hibernateSessionFactory.closeSession(session);
        }
    }
}
