package entity;

/**
 * Created by naim on 3/5/2020.
 */
public class News{

    public static final String INTERNATIONAL = "INTERNATIONAL"
            , FASHION = "FASHION"
            ,TRAVEL = "TRAVEL"
            ,FOOD = "FOOD"
            ,TECHNOLOGY = "TECHNOLOGY"

            ;


    private long id;
    private String image;
    private String title;
    private String description;
    private long totalView;
    private String publishedDate;
    private String type;

    public News(){

    }

    public News(long id, String image, String title, String description, long totalView, String publishedDate, String type) {
        this.id = id;
        this.image = image;
        this.title = title;
        this.description = description;
        this.totalView = totalView;
        this.publishedDate = publishedDate;
        this.type = type;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setTotalView(long totalView) {
        this.totalView = totalView;
    }

    public void setPublishedDate(String publishedDate) {
        this.publishedDate = publishedDate;
    }

    public long getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public long getTotalView() {
        return totalView;
    }

    public String getPublishedDate() {
        return publishedDate;
    }


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", totalView=" + totalView +
                ", publishedDate='" + publishedDate + '\'' +
                ", type=" + type +
                '}';
    }
}
