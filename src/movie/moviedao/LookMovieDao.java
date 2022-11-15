package movie.moviedao;

import movie.entity.Movie;

import java.util.List;

public interface LookMovieDao {

    //浏览电影
    public List<Movie> look();
}
