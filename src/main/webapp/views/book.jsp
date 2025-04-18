<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Book"%>

<%
Book b1 = new Book(1L, "Толстой", "Война и мир", "Эксмо", "Классика", 2020, 799.0);
Book b2 = new Book(2L, "Достоевский", "Преступление и наказание", "Азбука", "Русская литература", 2019, 599.0);
Book b3 = new Book(3L, "Булгаков", "Мастер и Маргарита", "АСТ", "Советская проза", 2021, 699.0);
Book b4 = new Book(4L, "Пушкин", "Евгений Онегин", "Наука", "Поэзия", 2018, 499.0);
Book[] books = new Book[]{b1, b2, b3, b4};
pageContext.setAttribute("books", books);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Книги</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Настройка viewport -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <jsp:include page="/views/header.jsp" />

    <div class="row justify-content-start">
        <div class="col-8 border bg-light px-4">
            <h3>Список книг</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Код</th>
                        <th>Автор</th>
                        <th>Название</th>
                        <th>Издательство</th>
                        <th>Серия</th>
                        <th>Год</th>
                        <th>Цена</th>
                        <th>Редактировать</th>
                        <th>Удалить</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td>${book.getId()}</td>
                            <td>${book.getAuthor()}</td>
                            <td>${book.getTitle()}</td>
                            <td>${book.getPublishing()}</td>
                            <td>${book.getSeriya()}</td>
                            <td>${book.getYear()}</td>
                            <td>${book.getPrice()}</td>
                            <td>
                                <a href="#" class="btn btn-outline-primary">
                                    <img src="${pageContext.request.contextPath}/images/2.png" width="50" alt="Редактировать">
                                </a>
                            </td>
                            <td>
                                <a href="#" class="btn btn-outline-primary">
                                    <img src="${pageContext.request.contextPath}/images/3.png" width="50" alt="Удалить">
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="col-4 border px-4">
            <form method="POST" action="">
                <h3>Новая книга</h3>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Автор</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="author" />
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Название</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="title" />
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Издательство</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="publishing" />
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Серия</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="seriya" />
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Год издания</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control" name="year" />
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Цена</label>
                    <div class="col-sm-8">
                        <input type="number" step="0.01" class="form-control" name="price" />
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Добавить</button>
            </form>
        </div>
    </div>

    <jsp:include page="/views/footer.jsp" />
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<!-- Bootstrap JS + Popper JS -->
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>