package domain;

/**
 * Класс данных о покупателе
 */
public class Customer {
    // Суррогатный ключ
    private Long id;

    // Имя
    private String firstName;

    // Фамилия
    private String lastName;

    // Электронная почта
    private String email;

    // Телефон
    private String phone;

    // Конструктор по умолчанию
    public Customer() {
    }

    // Конструктор без id
    public Customer(String firstName, String lastName, String email, String phone) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
    }

    // Конструктор со всеми параметрами
    public Customer(Long id, String firstName, String lastName, String email, String phone) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Метод toString
    @Override
    public String toString() {
        return "Customer {" +
                "Id = " + id +
                ", FirstName = '" + firstName + '\'' +
                ", LastName = '" + lastName + '\'' +
                ", Email = '" + email + '\'' +
                ", Phone = '" + phone + '\'' +
                '}';
    }
}
