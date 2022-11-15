package movie.newsdao;

public interface UpdateDao {
    //判断该新闻是否存在
    public boolean isExist(String title);
    //修改新闻
    public boolean update(String title, String content);
}
