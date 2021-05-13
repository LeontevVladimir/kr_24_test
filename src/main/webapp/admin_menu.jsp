<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>ADMIN</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Kolek" method="post">
<h1 style="position:relative;text-align:center">Панель администратора</h1>
<h3>Стоимость вида стула:</h3>
   <p>Игровой стул:
   <input name="k1" type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Офисное кресло:
   <input name="k2" type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Пуфик:
   <input name="k3" type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Кресло-качалка:
   <input name="k4" type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Стул с мягкой спинкой:
   <input name="k5" type="number" min="1" max="10000" name="NumberChair"></p>
<h3>Стоимость материала каркаса:</h3>
   <p>Металл:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Дерево:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Пластик:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
<h3>Стоимость материала обивки:</h3>
   <p>Искусственная кожа:
   <input type="number" min="1" max="10000" name="NumberChair" ></p>
   <p>Эко-кожа:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Ткань:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Замша:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Вельвет:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
<h3>Стоимость материала наполнителя:</h3>
   <p>Поролон:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Синтепон:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <p>Войлок:
   <input type="number" min="1" max="10000" name="NumberChair"></p>
   <input style="position:relative;left: 45%" type="submit" value="Изменить значения">
   </form>
  <a href="<c:url value='/logout' />" style="position:relative;left: 45%">Logout</a>
</body>
</html>
