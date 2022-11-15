package movie.action.movie;

import movie.entity.Movie;
import movie.moviedao.UpdateMovieDao;
import movie.moviedao.UpdateMovieDaoImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class updateMovieAction extends ActionSupport {
    private UpdateMovieDao updateMovieDao = new UpdateMovieDaoImpl();
    private Movie movie;
    private String id;
    private String title;
    private String img;
    private String type;
    private String introduction;
    private String src;


    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String img = request.getParameter("img");
        String type = request.getParameter("type");
        String introduction = request.getParameter("kindedito");
        String src = request.getParameter("src");
        boolean isValid = updateMovieDao.isExist(id);
        if (isValid) {
            updateMovieDao.update(id, title, img, type, introduction, src);
            System.out.println("电影：" + title + "已修改！");
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
