package domain;

import java.time.LocalDate;

/**
 * Класс данных о заказе
 */
public class Order {
    // Суррогатный ключ
    private Long id;

    // Ссылка на книгу
    private Book book;

    // Ссылка на покупателя
    private Customer customer;

    // Ссылка на продавца
    private Sale sale;

    // Дата заказа
    private LocalDate dateInput;

    // Дата отгрузки заказа
    private LocalDate dateOutput;

    // Количество книг
    private int quantity;

    // Общая сумма
    private double totalSum;

    // Конструктор по умолчанию
    public Order() {
    }

    // Конструктор без id
    public Order(Book book, Customer customer, Sale sale, LocalDate dateInput,
                 LocalDate dateOutput, int quantity, double totalSum) {
        this.book = book;
        this.customer = customer;
        this.sale = sale;
        this.dateInput = dateInput;
        this.dateOutput = dateOutput;
        this.quantity = quantity;
        this.totalSum = totalSum;
    }

    // Конструктор со всеми параметрами
    public Order(Long id, Book book, Customer customer, Sale sale, LocalDate dateInput,
                 LocalDate dateOutput, int quantity, double totalSum) {
        this.id = id;
        this.book = book;
        this.customer = customer;
        this.sale = sale;
        this.dateInput = dateInput;
        this.dateOutput = dateOutput;
        this.quantity = quantity;
        this.totalSum = totalSum;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Sale getSale() {
        return sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
    }

    public LocalDate getDateInput() {
        return dateInput;
    }

    public void setDateInput(LocalDate dateInput) {
        this.dateInput = dateInput;
    }

    public LocalDate getDateOutput() {
        return dateOutput;
    }

    public void setDateOutput(LocalDate dateOutput) {
        this.dateOutput = dateOutput;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalSum() {
        return totalSum;
    }

    public void setTotalSum(double totalSum) {
        this.totalSum = totalSum;
    }

    // Метод toString
    @Override
    public String toString() {
        return "Order {" +
                "Id = " + id +
                ", Book = " + (book != null ? book.getTitle() : "null") +
                ", Customer = " + (customer != null ? customer.getFirstName() + " " + customer.getLastName() : "null") +
                ", Sale = " + (sale != null ? sale.getFirstName() + " " + sale.getLastName() : "null") +
                ", DateInput = " + dateInput +
                ", DateOutput = " + dateOutput +
                ", Quantity = " + quantity +
                ", TotalSum = " + totalSum +
                '}';
    }
}
