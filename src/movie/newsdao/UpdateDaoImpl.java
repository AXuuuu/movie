package movie.newsdao;

import movie.hibernate.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UpdateDaoImpl implements UpdateDao{
    HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();

    //判断新闻是否存在
    @Override
    public boolean isExist(String title) {
        boolean isValid=false;
        Session session=hibernateSessionFactory.getSession();
        try{
            System.out.println(title);
            String hql="from News as n where n.title=:title";
            Query query=session.createQuery(hql);
            query.setParameter("title",title);
            System.out.println("2.0修改的新闻标题为"+title);
            List list=query.list();
            if(list.size()>0){
                isValid=true;
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("isExist()方法发生异常！");
        }finally {
            hibernateSessionFactory.closeSession(session);
        }
        return isValid;
    }
    //修改新闻
    @Override
    public boolean update(String title, String content) {
        System.out.println("1.0修改的新闻标题为："+title);
        boolean isValid=false;
        Session session=hibernateSessionFactory.getSession();
        Transaction transaction=session.beginTransaction();
        try{
            String hql="update from News as n set n.content='"+content+"' where n.title='"+title+"'";
            Query query=session.createQuery(hql);
            query.executeUpdate();
            transaction.commit();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("update()方法异常！");
        }finally {
            hibernateSessionFactory.closeSession(session);
        }
        return isValid;
    }
}
