package domain;

import java.time.LocalDate;

/**
 * Класс данных о продавце
 */
public class Sale {
    // Суррогатный ключ
    private Long id;
    
    // Имя
    private String firstName;
    
    // Фамилия
    private String lastName;
    
    // Должность
    private String position;
    
    // Дата приема на работу
    private LocalDate employmentDate;
    
    // Дата рождения
    private LocalDate dateBirth;
    
    // Электронная почта
    private String email;

    // Конструктор по умолчанию
    public Sale() {
    }

    // Конструктор без id
    public Sale(String firstName, String lastName, String position,
                LocalDate employmentDate, LocalDate dateBirth, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.position = position;
        this.employmentDate = employmentDate;
        this.dateBirth = dateBirth;
        this.email = email;
    }

    // Конструктор со всеми параметрами
    public Sale(Long id, String firstName, String lastName, String position,
                LocalDate employmentDate, LocalDate dateBirth, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.position = position;
        this.employmentDate = employmentDate;
        this.dateBirth = dateBirth;
        this.email = email;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public LocalDate getEmploymentDate() {
        return employmentDate;
    }

    public void setEmploymentDate(LocalDate employmentDate) {
        this.employmentDate = employmentDate;
    }

    public LocalDate getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(LocalDate dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Метод toString
    @Override
    public String toString() {
        return "Sale {" +
                "Id = " + id +
                ", FirstName = '" + firstName + '\'' +
                ", LastName = '" + lastName + '\'' +
                ", Position = '" + position + '\'' +
                ", EmploymentDate = " + employmentDate +
                ", DateBirth = " + dateBirth +
                ", Email = '" + email + '\'' +
                '}';
    }
}
