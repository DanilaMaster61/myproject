<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Order, domain.Book, domain.Customer, domain.Sale"%>
<%@ page import="java.time.LocalDate"%>
<%
Book book1 = new Book(1L, "Автор 1", "Книга 1", "Издательство 1", "Серия A", 2021, 450.0);
Book book2 = new Book(2L, "Автор 2", "Книга 2", "Издательство 2", "Серия B", 2022, 600.0);

Customer customer1 = new Customer(1L, "Иван", "Иванов", "ivan@example.com", "+79990001122");
Customer customer2 = new Customer(2L, "Петр", "Петров", "petr@example.com", "+79995556677");

Sale sale1 = new Sale(1L, "Ольга", "Смирнова", "менеджер", LocalDate.of(2021, 5, 1), LocalDate.of(1990, 3, 10), "olga@example.com");
Sale sale2 = new Sale(2L, "Алексей", "Кузнецов", "продавец", LocalDate.of(2022, 8, 15), LocalDate.of(1985, 9, 5), "aleksei@example.com");

Order o1 = new Order(1L, book1, customer1, sale1, LocalDate.of(2024, 4, 10), LocalDate.of(2024, 4, 12), 2, 900.0);
Order o2 = new Order(2L, book2, customer2, sale2, LocalDate.of(2024, 4, 11), LocalDate.of(2024, 4, 13), 1, 600.0);

Order[] orders = new Order[] { o1, o2 };
pageContext.setAttribute("orders", orders);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Список заказов</title>
    <!-- Настройка viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid">
        <div class="row justify-content-start">
            <div class="col-8 border bg-light px-4">
                <h3>Список заказов</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Код</th>
                            <th>Книга</th>
                            <th>Покупатель</th>
                            <th>Продавец</th>
                            <th>Дата заказа</th>
                            <th>Дата отгрузки</th>
                            <th>Количество</th>
                            <th>Сумма</th>
                            <th>Редактировать</th>
                            <th>Удалить</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${orders}">
                            <tr>
                                <td>${order.getId()}</td>
                                <td>${order.getBook().getTitle()}</td>
                                <td>${order.getCustomer().getFirstName()} ${order.getCustomer().getLastName()}</td>
                                <td>${order.getSale().getFirstName()} ${order.getSale().getLastName()}</td>
                                <td>${order.getDateInput()}</td>
                                <td>${order.getDateOutput()}</td>
                                <td>${order.getQuantity()}</td>
                                <td>${order.getTotalSum()}</td>
                                <td>
                                    <a href="#" role="button" class="btn btn-outline-primary">
                                        <img alt="Редактировать" src="${pageContext.request.contextPath}/images/2.png" width="50">
                                    </a>
                                </td>
                                <td>
                                    <a href="#" role="button" class="btn btn-outline-primary">
                                        <img alt="Удалить" src="${pageContext.request.contextPath}/images/3.png" width="50">
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-4 border px-4">
                <form method="POST" action="">
                    <h3>Новый заказ</h3>
                    <div class="mb-3">
                        <label for="bookId" class="form-label">ID книги</label>
                        <input type="text" class="form-control" name="bookId" id="bookId">
                    </div>
                    <div class="mb-3">
                        <label for="customerId" class="form-label">ID покупателя</label>
                        <input type="text" class="form-control" name="customerId" id="customerId">
                    </div>
                    <div class="mb-3">
                        <label for="saleId" class="form-label">ID продавца</label>
                        <input type="text" class="form-control" name="saleId" id="saleId">
                    </div>
                    <div class="mb-3">
                        <label for="quantity" class="form-label">Количество</label>
                        <input type="number" class="form-control" name="quantity" id="quantity">
                    </div>
                    <div class="mb-3">
                        <label for="totalSum" class="form-label">Сумма</label>
                        <input type="number" step="0.01" class="form-control" name="totalSum" id="totalSum">
                    </div>
                    <div class="mb-3">
                        <label for="dateInput" class="form-label">Дата заказа</label>
                        <input type="date" class="form-control" name="dateInput" id="dateInput">
                    </div>
                    <div class="mb-3">
                        <label for="dateOutput" class="form-label">Дата отгрузки</label>
                        <input type="date" class="form-control" name="dateOutput" id="dateOutput">
                    </div>
                    <button type="submit" class="btn btn-primary">Добавить заказ</button>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<!-- Bootstrap JS + Popper JS -->
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
