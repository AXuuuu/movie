package movie.newsTypedao;




public interface UpdateNewsTypeDao {

    //判断该电影类型是否存在
    public boolean isExist(String id);

    //修改电影类型
    public boolean update(String id, String type);
}
