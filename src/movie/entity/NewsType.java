package movie.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class NewsType {
    private String id;
    private String type;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NewsType newstype = (NewsType) o;
        return Objects.equals(id, newstype.id) &&
                Objects.equals(type, newstype.type);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, type);
    }
}
