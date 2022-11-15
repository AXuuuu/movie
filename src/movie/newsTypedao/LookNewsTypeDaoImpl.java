package movie.newsTypedao;

import movie.entity.NewsType;
import movie.hibernate.HibernateSessionFactory;
import movie.newsTypedao.LookNewsTypeDao;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class LookNewsTypeDaoImpl implements LookNewsTypeDao {
    HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();


    //浏览电影类型
    @Override
    public List<NewsType> look() {
        Session session=hibernateSessionFactory.getSession();
        try{
            NewsType News=new NewsType();
            String hql="from NewsType ";
            Query query=session.createQuery(hql);
            List list=query.list();
            HttpServletRequest request= ServletActionContext.getRequest();
            request.setAttribute("list",list);
            RequestDispatcher rd=request.getRequestDispatcher("newstype.jsp");
            return list;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("look()方法发生异常！");
            return null;
        }
    }
}
