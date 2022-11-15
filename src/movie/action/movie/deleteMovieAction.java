package movie.action.movie;

import movie.entity.Movie;
import movie.moviedao.DeleteMovieDao;
import movie.moviedao.DeleteMovieDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class deleteMovieAction extends ActionSupport {
    private DeleteMovieDao deleteMovieDao=new DeleteMovieDaoImpl();

    private Movie movie;
    private String id;

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

    public String execute() throws Exception{
        System.out.println("删除的电影编号："+id);
        deleteMovieDao.delete(id);
        return SUCCESS;
    }
}
