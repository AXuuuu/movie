package movie.newsdao;

import movie.entity.News;
import movie.hibernate.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class AddDaoImpl implements AddDao {
    HibernateSessionFactory hibernateSessionFactory = new HibernateSessionFactory();




    //判断是否有相同的新闻
    @Override
    public boolean isExist(String title) {
        boolean isValid = false;
        Session session = hibernateSessionFactory.getSession();
        try {
            String hql = "from News as n where n.title=:title";
            Query query = session.createQuery(hql);
            query.setParameter("title", title);
            System.out.println(title);
            List list = query.list();
            if (list.size() > 0) {
                isValid = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("isExist()方法发生异常！");
        } finally {
            hibernateSessionFactory.closeSession(session);
        }
        return isValid;
    }
    //添加新闻
    @Override
    public boolean add(String id,String title, String content) {
        Session session = hibernateSessionFactory.getSession();
        Transaction transaction = null;
        boolean isValid = false;
        try {
            transaction = session.beginTransaction();
            News news = new News();
            news.setId(id);
            news.setTitle(title);
            news.setContent(content);
            session.save(news);
            transaction.commit();
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            System.out.println("add()方法发生异常！");
        } finally {
            hibernateSessionFactory.closeSession(session);
        }
        return isValid;
    }
}
