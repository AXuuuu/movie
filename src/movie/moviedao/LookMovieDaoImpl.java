package movie.moviedao;

import movie.entity.Movie;
import movie.hibernate.HibernateSessionFactory;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class LookMovieDaoImpl implements LookMovieDao{
    HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();


    //浏览新闻
    @Override
    public List<Movie> look() {
        Session session=hibernateSessionFactory.getSession();
        try{
            Movie movie=new Movie();
            String hql="from Movie ";
            Query query=session.createQuery(hql);
            List list=query.list();
            HttpServletRequest request= ServletActionContext.getRequest();
            request.setAttribute("list",list);
            RequestDispatcher rd=request.getRequestDispatcher("movie.jsp");
            return list;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("look()方法发生异常！");
            return null;
        }
    }
}
