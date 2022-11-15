package movie.action.movie;

import movie.entity.Movie;
import movie.moviedao.AddMovieDao;
import movie.moviedao.AddMovieDaoImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class addMovieAction extends ActionSupport {
    private AddMovieDao addMovieDao = new AddMovieDaoImpl();
    private Movie movie;
//    private File upload;
private String upload;
    private String uploadFileName;
    private String savePath;

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public String getUpload() {
        return upload;
    }

    public void setUpload(String upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getSavePath() {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String img = request.getParameter("img");
        String upload=request.getParameter("upload");
        String type = request.getParameter("type");
        String introduction = request.getParameter("kindedito");

        boolean isValid = addMovieDao.isExist(title);
        if (!isValid) {
//            FileInputStream fileInputStream = new FileInputStream(getUpload());
//            FileOutputStream fileOutputStream = new FileOutputStream(getSavePath() + "\\" + getUploadFileName());
//            System.out.println("路径为" + getSavePath() + getUploadFileName());
//            byte[] buffer = new byte[1024];
//            int len = 0;
//            while ((len = fileInputStream.read(buffer)) > 0) {
//                fileOutputStream.write(buffer, 0, len);
//            }
//            fileOutputStream.close();
//            String src = getSavePath() + "\\" + getUploadFileName();
             String src=upload;
            addMovieDao.add(id, title, img, type, introduction, src);
            System.out.println("电影：" + title + "添加成功");
            return SUCCESS;
        } else {
            System.out.println("该电影已存在");
            return ERROR;
        }
    }
}
