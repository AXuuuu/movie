package movie.action.newstype;

import movie.entity.NewsType;
import movie.newsTypedao.UpdateNewsTypeDao;
import movie.newsTypedao.UpdateNewsTypeDaoImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class updateNewsTypeAction extends ActionSupport {
    private UpdateNewsTypeDao updateNewsTypeDao = new UpdateNewsTypeDaoImpl();
    private NewsType NewsType;
    private String id;
    private String type;



    public NewsType getNewsType() {
        return NewsType;
    }

    public void setNewsType(NewsType NewsType) {
        this.NewsType = NewsType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");
        String type = request.getParameter("type");

        boolean isValid = updateNewsTypeDao.isExist(id);
        if (isValid) {
            updateNewsTypeDao.update(id,type);
            System.out.println("新闻类别：" + type + "已修改！");
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
