package movie.moviedao;




public interface UpdateMovieDao {

    //判断该电影是否存在
    public boolean isExist(String id);

    //修改电影
    public boolean update(String id, String title, String img, String type, String introduction, String src);
}
