package domain;

/**
 * Класс данных о книге
 */
public class Book {
    // Суррогатный ключ
    private Long id;
    
    // Автор книги
    private String author;
    
    // Название книги
    private String title;
    
    // Издательство
    private String publishing;
    
    // Серия
    private String seriya;
    
    // Год издания
    private int year;
    
    // Цена
    private double price;

    // Конструктор по умолчанию
    public Book() {
    }

    // Конструктор без id
    public Book(String author, String title, String publishing, String seriya, int year, double price) {
        this.author = author;
        this.title = title;
        this.publishing = publishing;
        this.seriya = seriya;
        this.year = year;
        this.price = price;
    }

    // Конструктор со всеми параметрами
    public Book(Long id, String author, String title, String publishing, String seriya, int year, double price) {
        this.id = id;
        this.author = author;
        this.title = title;
        this.publishing = publishing;
        this.seriya = seriya;
        this.year = year;
        this.price = price;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublishing() {
        return publishing;
    }

    public void setPublishing(String publishing) {
        this.publishing = publishing;
    }

    public String getSeriya() {
        return seriya;
    }

    public void setSeriya(String seriya) {
        this.seriya = seriya;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Метод toString
    @Override
    public String toString() {
        return "Book {" +
                "Id = " + id +
                ", Author = '" + author + '\'' +
                ", Title = '" + title + '\'' +
                ", Publishing = '" + publishing + '\'' +
                ", Seriya = '" + seriya + '\'' +
                ", Year = " + year +
                ", Price = " + price +
                '}';
    }
}
