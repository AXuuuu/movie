package movie.action.news;

import movie.entity.News;
import movie.newsdao.UpdateDao;
import movie.newsdao.UpdateDaoImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;


public class updateNewsAction extends ActionSupport {
    private UpdateDao updateDao = new UpdateDaoImpl();

    private News news;
    private String title;
    private String content;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }


    public String execute() throws Exception {
        HttpServletRequest request= ServletActionContext.getRequest();
        String title=request.getParameter("title");
        String content=request.getParameter("kindedito");
        System.out.println(title);
        boolean isValid = updateDao.isExist(title);
        if (isValid) {
            updateDao.update(title, content);
            System.out.println("新闻：" + title + "已修改！");
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

}
